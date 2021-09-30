
ValueSet: C4DICCoverageIdentifierType
Title: "C4DIC Coverage Identifier Type"
Description: "Identifies the type of identifier for payer coverage"
* C4DICIdentifierType#um
* C4DICIdentifierType#pat
* $IdentifierType#MB
* $IdentifierType#MR  
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4DICCoverageClassVS
Title: "C4DIC Extended Coverage Class"
Description: "This value set includes an extended set of coverage class codes."
* codes from system $CoverageClassCS
* codes from system C4DICExtendedCoverageClassCS
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4DICCopayTypeVS
Title: "C4DIC Extended Copay Type"
Description: "This value set includes an extended set of copay type codes."
* codes from valueset $HL7CopayTypeVS
* codes from system C4DICExtendedCopayTypeCS
* ^copyright = "This Valueset is not copyrighted."
