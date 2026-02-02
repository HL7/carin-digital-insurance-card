Instance: SBCExampleHMO
InstanceOf: SBCInsurancePlan
Title: "Example SBC - Sample HMO Health Plan"
Description: "Example Summary of Benefits and Coverage document represented as a FHIR InsurancePlan resource, demonstrating an HMO plan with multiple benefit categories and cost-sharing information"
Usage: #example

* identifier.system = "https://www.cms.gov/CCIIO/Resources/Data-Resources/hios"
* identifier.value = "12345CA0010001-01"

* status = #active

* name = "Sample Health HMO Gold Plan"

* period.start = "2025-01-01"
* period.end = "2025-12-31"

* ownedBy = Reference(ExampleIssuerOrg)
* ownedBy.display = "Sample Health Insurance Company"

* administeredBy = Reference(ExampleIssuerOrg)

// SBC Metadata
* extension[sbcMetadata].extension[sbcVersionDate].valueDate = "2021-01-01"
* extension[sbcMetadata].extension[minimumEssentialCoverage].valueBoolean = true
* extension[sbcMetadata].extension[minimumValue].valueBoolean = true

// Excluded Services
* extension[excludedServices].extension[service][0].extension[serviceType].valueCodeableConcept.text = "Cosmetic surgery"
* extension[excludedServices].extension[service][0].extension[description].valueString = "Services for cosmetic purposes are not covered"
* extension[excludedServices].extension[service][1].extension[serviceType].valueCodeableConcept.text = "Weight loss programs"
* extension[excludedServices].extension[service][1].extension[description].valueString = "Weight loss programs except when medically necessary"

// Contact Information
* contact[0].purpose.text = "General Questions"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "1-800-123-4567"
* contact[0].telecom[1].system = #url
* contact[0].telecom[1].value = "https://www.samplehealth.com"

* contact[1].purpose.text = "Uniform Glossary"
* contact[1].telecom[0].system = #url
* contact[1].telecom[0].value = "https://www.healthcare.gov/sbc-glossary/"

// Coverage - Medical Benefits
* coverage[0].type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP "health insurance plan policy"
* coverage[0].benefit[0].type = SBCBenefitCategoryCS#preventive-care
* coverage[0].benefit[0].requirement = "No prior authorization required for in-network preventive services"

* coverage[0].benefit[1].type = SBCBenefitCategoryCS#primary-care-visit
* coverage[0].benefit[1].requirement = "No referral required"

* coverage[0].benefit[2].type = SBCBenefitCategoryCS#specialist-visit
* coverage[0].benefit[2].requirement = "Referral required from primary care physician"
* coverage[0].benefit[2].extension[limitation].valueString = "Limited to network specialists only; out-of-network not covered except in emergencies"

* coverage[0].benefit[3].type = SBCBenefitCategoryCS#emergency-room-care
* coverage[0].benefit[3].extension[limitation].valueString = "Copay waived if admitted to hospital"

* coverage[0].benefit[4].type = SBCBenefitCategoryCS#hospital-inpatient
* coverage[0].benefit[4].requirement = "Prior authorization required for non-emergency admissions"

// Plan Details
* plan[0].type = SBCPlanTypeCS#HMO

// General Costs - Deductibles and OOP Max
* plan[0].generalCost[0].type.text = "Individual Deductible"
* plan[0].generalCost[0].cost.value = 1500
* plan[0].generalCost[0].cost.currency = #USD
* plan[0].generalCost[0].comment = "Individual in-network deductible"

* plan[0].generalCost[1].type.text = "Family Deductible"
* plan[0].generalCost[1].cost.value = 3000
* plan[0].generalCost[1].cost.currency = #USD

* plan[0].generalCost[2].type.text = "Individual Out-of-Pocket Maximum"
* plan[0].generalCost[2].cost.value = 6000
* plan[0].generalCost[2].cost.currency = #USD

* plan[0].generalCost[3].type.text = "Family Out-of-Pocket Maximum"
* plan[0].generalCost[3].cost.value = 12000
* plan[0].generalCost[3].cost.currency = #USD

// Specific Cost - Preventive Care
* plan[0].specificCost[0].category = SBCBenefitCategoryCS#preventive-care
* plan[0].specificCost[0].benefit[0].type = SBCBenefitCategoryCS#preventive-care

* plan[0].specificCost[0].benefit[0].cost[0].type.text = "No charge"
* plan[0].specificCost[0].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[0].benefit[0].cost[0].value.value = 0
* plan[0].specificCost[0].benefit[0].cost[0].value.unit = "USD"

* plan[0].specificCost[0].benefit[0].cost[1].type.text = "Not covered"
* plan[0].specificCost[0].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[0].benefit[0].cost[1].value.value = 0
* plan[0].specificCost[0].benefit[0].cost[1].value.unit = "USD"

