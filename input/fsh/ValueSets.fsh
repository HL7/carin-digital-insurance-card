/*

// Contains ValueSets for Codes Defined WITHIN this IG  
ValueSet: C4DICAdjudicationCategoryDiscriminator   
Title: "C4DIC Adjudication Category Discriminator"
Description: "Used as the discriminator for adjudication.category and item.adjudication.category for the CARIN IG for Blue Button®"
* codes from valueset C4DICAdjudication
// 20210127 CAS: Added to resolve the issue where this "all slices" discriminator (category) required ValueSet did not include a valueset reuuired for the required benefitpaymentstatus slice discriminator
* codes from valueset C4DICPayerBenefitPaymentStatus
* codes from system C4DICAdjudicationDiscriminator
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICTotalCategoryDiscriminator   
Title: "C4DIC Total Category Discriminator"
Description: "Used as the discriminator for total.category for the CARIN IG for Blue Button®"
* codes from valueset C4DICAdjudication
* codes from valueset C4DICPayerBenefitPaymentStatus
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimInstitutionalCareTeamRole 
Title: "C4DIC Claim Institutional Care Team Role"
Description: "Describes functional roles of the care team members."
* $CareTeamRoleCodeCS#primary 
* C4DICClaimCareTeamRole#attending 
* C4DICClaimCareTeamRole#referring
* C4DICClaimCareTeamRole#operating 
* C4DICClaimCareTeamRole#otheroperating 
* C4DICClaimCareTeamRole#performing 
// * C4DICClaimCareTeamRoleCS#site 
// * C4DICClaimCareTeamRoleCS#prescribing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimProfessionalAndNonClinicianCareTeamRole   
Title: "C4DIC Claim Professional And Non Clinician Care Team Role"
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* $CareTeamRoleCodeCS#supervisor
* C4DICClaimCareTeamRole#performing
* C4DICClaimCareTeamRole#purchasedservice 
* C4DICClaimCareTeamRole#referring 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimPharmacyTeamRole 
Title: "C4DIC Claim Pharmacy CareTeam Roles"
Description: "Describes functional roles of the care team members"
* $CareTeamRoleCodeCS#primary 
* C4DICClaimCareTeamRole#prescribing 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICAdjudication   
Title: "C4DIC Adjudication"
Description: "Describes the various amount fields used when payers receive and adjudicate a claim.  It includes the values 
defined in http://terminology.hl7.org/CodeSystem/adjudication, as well as those defined in the C4DIC Adjudication CodeSystem."
* $HL7AdjudicationCS#submitted 
* $HL7AdjudicationCS#copay 
* $HL7AdjudicationCS#eligible
* $HL7AdjudicationCS#deductible  
* $HL7AdjudicationCS#benefit 
* C4DICAdjudication#coinsurance "Coinsurance" 
* C4DICAdjudication#noncovered "Noncovered" 
* C4DICAdjudication#priorpayerpaid "Prior payer paid" 
* C4DICAdjudication#paidbypatient "Paid by patient" 
* C4DICAdjudication#paidtopatient "Paid to patient"
* C4DICAdjudication#paidtoprovider "Paid to provider" 
* C4DICAdjudication#memberliability "Member liability" 
* C4DICAdjudication#discount "Discount" 
* C4DICAdjudication#drugcost "Drug cost" 
* ^copyright = "This Valueset is not copyrighted."


ValueSet: C4DICPayerProviderContractingStatus
Title: "C4DIC Payer Provider Contracting Status"
Description: "Indicates that the Provider has a contract with the Payer as of the effective date of service or admission."
* C4DICPayerAdjudicationStatus#contracted "Contracted" 
* C4DICPayerAdjudicationStatus#noncontracted "Non-Contracted" 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICPayerBenefitPaymentStatus
Title: "C4DIC Payer Benefit Payment Status"
Description: "Indicates the in network or out of network payment status of the claim."
* C4DICPayerAdjudicationStatus#innetwork	"In Network"
* C4DICPayerAdjudicationStatus#outofnetwork "Out Of Network"
* C4DICPayerAdjudicationStatus#other "Other" 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICPayerClaimPaymentStatusCode
Title: "C4DIC Payer Claim Payment Status Code"
Description: "Indicates whether the claim / item was paid or denied."
* C4DICPayerAdjudicationStatus#paid 
* C4DICPayerAdjudicationStatus#denied 
* C4DICPayerAdjudicationStatus#partiallypaid 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICPayeeType
Title: "C4DIC Payee Type"
Description: "Identifies the type of recipient of the adjudication amount; i.e., provider, subscriber, beneficiary or another recipient."
* C4DICPayeeType#beneficiary 
* $HL7PayeeType#subscriber 
* $HL7PayeeType#provider
* $HL7PayeeType#other 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimProfessionalAndNonClinicianDiagnosisType 
Title: "C4DIC Claim Professional And Non Clinician Diagnosis Type"
Description: "Indicates if the professional and non-clinician diagnosis is principal or secondary"
* $HL7DiagnosisType#principal "principal"
* C4DICClaimDiagnosisType#secondary "secondary"
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimInpatientInstitutionalDiagnosisType 
Title: "C4DIC Claim Inpatient Institutional Diagnosis Type"
Description: "Indicates if the inpatient institutional diagnosis is admitting, principal, other or an external cause of injury."
* $HL7DiagnosisType#principal 
* C4DICClaimDiagnosisType#other  
* C4DICClaimDiagnosisType#externalcauseofinjury   
* $HL7DiagnosisType#admitting // http://terminology.hl7.org/CodeSystem/ex-diagnosistype#admitting 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimOutpatientInstitutionalDiagnosisType 
Title: "C4DIC Claim Outpatient Institutional Diagnosis Type"
Description: "Indicates if the outpatient institutional diagnosis is principal, other, an external cause of injury or a patient reason for visit."
* $HL7DiagnosisType#principal 
* C4DICClaimDiagnosisType#other  
* C4DICClaimDiagnosisType#externalcauseofinjury   
* C4DICClaimDiagnosisType#patientreasonforvisit 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICRelatedClaimRelationshipCodes
Title: "C4DIC Related Claim Relationship Codes"
Description: "Identifies if the current claim represents a claim that has been adjusted and was given a prior claim number or if the current claim has been adjusted; i.e., replaced by or merged to another claim number."
* $HL7RelatedClaimRelationshipCS#prior 
* C4DICRelatedClaimRelationshipCodes#replacedby 
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICSupportingInfoType
Title: "C4DIC SupportingInfo Type"
Description: "Used as the discriminator for the types of supporting information for the CARIN IG for Blue Button� Implementation Guide." 
* codes from system C4DICSupportingInfoType 
* ^copyright = "This Valueset is not copyrighted."

// ************* @Saul - replaced with C4DIC **************
//ValueSet: PatientIdentifierType
//Title: "Patient Identifier Type"
//Description: "Patient Identifier Type"
//* C4DICIdentifierType#um
//* C4DICIdentifierType#mb
//* $IdentifierType#MR
//* C4DICIdentifierType#pt
//* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICClaimIdentifierType
Title: "C4DIC Claim Identifier Type"
Description: "Indicates that the claim identifier is that assigned by a payer for a claim received from a provider or subscriber"
* C4DICIdentifierType#uc
* ^copyright = "This Valueset is not copyrighted."
*/
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

