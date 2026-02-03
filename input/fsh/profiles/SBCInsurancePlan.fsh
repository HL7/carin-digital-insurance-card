Profile: SBCInsurancePlan
Parent: InsurancePlan
Id: sbc-insurance-plan
Title: "SBC Insurance Plan Profile"
Description: "Profile of InsurancePlan resource for representing Summary of Benefits and Coverage (SBC) documents as required under ACA Section 2715 and implementing regulations at 45 CFR 147.200, 29 CFR 2590.715-2715, and 26 CFR 54.9815-2715"

* ^status = #draft
* ^experimental = true
* ^purpose = "To represent Summary of Benefits and Coverage documents in structured FHIR format, enabling machine-readable representation of the 27 required benefit categories, cost-sharing information, network distinctions, and regulatory disclosures"

// Required elements for SBC identification and metadata
* identifier 0..* MS
* identifier ^short = "Business identifier for the insurance plan (e.g., HIOS ID)"
* identifier ^definition = "Unique identifier for the plan, such as the 14-16 digit HIOS ID (5-digit HIOS ID + 2-digit State + 3-digit Product Iteration + 4-digit Plan Iteration + 2-digit Variant)"

* status 1..1 MS
* status = #active (exactly)

* name 1..1 MS
* name ^short = "Plan name as displayed on SBC"
* name ^definition = "The official name of the health insurance plan as it appears in the SBC header"

* period 1..1 MS
* period ^short = "Coverage period"
* period ^definition = "The time period during which this plan is or was available. Maps to the Coverage Period displayed in the SBC header"

* ownedBy 1..1 MS
* ownedBy only Reference(Organization)
* ownedBy ^short = "Plan issuer organization"
* ownedBy ^definition = "The health insurance issuer or employer that owns/offers this plan"

* administeredBy 0..1 MS
* administeredBy only Reference(Organization)
* administeredBy ^short = "Plan administrator"

* contact 1..* MS
* contact ^short = "Contact information for plan questions"
* contact ^definition = "Contact information including phone numbers, website addresses, and other contact methods required by SBC regulations for questions, provider lists, formulary, and uniform glossary access"

// SBC-specific metadata extension
* extension contains SBCMetadata named sbcMetadata 0..1 MS
* extension[sbcMetadata] ^short = "SBC regulatory metadata"
* extension[sbcMetadata] ^definition = "Contains minimum essential coverage indicator, minimum value indicator, abortion coverage disclosure, and SBC version date"

// Excluded services extension
* extension contains ExcludedServices named excludedServices 0..1 MS
* extension[excludedServices] ^short = "Excluded services list"
* extension[excludedServices] ^definition = "Services that are NOT covered by this plan, as displayed in the 'Excluded Services & Other Covered Services' section of the SBC"

// Coverage section - maps to benefit categories
* coverage 1..* MS
* coverage ^short = "Benefit coverage details"
* coverage ^definition = "Details of benefit coverage for different categories of services. Each coverage entry should represent one or more of the 27 required SBC benefit categories"

* coverage.type 1..1 MS
* coverage.type from SBCBenefitCategoryVS (extensible)
* coverage.type ^short = "Type of coverage (e.g., medical, pharmacy)"
* coverage.type ^definition = "High-level categorization of coverage type"

* coverage.network 0..* MS
* coverage.network only Reference(Organization)
* coverage.network ^short = "Provider networks for this coverage"

* coverage.benefit 1..* MS
* coverage.benefit ^short = "Specific benefits covered"
* coverage.benefit ^definition = "Individual benefit types within this coverage category, corresponding to the 27 SBC benefit categories"

* coverage.benefit.type 1..1 MS
* coverage.benefit.type from SBCBenefitCategoryVS (required)
* coverage.benefit.type ^short = "Benefit category code"
* coverage.benefit.type ^definition = "The specific benefit category from the SBC's 27 required categories"

* coverage.benefit.requirement 0..1 MS
* coverage.benefit.requirement ^short = "Requirements for accessing benefit"
* coverage.benefit.requirement ^definition = "Text describing requirements such as prior authorization, referral requirements, or other access limitations"

