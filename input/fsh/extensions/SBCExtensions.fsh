// SBC Metadata Extension
Extension: SBCMetadata
Id: sbc-metadata
Title: "SBC Metadata Extension"
Description: "Extension containing regulatory metadata required for Summary of Benefits and Coverage documents"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "InsurancePlan"

* extension contains
    sbcVersionDate 0..1 and
    minimumEssentialCoverage 0..1 and
    minimumValue 0..1 and
    abortionCoverage 0..1

* extension[sbcVersionDate] ^short = "SBC Template Version Date"
* extension[sbcVersionDate] ^definition = "The effective date of the SBC template version used"
* extension[sbcVersionDate].value[x] only date

* extension[minimumEssentialCoverage] ^short = "Minimum Essential Coverage Indicator"
* extension[minimumEssentialCoverage] ^definition = "Indicates whether the plan provides minimum essential coverage under section 5000A(f) of the Internal Revenue Code"
* extension[minimumEssentialCoverage].value[x] only boolean

* extension[minimumValue] ^short = "Minimum Value Indicator"
* extension[minimumValue] ^definition = "Indicates whether the plan's share of the total allowed costs of benefits meets the minimum value requirement"
* extension[minimumValue].value[x] only boolean

* extension[abortionCoverage] ^short = "Abortion Coverage Disclosure"
* extension[abortionCoverage] ^definition = "For qualified health plans, indicates coverage, exclusion, or limitation to excepted abortion services per 45 CFR 156.280"
* extension[abortionCoverage].value[x] only CodeableConcept


// Excluded Services Extension
Extension: ExcludedServices
Id: excluded-services
Title: "Excluded Services Extension"
Description: "Extension for documenting services that are not covered by the health insurance plan, as required in SBC 'Excluded Services & Other Covered Services' section"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "InsurancePlan"

* extension contains
    service 0..*

* extension[service] ^short = "Excluded Service"
* extension[service] ^definition = "A service or category of services that is not covered under this plan"
* extension[service].extension contains
    serviceType 1..1 and
    description 0..1

* extension[service].extension[serviceType] ^short = "Service Type"
* extension[service].extension[serviceType] ^definition = "The type of service that is excluded"
* extension[service].extension[serviceType].value[x] only CodeableConcept

* extension[service].extension[description] ^short = "Description"
* extension[service].extension[description] ^definition = "Additional description or context about the exclusion"
* extension[service].extension[description].value[x] only string


// Benefit Limitation Extension
Extension: BenefitLimitation
Id: benefit-limitation
Title: "Benefit Limitation Extension"
Description: "Extension for documenting limitations and exceptions that apply to specific benefits in the SBC"
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "InsurancePlan.coverage.benefit"
* ^context[1].type = #element
* ^context[1].expression = "InsurancePlan.plan.specificCost.benefit"

* value[x] only string
* value[x] ^short = "Limitation or Exception"
* value[x] ^definition = "Text describing limitations, exceptions, or additional requirements that apply to this benefit"
