# Profiles

This page provides an overview of the profiles defined in this implementation guide.

## SBC InsurancePlan Profile

**Profile:** [SBCInsurancePlan](StructureDefinition-sbc-insurance-plan.html)

**Purpose:** Constrains the base FHIR InsurancePlan resource to represent Summary of Benefits and Coverage (SBC) documents as required under ACA Section 2715.

### Key Constraints

1. **Required Elements:**
   - `name` - Plan name must be provided
   - `status` - Fixed to "active"
   - `period` - Coverage period must be specified
   - `ownedBy` - Plan issuer organization required
   - `contact` - At least one contact method required
   - `plan` - At least one plan with cost details required
   - `plan.specificCost` - Cost-sharing for benefit categories required

2. **Must Support Elements:**
   - All required elements plus:
   - `identifier` - Business identifiers (e.g., HIOS ID)
   - `coverage.benefit` - Benefit category details
   - `plan.generalCost` - Overall deductibles and OOP limits
   - Extensions for SBC-specific metadata

3. **Terminology Bindings:**
   - `coverage.benefit.type` - Required binding to SBC Benefit Category ValueSet
   - `plan.type` - Extensible binding to SBC Plan Type ValueSet
   - `plan.specificCost.category` - Required binding to SBC Benefit Category ValueSet
   - `plan.specificCost.benefit.type` - Required binding to SBC Benefit Category ValueSet

4. **Cardinality Requirements:**
   - `plan.specificCost.benefit.cost` - Minimum of 2 (to capture both in-network and out-of-network)
   - Each cost entry must specify `.applicability` (in-network vs out-of-network)

### Usage Notes

#### Representing General Plan Costs

Use `plan.generalCost` for plan-wide costs that aren't specific to individual benefits:

```
plan.generalCost[0]
  .type.text = "Individual Deductible"
  .cost.value = 1500
  .cost.currency = #USD

plan.generalCost[1]
  .type.text = "Individual Out-of-Pocket Maximum"
  .cost.value = 6000
  .cost.currency = #USD
```

#### Representing Benefit-Specific Costs

Use `plan.specificCost` for each of the 27 SBC benefit categories:

```
plan.specificCost[x]
  .category = #primary-care-visit
  .benefit[0]
    .type = #primary-care-visit
    .cost[0]
      .type.text = "Copayment"
      .applicability.text = "in-network"
      .value.value = 25
      .value.unit = "USD"
    .cost[1]
      .type.text = "Not covered"
      .applicability.text = "out-of-network"
```

#### Representing "Not Covered" Benefits

For benefits not covered by the plan, still create entries with $0 or appropriate indicator:

```
plan.specificCost.benefit.cost
  .type.text = "Not covered"
  .applicability.text = "out-of-network"
  .value.value = 0
```

#### Representing Coinsurance

For percentage-based cost-sharing, use the % unit:

```
plan.specificCost.benefit.cost
  .type.text = "Coinsurance"
  .applicability.text = "in-network"
  .value.value = 20
  .value.unit = "%"
```

#### Adding Limitations and Requirements

Use the benefit requirement field and limitation extension:

```
coverage.benefit[x]
  .type = #specialist-visit
  .requirement = "Referral required from primary care physician"
  .extension[limitation].valueString = "Limited to network specialists only"
```

### Extensions

The profile uses three extensions defined in this IG:

#### 1. SBC Metadata Extension

Captures regulatory disclosures:

```
extension[sbcMetadata]
  .extension[sbcVersionDate].valueDate = "2021-01-01"
  .extension[minimumEssentialCoverage].valueBoolean = true
  .extension[minimumValue].valueBoolean = true
  .extension[abortionCoverage].valueCodeableConcept = ...
```

#### 2. Excluded Services Extension

Documents services not covered:

```
extension[excludedServices]
  .extension[service][0]
    .extension[serviceType].valueCodeableConcept.text = "Cosmetic surgery"
    .extension[description].valueString = "Services for cosmetic purposes are not covered"
```

#### 3. Benefit Limitation Extension

Provides benefit-specific limitations:

```
coverage.benefit.extension[limitation].valueString = "Prior authorization required for non-emergency admissions"
```

### Validation Rules

Implementations should ensure:

1. All 27 SBC benefit categories are represented in `plan.specificCost`
2. Each benefit has costs for both in-network and out-of-network (even if "not covered")
3. Contact information includes at minimum phone and web URL
4. Cost values use consistent currency (USD recommended)
5. Percentage-based coinsurance uses "%" unit
6. Fixed copayments use currency code (e.g., "USD")

### Relationship to Other Standards

This profile is designed to complement, not replace:

- **US Core** - May reference US Core Organization for issuers
- **Da Vinci PDex Plan Net** - Network organizations could use Plan-Net profiles
- **CARIN Blue Button** - Patient-specific coverage uses Coverage resource
- **Transparency in Coverage** - Price transparency uses separate machine-readable files

The SBC profile focuses on plan-level benefit summaries for consumer comparison, while other standards address different use cases (provider directories, claims data, pricing).

## Future Enhancements

Potential future additions to this profile:

- Coverage example scenarios (having a baby, managing diabetes, simple fracture)
- Language and translation metadata
- Links to uniform glossary term definitions
- Network tier distinctions (preferred vs standard in-network)
- Formulary tier details for prescription drugs
- Quantitative limits on benefits (e.g., "30 visits per year")
