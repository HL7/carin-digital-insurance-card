Profile: C4DICPatient
Parent: $USCorePatient
Id: C4DIC-Patient
Title: "C4DIC Patient"
Description: "This profile builds upon the US Core Patient profile. It is used to convey information about the member who has health insurance coverage."
* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.profile 1..*
* insert Metaprofile-supportedProfile-slice

* meta.profile[supportedProfile] = Canonical(C4DICPatient)

* birthDate MS
* gender MS

* name MS
* address.district MS
* address.country MS 

* birthDate ^comment = "Date of birth of the member"
* gender ^comment = "Gender of the member"
* name ^comment = "The name of the patient"

* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last.  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last."
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest."
* address.line ^comment = "Member's street name, number, direction & P.O. Box etc."
* address.city ^comment = "The city for the member's primary address" 
* address.district ^comment = "The county for the member's primary address" 
* address.state ^comment = "The state for the member's primary address" 
* address.postalCode ^comment = "This represents the member's 5 digit zip code" 
* address.country ^comment = "The country for the member's primary address"