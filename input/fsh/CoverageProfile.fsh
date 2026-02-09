Profile: C4DICCoverage
Parent: $USCoreCoverage
Id: C4DIC-Coverage
Title: "C4DIC Coverage"
Description: "Data that reflect a payer’s coverage of the member."

* extension contains
   PlanBeneficiaries named C4DIC-PlanBeneficiaries-extension 0..* and
   AdditionalCardInformation named C4DIC-AdditionalCardInformation-extension 0..* and
   ColorPalette named C4DIC-ColorPalette-extension 0..1 and
   Logo named C4DIC-Logo-extension 0..1 and
   QRCode named C4DIC-QRCode-extension 0..* and
   Barcode named C4DIC-Barcode-extension 0..* and
   SupportingImage named C4DIC-SupportingImage-extension 0..* and
   CardIssueDate named C4DIC-CardIssueDate-extension 0..1

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*

* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4DICCoverage)
* identifier MS

* identifier.type from C4DICCoverageIdentifierType (extensible)
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.ordered = false   // can be omitted, since false is the default
* identifier ^slicing.description = "Slice based on $this pattern"

// * identifier contains
//    memberid 1..1 MS

// * identifier[memberid] ^short = "Member ID"
// * identifier[memberid].type = $IdentifierType#MB
// * identifier[memberid].system 1..1 MS
// * identifier[memberid].value 1..1 MS
// * identifier[memberid].assigner 1..1 MS

* status MS
* type 1..1 MS

* subscriber 1..1 MS
* subscriber.reference 1..1 MS
* subscriberId 1..1 MS

* beneficiary 1..1 MS
* beneficiary.reference 1..1 MS
* beneficiary only Reference(C4DICPatient)

* dependent MS

* relationship 1..1 MS
* relationship from $SubscriberRelationiship (required)

* period MS

* payor 1..1 MS
* payor only Reference (C4DICOrganization)

* class MS
* class.type from C4DICCoverageClassVS (required)
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.rules = #open
* class ^slicing.ordered = false   // can be omitted, since false is the default
* class ^slicing.description = "Slice based on value pattern"
* class contains
//   group 0..1  MS and
//   plan 0..1 MS and
   division 0..1 MS and
   network 0..1 MS and
   alternatenetwork 0..* MS and
   rxbin 0..1 MS and
   rxpcn 0..1 MS and
   rxgroup 0..1 MS and
   rxid 0..1 MS and
   rxiin 0..1 MS

// * class[group].type = $CoverageClassCS#group
// * class[plan].type = $CoverageClassCS#plan
* class[division].type = C4DICExtendedCoverageClassCS#division
* class[network].type = C4DICExtendedCoverageClassCS#network
* class[network] ^short = "Preferred/Primary Network"
* class[network] ^definition = "The preferred/primary network or network tier associated with the coverage"
* class[alternatenetwork].type = C4DICExtendedCoverageClassCS#alternatenetwork
* class[alternatenetwork] ^short = "Alternate Network(s)"
* class[alternatenetwork] ^definition = "Secondary or additional networks or network tiers associated with the coverage"
* class[rxbin].type = $CoverageClassCS#rxbin
* class[rxpcn].type = $CoverageClassCS#rxpcn
* class[rxgroup].type = $CoverageClassCS#rxgroup
* class[rxid].type = $CoverageClassCS#rxid
* class[rxiin].type = C4DICExtendedCoverageClassCS#rxiin

* costToBeneficiary MS
* costToBeneficiary.type 1..1 MS
* costToBeneficiary.type from C4DICCopayTypeVS (extensible)
* costToBeneficiary.type ^comment = "Includes codes to represent the drug tier of a particular medication in a health plan. Base set are examples. Each plan may have its own controlled vocabulary. Therefore the codes used here should relate to the tier codes used in the member's drug formulary"
* costToBeneficiary.value[x] only Money
* costToBeneficiary.valueMoney 1..1 MS
* costToBeneficiary.valueMoney obeys ValueMoney-details-or-extension
* costToBeneficiary.valueMoney.extension contains
   BeneficiaryCostString named C4DIC-BeneficiaryCostString-extension 0..1 MS


* costToBeneficiary.valueMoney.value 0..1 MS
* costToBeneficiary.valueMoney.currency 0..1 MS

* meta.lastUpdated ^comment = "Defines the date the coverage that was effective as of the date of service or admission (163). The Coverage Reference Resource SHALL be returned with data that was effective as of the date of service or admission of the claim"
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest. CPCDS data element (190)"
* status ^comment = "Identfies the status of the coverage information (default: active) (133)"
* type ^comment = "Identifies if the coverage is PPO, HMO, POS, etc. (3)"
* subscriberId  ^comment = "The identifier assigned by the Payer on the subscriber's ID card (132)"
* beneficiary ^comment = "Identifier for a member assigned by the Payer.  If members receive ID cards, that is the identifier that should be provided (1).  This is the party who receives treatment for which the costs are reimbursed under the coverage. alternate path:  EOB.patient(Patient).identifier"
* relationship ^comment = "Relationship of the member to the person insured (subscriber). (72)"
* period ^comment = "Date that the contract became effective (74) and Date that the contract was terminated or coverage changed (75)"
* payor ^comment = "Issuer of the Policy (2)"
* class[group].value ^comment = "Employer account identifier (134)"
* class[group].name ^comment = "Name of the Employer Account (135)"
* class[plan].value ^comment = "Business concept used by a health plan to describe its benefit offerings (154)"
* class[plan].name ^comment = "Name of the health plan benefit offering assigned to the Plan Identfier (155)"

* costToBeneficiary.valueMoney.extension[BeneficiaryCostString] ^comment = "Either valueMoney.value and valueMoney.currency is MS or Beneficiary Cost String extension is MS"
* costToBeneficiary.valueMoney.value ^comment = "Either valueMoney.value and valueMoney.currency is MS or Beneficiary Cost String extension is MS"
* costToBeneficiary.valueMoney.currency ^comment = "Either valueMoney.value and valueMoney.currency is MS or Beneficiary Cost String extension is MS"

RuleSet: Metaprofile-supportedProfile-slice
* meta.profile ^slicing.discriminator.type = #pattern
* meta.profile ^slicing.discriminator.path = "$this"
* meta.profile ^slicing.rules = #open
* meta.profile ^slicing.ordered = false
* meta.profile ^slicing.description = "Slice based on value"
* meta.profile contains supportedProfile 1..1



Invariant: ValueMoney-details-or-extension
Description: "costToBeneficiary SHALL have (value AND currency) OR Beneficiary Cost String extension, but not both"
Expression: "((value.exists() and currency.exists()) xor extension.where(url='http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-BeneficiaryCostString-extension').exists()) and ((value.exists() xor currency.exists())).not()"
Severity: #error

