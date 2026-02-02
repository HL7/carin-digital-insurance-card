# Terminology

This page describes the code systems and value sets defined in this implementation guide for representing SBC documents.

## Code Systems

### SBC Benefit Category Code System

**URL:** `http://hl7.org/fhir/us/insurance-card/CodeSystem/sbc-benefit-category`

**Purpose:** Defines codes for the 27 benefit categories required in Summary of Benefits and Coverage documents per ACA Section 2715 regulations.

**Status:** Draft

**Content:** Complete (all codes defined)

#### Codes

| Code | Display | Definition |
|------|---------|------------|
| `preventive-care` | Preventive Care/Screening/Immunization | Preventive care services, health screenings, and immunizations |
| `primary-care-visit` | Primary Care Visit | Visits to primary care physicians to treat illness or injury |
| `specialist-visit` | Specialist Visit | Visits to specialist physicians |
| `diagnostic-test` | Diagnostic Test | X-rays and diagnostic imaging other than CT/PET/MRI |
| `imaging` | Imaging (CT/PET/MRI) | Advanced imaging services including CT scans, PET scans, and MRIs |
| `generic-drugs` | Generic Drugs | Generic prescription medications |
| `preferred-brand-drugs` | Preferred Brand Drugs | Brand-name prescription medications on the preferred drug list |
| `non-preferred-brand-drugs` | Non-Preferred Brand Drugs | Brand-name prescription medications not on the preferred drug list |
| `specialty-drugs` | Specialty Drugs | High-cost or specialty prescription medications |
| `facility-fee` | Facility Fee | Hospital or facility charges for services |
| `physician-surgeon-fee` | Physician/Surgeon Fees | Professional fees for physicians and surgeons |
| `emergency-room-care` | Emergency Room Care | Emergency department services |
| `emergency-medical-transport` | Emergency Medical Transportation | Ambulance and emergency medical transport services |
| `urgent-care` | Urgent Care | Urgent care facility services |
| `hospital-outpatient` | Hospital Outpatient Care | Outpatient hospital services and surgeries |
| `hospital-inpatient` | Hospital Inpatient Care | Inpatient hospital stays and services |
| `mental-health-outpatient` | Mental/Behavioral Health Outpatient Services | Outpatient mental health and substance abuse services |
| `mental-health-inpatient` | Mental/Behavioral Health Inpatient Services | Inpatient mental health and substance abuse services |
| `pregnancy` | Pregnancy Services | Prenatal and postnatal office visits |
| `pregnancy-delivery` | Childbirth/Delivery Professional Services | Professional services for childbirth and delivery |
| `pregnancy-home-health` | Pregnancy Home Health Care | Home health care services related to pregnancy |
| `rehabilitation` | Rehabilitation Services | Outpatient physical, occupational, and speech therapy |
| `habilitation` | Habilitation Services | Health care services that help develop or maintain daily living skills |
| `skilled-nursing` | Skilled Nursing Care | Skilled nursing facility services |
| `durable-medical-equipment` | Durable Medical Equipment | Medical equipment for home use such as wheelchairs, oxygen equipment |
| `hospice` | Hospice Services | End-of-life care services |
| `children-eye-exam` | Children's Eye Exam | Eye examinations for children |
| `children-glasses` | Children's Glasses | Eyeglasses for children |
| `children-dental` | Children's Dental Check-up | Routine dental care for children |

#### Usage Notes

- These codes are derived from the SBC template's required benefit categories
- All 27 categories must be represented in a compliant SBC
- The pregnancy-related benefits are broken into three separate codes (office visits, delivery, home health) per SBC requirements
- These codes should be used in both `InsurancePlan.coverage.benefit.type` and `InsurancePlan.plan.specificCost.category`

### SBC Plan Type Code System

**URL:** `http://hl7.org/fhir/us/insurance-card/CodeSystem/sbc-plan-type`

**Purpose:** Defines codes for health insurance plan types displayed in Summary of Benefits and Coverage documents.

**Status:** Draft

**Content:** Complete

#### Codes

| Code | Display | Definition |
|------|---------|------------|
| `HMO` | Health Maintenance Organization (HMO) | A type of health insurance plan that requires members to get health care services from doctors and hospitals in the plan's network, except in an emergency |
| `PPO` | Preferred Provider Organization (PPO) | A type of health insurance plan where members pay less if they use providers in the plan's network, but can use out-of-network providers at higher cost |
| `POS` | Point of Service (POS) | A type of health insurance plan where members pay less if they use doctors and hospitals in the plan's network and choose a primary care doctor to coordinate care |
| `EPO` | Exclusive Provider Organization (EPO) | A type of health insurance plan where services are covered only if members use doctors and providers in the plan's network, except in an emergency |
| `HDHP` | High Deductible Health Plan (HDHP) | A health insurance plan with a higher deductible than traditional plans, often paired with a Health Savings Account |
| `INDEMNITY` | Indemnity Plan | A type of health insurance that allows members to see any doctor or hospital and pays a portion of the bill |