* coverage.benefit.extension contains BenefitLimitation named limitation 0..* MS
* coverage.benefit.extension[limitation] ^short = "Limitations and exceptions"
* coverage.benefit.extension[limitation] ^definition = "Specific limitations, exceptions, or additional context for this benefit as displayed in the SBC"

// Plan section - contains cost-sharing information
* plan 1..* MS
* plan ^short = "Health insurance plan details"
* plan ^definition = "Specific plan offerings with detailed cost-sharing information for each of the 27 SBC benefit categories"

* plan.type 0..1 MS
* plan.type from SBCPlanTypeVS (extensible)
* plan.type ^short = "Plan type (HMO, PPO, POS, EPO, etc.)"
* plan.type ^definition = "The type of health insurance plan as displayed in the SBC header (e.g., HMO, PPO, POS, EPO, HDHP, Indemnity)"

* plan.coverageArea 0..* MS
* plan.coverageArea only Reference(Location)
* plan.coverageArea ^short = "Geographic coverage area"

* plan.network 0..* MS
* plan.network only Reference(Organization)
* plan.network ^short = "Provider networks for this plan"

// General costs (deductibles, out-of-pocket maximums)
* plan.generalCost 0..* MS
* plan.generalCost ^short = "Overall plan costs"
* plan.generalCost ^definition = "Plan-level costs such as overall deductibles and out-of-pocket maximums that apply across benefit categories"

* plan.generalCost.type 0..1 MS
* plan.generalCost.type ^short = "Type of cost (deductible, out-of-pocket max)"

* plan.generalCost.cost 0..1 MS
* plan.generalCost.cost ^short = "Cost amount"

* plan.generalCost.comment 0..1 MS
* plan.generalCost.comment ^short = "Additional cost information"

// Specific costs per benefit category
* plan.specificCost 1..* MS
* plan.specificCost ^short = "Cost-sharing by benefit category"
* plan.specificCost ^definition = "Cost-sharing information (copays, coinsurance, deductibles) for each of the 27 SBC benefit categories, with separate amounts for in-network and out-of-network services"

* plan.specificCost.category 1..1 MS
* plan.specificCost.category from SBCBenefitCategoryVS (required)
* plan.specificCost.category ^short = "Benefit category code"
* plan.specificCost.category ^definition = "The specific SBC benefit category to which these costs apply"

* plan.specificCost.benefit 1..* MS
* plan.specificCost.benefit ^short = "Specific benefit with costs"

* plan.specificCost.benefit.type 1..1 MS
* plan.specificCost.benefit.type from SBCBenefitCategoryVS (required)
* plan.specificCost.benefit.type ^short = "Benefit type code"

* plan.specificCost.benefit.extension contains BenefitLimitation named limitation 0..* MS
* plan.specificCost.benefit.extension[limitation] ^short = "Benefit-specific limitations"

* plan.specificCost.benefit.cost 2..* MS
* plan.specificCost.benefit.cost ^short = "Cost-sharing amounts"
* plan.specificCost.benefit.cost ^definition = "Cost-sharing information including copays, coinsurance, and deductibles. Must include separate entries for in-network and out-of-network services where applicable"

* plan.specificCost.benefit.cost.type 1..1 MS
* plan.specificCost.benefit.cost.type ^short = "Type of cost (copay, coinsurance, deductible)"
* plan.specificCost.benefit.cost.type ^definition = "The type of cost-sharing: copayment (fixed dollar amount), coinsurance (percentage), or deductible"

* plan.specificCost.benefit.cost.applicability 1..1 MS
* plan.specificCost.benefit.cost.applicability ^short = "Network applicability (in-network, out-of-network)"
* plan.specificCost.benefit.cost.applicability ^definition = "Whether this cost applies to in-network services, out-of-network services, or other scenarios"

* plan.specificCost.benefit.cost.value 1..1 MS
* plan.specificCost.benefit.cost.value ^short = "Cost amount"
* plan.specificCost.benefit.cost.value ^definition = "The actual cost-sharing amount (dollar amount for copay, percentage for coinsurance)"