// Specific Cost - Primary Care Visit
* plan[0].specificCost[1].category = SBCBenefitCategoryCS#primary-care-visit
* plan[0].specificCost[1].benefit[0].type = SBCBenefitCategoryCS#primary-care-visit

* plan[0].specificCost[1].benefit[0].cost[0].type.text = "Copayment"
* plan[0].specificCost[1].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[1].benefit[0].cost[0].value.value = 25
* plan[0].specificCost[1].benefit[0].cost[0].value.unit = "USD"

* plan[0].specificCost[1].benefit[0].cost[1].type.text = "Not covered"
* plan[0].specificCost[1].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[1].benefit[0].cost[1].value.value = 0
* plan[0].specificCost[1].benefit[0].cost[1].value.unit = "USD"

// Specific Cost - Specialist Visit
* plan[0].specificCost[2].category = SBCBenefitCategoryCS#specialist-visit
* plan[0].specificCost[2].benefit[0].type = SBCBenefitCategoryCS#specialist-visit

* plan[0].specificCost[2].benefit[0].cost[0].type.text = "Copayment"
* plan[0].specificCost[2].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[2].benefit[0].cost[0].value.value = 50
* plan[0].specificCost[2].benefit[0].cost[0].value.unit = "USD"

* plan[0].specificCost[2].benefit[0].cost[1].type.text = "Not covered"
* plan[0].specificCost[2].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[2].benefit[0].cost[1].value.value = 0
* plan[0].specificCost[2].benefit[0].cost[1].value.unit = "USD"

// Specific Cost - Emergency Room Care
* plan[0].specificCost[3].category = SBCBenefitCategoryCS#emergency-room-care
* plan[0].specificCost[3].benefit[0].type = SBCBenefitCategoryCS#emergency-room-care

* plan[0].specificCost[3].benefit[0].cost[0].type.text = "Copayment"
* plan[0].specificCost[3].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[3].benefit[0].cost[0].value.value = 350
* plan[0].specificCost[3].benefit[0].cost[0].value.unit = "USD"

* plan[0].specificCost[3].benefit[0].cost[1].type.text = "Copayment"
* plan[0].specificCost[3].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[3].benefit[0].cost[1].value.value = 350
* plan[0].specificCost[3].benefit[0].cost[1].value.unit = "USD"
* plan[0].specificCost[3].benefit[0].extension[limitation].valueString = "Copay waived if admitted"

// Specific Cost - Generic Drugs
* plan[0].specificCost[4].category = SBCBenefitCategoryCS#generic-drugs
* plan[0].specificCost[4].benefit[0].type = SBCBenefitCategoryCS#generic-drugs

* plan[0].specificCost[4].benefit[0].cost[0].type.text = "Copayment"
* plan[0].specificCost[4].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[4].benefit[0].cost[0].value.value = 10
* plan[0].specificCost[4].benefit[0].cost[0].value.unit = "USD"

* plan[0].specificCost[4].benefit[0].cost[1].type.text = "Not covered"
* plan[0].specificCost[4].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[4].benefit[0].cost[1].value.value = 0
* plan[0].specificCost[4].benefit[0].cost[1].value.unit = "USD"

// Specific Cost - Hospital Inpatient Care
* plan[0].specificCost[5].category = SBCBenefitCategoryCS#hospital-inpatient
* plan[0].specificCost[5].benefit[0].type = SBCBenefitCategoryCS#hospital-inpatient

* plan[0].specificCost[5].benefit[0].cost[0].type.text = "Coinsurance"
* plan[0].specificCost[5].benefit[0].cost[0].applicability = http://terminology.hl7.org/CodeSystem/applicability#in-network "In Network"
* plan[0].specificCost[5].benefit[0].cost[0].value.value = 20
* plan[0].specificCost[5].benefit[0].cost[0].value.unit = "%"

* plan[0].specificCost[5].benefit[0].cost[1].type.text = "Not covered"
* plan[0].specificCost[5].benefit[0].cost[1].applicability = http://terminology.hl7.org/CodeSystem/applicability#out-of-network "Out of Network"
* plan[0].specificCost[5].benefit[0].cost[1].value.value = 0
* plan[0].specificCost[5].benefit[0].cost[1].value.unit = "%"
* plan[0].specificCost[5].benefit[0].extension[limitation].valueString = "Prior authorization required"


// Supporting Organization
Instance: ExampleIssuerOrg
InstanceOf: Organization
Title: "Example Health Insurance Issuer"
Description: "Example organization representing a health insurance issuer"
Usage: #example

* name = "Sample Health Insurance Company"
* telecom[0].system = #phone
* telecom[0].value = "1-800-123-4567"
* telecom[1].system = #url
* telecom[1].value = "https://www.samplehealth.com"
