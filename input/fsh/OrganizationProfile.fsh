Profile: C4DICOrganization
Parent: $USCoreOrganization
Id: C4DIC-Organization
Title: "C4DIC Organization"
Description: "This profile builds upon the US Core Organization profile. It is used to convey a payer organization."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #claims

* meta 1..1 MS

* meta.lastUpdated 1..1 MS

* meta.profile 1..*



* insert Metaprofile-supportedProfile-slice

* meta.profile[supportedProfile] = Canonical(C4DICOrganization)



* identifier contains

payerid 0..* MS

// Mark inherited US Core slices as MS for consistency
* identifier[CLIA] MS
* identifier[NAIC] MS

* identifier[payerid] ^short = "Payer ID"

* identifier[payerid] ^patternIdentifier.type = C4DICIdentifierType#payerid

* identifier[payerid] ^comment = "Internal value assigned by the payer responsible for the coverage"


* contact MS
/*
* contact.purpose from C4DICContactTypeVS /*(required)*/
/*
* contact ^slicing.discriminator.type = #pattern

* contact ^slicing.discriminator.path = "type"

* contact ^slicing.rules = #open

* contact ^slicing.ordered = false // can be omitted, since false is the default

* contact ^slicing.description = "Slice based on value pattern"

* contact contains

PATINF 0..1 MS and

PAYOR 0..1 MS and

pharma 0..1 MS and

rxmailorder 0..* MS and

provider 0..* MS and

virtual 0..* MS



/* is there a way we can loop through these contact types instead of having to

manually define them one by one?

CAS: Yes, just define your valueSet with the codes of interest. See "C4DICContactTypeVS" in ValueSets.fsh.
    If you want to allow other codes where needed make it (extensible) - See below
*/
/*
* contact[PATINF].purpose = $HL7ContactTypeCS#PATINF

* contact[PAYOR].purpose = $HL7ContactTypeCS#PAYOR

* contact[pharma].purpose = C4DICExtendedContactTypeCS#pharma

* contact[rxmailorder].purpose = C4DICExtendedContactTypeCS#rxmailorder

* contact[provider].purpose = C4DICExtendedContactTypeCS#provider

* contact[virtual].purpose = C4DICExtendedContactTypeCS#virtual

*/

* contact.purpose from C4DICContactTypeVS (extensible)


* contact.telecom MS

* contact.address MS



* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last. Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last. Apps will use the meta.lastUpdated value to determine if the Reference resources are as of the current date or date of service."

* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics. Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest."