#### Usage Notes

- These plan types align with common categorizations used in health insurance
- Used in `InsurancePlan.plan.type`
- The definitions use consumer-friendly language consistent with SBC glossary terms
- Plans may also have product-level types that differ from plan-level types

## Value Sets

### SBC Benefit Category Value Set

**URL:** `http://hl7.org/fhir/us/insurance-card/ValueSet/sbc-benefit-category`

**Purpose:** Contains all 27 benefit categories required in Summary of Benefits and Coverage documents.

**Status:** Draft

**Compose:** Includes all codes from the SBC Benefit Category Code System

**Binding Strength:** Required for `InsurancePlan.coverage.benefit.type` and `InsurancePlan.plan.specificCost.category` in the SBC InsurancePlan profile

### SBC Plan Type Value Set

**URL:** `http://hl7.org/fhir/us/insurance-card/ValueSet/sbc-plan-type`

**Purpose:** Contains health insurance plan types for Summary of Benefits and Coverage documents.

**Status:** Draft

**Compose:** Includes all codes from the SBC Plan Type Code System

**Binding Strength:** Extensible for `InsurancePlan.plan.type` in the SBC InsurancePlan profile

## Relationships to Standard FHIR Terminology

### FHIR Benefit Type Value Set

The standard FHIR `benefit-type` value set (http://hl7.org/fhir/ValueSet/benefit-type) contains only 12 codes:
- visit, room, vision-exam, vision-glasses, vision-contacts, medical-primarycare, pharmacy-dispense, etc.

**This is insufficient for SBC requirements**, which mandate 27 specific benefit categories. Therefore, this IG defines a custom code system with all required SBC categories.

### Applicability Codes

For network applicability (`InsurancePlan.plan.specificCost.benefit.cost.applicability`), use the standard FHIR `BenefitCostApplicability` value set:
- `in-network` - Services provided by in-network providers
- `out-of-network` - Services provided by out-of-network providers
- `other` - Other applicability scenarios

### Cost Type Codes

While this IG doesn't define a specific code system for cost types, implementations should use clear text values:
- "Copayment" - Fixed dollar amount per service
- "Coinsurance" - Percentage of cost
- "Deductible" - Amount to be met before coverage
- "Not covered" - Service is not covered under the plan

## Extension Code Systems

### Abortion Coverage Codes

For the `SBCMetadata.abortionCoverage` element (required for qualified health plans per 45 CFR 156.280):

Suggested codes (implementation-specific):
- `covered` - Abortion services are covered
- `not-covered` - Abortion services are not covered except excepted services
- `excepted-only` - Only excepted abortion services covered (life endangerment, rape, incest)

*Note: This IG does not currently define a formal code system for abortion coverage; implementers may use local codes or text*

## Versioning and Maintenance

### Code System Evolution

As SBC regulations evolve, this terminology may be updated to:
- Add new benefit categories if regulations change
- Refine definitions based on regulatory guidance
- Add translations for multi-language support
- Align with CMS terminology if formal codes are released

### Relationship to Official CMS Terminology

Currently, **CMS does not provide official code systems for SBC benefit categories**. The codes in this IG are derived from the textual descriptions in the SBC template.

If CMS publishes official codes in the future, this IG should be updated to reference or align with those codes.

## Extensibility

### Adding Local Benefit Codes

The `extensible` binding on plan types allows implementations to add local codes for:
- Regional plan types
- State-specific variations
- Product-specific categorizations

### Additional Benefit Categories

While the 27 SBC categories are required, plans may cover additional services. These can be represented using:
- The "Other Covered Services" section of the SBC (no specific code required)
- Local codes from institutional code systems
- Standard FHIR benefit-type codes where appropriate

## Implementation Guidance

### Coding Consistency

When representing an SBC document:

1. Use the **same benefit category code** in multiple places:
   - `coverage.benefit.type` - To indicate the benefit is covered
   - `plan.specificCost.category` - To group costs by benefit
   - `plan.specificCost.benefit.type` - To identify the specific benefit with costs

2. Example for Primary Care Visit:
```
coverage.benefit[x]
  .type = http://hl7.org/fhir/us/insurance-card/CodeSystem/sbc-benefit-category#primary-care-visit

plan.specificCost[x]
  .category = http://hl7.org/fhir/us/insurance-card/CodeSystem/sbc-benefit-category#primary-care-visit
  .benefit.type = http://hl7.org/fhir/us/insurance-card/CodeSystem/sbc-benefit-category#primary-care-visit
```

### Translation and Localization

SBC documents are required in multiple languages (English, Spanish, Chinese, Tagalog, Navajo, and others as of 2025).

Future versions of this IG may include:
- Translated display values for benefit category codes
- Language-specific value sets
- Translation metadata extensions

Currently, implementers should maintain translations separately and apply them when rendering SBC documents for consumers.