/*
ValueSet: C4DICOrganizationIdentifierType
Title: "C4DIC Organization Identifier Type"
Description: "Identifies the type of identifiers for organizations"
* C4DICIdentifierType#npi
* C4DICIdentifierType#payerid
* C4DICIdentifierType#naiccode
* codes from system $IdentifierType
* ^copyright = "This Valueset is not copyrighted."

ValueSet: C4DICPractitionerIdentifierType
Title: "C4DIC Practitioner Identifier Type"
Description: "Identifies the type of identifiers for practitioners"
* C4DICIdentifierType#npi
* codes from system $IdentifierType
* ^copyright = "This Valueset is not copyrighted."
/*
CodeSystem: C4DICClaimProcedureType
Title: "C4DIC Claim Procedure Type"
Description: "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure"
* #principal "Principal" "The Principal Procedure is based on the relation of the procedure to the Principal Diagnosis"
* #other "Other"  "Other procedures performed during the inpatient institutional admission"
* ^copyright = "This Code System is not copyrighted."
*
ValueSet: C4DICClaimProcedureType
Title: "C4DIC Claim Procedure Type"
Description: "Indicates if the inpatient institutional procedure (ICD-PCS) is the principal procedure or another procedure"
* codes from system C4DICClaimProcedureType
* ^copyright = "This Value Set is not copyrighted."

ValueSet: C4DICInstitutionalClaimSubType
Title: "C4DIC Institutional Claim SubType"
Description: "Indicates if institutional ExplanationOfBenefit is inpatient or putpatient."
* codes from system C4DICInstitutionalClaimSubType
* ^copyright = "This CodeSystem is not copyrighted."

*/