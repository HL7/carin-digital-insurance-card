
CodeSystem: C4DICIdentifierType
Title: "C4DIC Identifier Type"
Description: "Identifier Type codes that extend those defined in http://terminology.hl7.org/CodeSystem/v2-0203 to define the type of identifier payers and providers assign to claims and patients"
// * #tax "Tax ID Number" "Tax ID Number"  - use the TAX code from the base codesystem
* #npi "National Provider Identifier" "National Provider Identifier"
//* #clia "CLIA" "CLIA"
* #payerid "Payer ID" "Payer ID"
* #naiccode "NAIC Code" "NAIC Code"
//* #mb "Member ID" "Member ID" - not needed - defined in HL7
// * #mr "Medical Record Number" "Medical Record Number" - use the MR code from the base codesystem
* #pat "Patient Account Number" "Patient Account Number"
* #um "Unique Member ID" "Indicates that the patient identifier is a unique member identifier assigned by a payer across all lines of business"
* #uc "Unique Claim ID" "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* ^copyright = "This CodeSystem is not copyrighted."



CodeSystem: C4DICExtendedCoverageClassCS
Title: "C4DIC Extended Coverage Class"
Description: "This code system includes an extended set of Coverage Class codes."
* #division "Division"
* #network "Network"
* ^copyright = "This CodeSystem is not copyrighted."


CodeSystem: C4DICExtendedCopayTypeCS
Title: "C4DIC Extended Copay Type"
Description: "This code system includes an extended set of Copay T codes."
* #FamOutDed "Family Out of Network Deductible"
* #FamInDed "Family In Network Deductible"
* #FamRxOutDed "Family Pharmacy Out of Network Deductible"
* #FamRxInDed "Family Pharmacy In Network Deductible"
* #FamOutMax "Family Out of Network Out of Pocket Maximum"
* #FamInMax "Family In Network Out of Pocket Maximum"
* #FamRxOutMax "Family Pharmacy Out of Network Out of Pocket Maximum"
* #FamRxInMax "Family Pharmacy In Network Out of Pocket Maximum"
* #rx "Prescription"
* #urgentcare "Urgent Care"
* #emergency "Emergency"
* #spvisit "Specialist Practitioner Visit"
* #gpvisit "General Practitioner Visit"
* ^copyright = "This CodeSystem is not copyrighted."

CodeSystem: C4DICExtendedContactTypeCS
Title: "C4DIC Extended Contact Type"
Description: "This code system includes an extended set of Contact Type codes."
* #pharma "Pharmacists"
* #rxmailorder "Mail Order Pharmacy"
* #provider "Provider Service"
* #virtual "Virtual Care Services"
* ^copyright = "This CodeSystem is not copyrighted."
