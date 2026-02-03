
CodeSystem: C4DICIdentifierType
Title: "C4DIC Identifier Type"
Description: "Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203 to define the type of identifier payers and providers assign to insurers and patients"
* ^url = "http://terminology.hl7.org/CodeSystem/C4DICIdentifierType"
* #payerid "Payer ID" "Payer ID"
* #um "Unique Member ID" "Indicates that the patient identifier is a unique member identifier assigned by a payer across all lines of business"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^caseSensitive = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims





CodeSystem: C4DICExtendedCoverageClassCS
Title: "C4DIC Extended Coverage Class"
Description: "This code system includes an extended set of Coverage Class codes."
* ^url = "http://terminology.hl7.org/CodeSystem/C4DICExtendedCoverageClassCS"
* #division "Division" "Division"
* #network "Network" "The primary network or network tier associated with the coverage"
* #alternatenetwork "Alternate Network" "Secondary or additional networks or network tiers associated with the coverage"
* #rxiin "RxIIN" "RxIIN"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^caseSensitive = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims


CodeSystem: C4DICExtendedCopayTypeCS
Title: "C4DIC Extended Copay Type"
Description: "This code system includes an extended set of Copay Type codes."
* ^url = "http://terminology.hl7.org/CodeSystem/C4DICExtendedCopayTypeCS"
* #FamOutDed "Family Out of Network Deductible" "Family Out of Network Deductible"
* #FamInDed "Family In Network Deductible" "Family In Network Deductible"
* #FamRxOutDed "Family Pharmacy Out of Network Deductible" "Family Pharmacy Out of Network Deductible"
* #FamRxInDed "Family Pharmacy In Network Deductible" "Family Pharmacy In Network Deductible"
* #FamOutMax "Family Out of Network Out of Pocket Maximum" "Family Out of Network Out of Pocket Maximum"
* #FamInMax "Family In Network Out of Pocket Maximum" "Family In Network Out of Pocket Maximum"
* #FamRxOutMax "Family Pharmacy Out of Network Out of Pocket Maximum" "Family Pharmacy Out of Network Out of Pocket Maximum"
* #FamRxInMax "Family Pharmacy In Network Out of Pocket Maximum" "Family Pharmacy In Network Out of Pocket Maximum"
* #IndOutDed "Invidual Out of Network Deductible" "Individual Out of Network Deductible"
* #IndInDed "Individual In Network Deductible" "Individual In Network Deductible"
* #IndRxOutDed "Individual Pharmacy Out of Network Deductible" "Individual Pharmacy Out of Network Deductible"
* #IndRxInDed "Individual Pharmacy In Network Deductible" "Individual Pharmacy In Network Deductible"
* #IndOutMax "Individual Out of Network Out of Pocket Maximum" "Individual Out of Network Out of Pocket Maximum"
* #IndInMax "Individual In Network Out of Pocket Maximum" "Individual In Network Out of Pocket Maximum"
* #IndRxOutMax "Individual Pharmacy Out of Network Out of Pocket Maximum" "Individual Pharmacy Out of Network Out of Pocket Maximum"
* #IndRxInMax "Individual Pharmacy In Network Out of Pocket Maximum" "Individual Pharmacy In Network Out of Pocket Maximum"
* #rx "Prescription" "Prescription"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^caseSensitive = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims


CodeSystem: C4DICExtendedContactTypeCS
Title: "C4DIC Extended Contact Type"
Description: "This code system includes an extended set of Contact Type codes."
* ^url = "http://terminology.hl7.org/CodeSystem/C4DICExtendedContactTypeCS"
* #pharma "Pharmacists" "Pharmacists"
* #rxmailorder "Mail Order Pharmacy" "Mail Order Pharmacy"
* #provider "Provider Service" "Provider Service"
* #virtual "Virtual Care Services" "Virtual Care Services"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^caseSensitive = true
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims

