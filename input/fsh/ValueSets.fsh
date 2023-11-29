
ValueSet: C4DICCoverageIdentifierType
Title: "C4DIC Coverage Identifier Type"
Description: "Identifies the type of identifier for payer coverage"
* C4DICIdentifierType#um
* $IdentifierType#MB
* $IdentifierType#MR
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true


ValueSet: C4DICCoverageClassVS
Title: "C4DIC Coverage Class"
Description: "This value set includes an extended set of coverage class codes."
* codes from system $CoverageClassCS
* codes from system C4DICExtendedCoverageClassCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims


ValueSet: C4DICCopayTypeVS
Title: "C4DIC Copay Type"
Description: "This value set includes an extended set of copay type codes."
* codes from valueset $HL7CopayTypeVS
* codes from system C4DICExtendedCopayTypeCS
* codes from system $DrugTierCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims

ValueSet: C4DICContactTypeVS
Title: "C4DIC Contact Type"
Description: "This value set includes an extended set of contact type codes."
* $HL7ContactTypeCS#PATINF
* $HL7ContactTypeCS#PAYOR
* codes from system C4DICExtendedContactTypeCS
* ^copyright = "This Valueset is not copyrighted."
* ^experimental = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims
