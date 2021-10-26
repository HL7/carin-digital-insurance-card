Profile: C4DICPatient
Parent: Patient
Id: C4DIC-Patient
Title: "C4DIC Patient"
Description: "The goal of this profile is to describe a data-minimized version of Patient used to convey information about the Member who has health insurance coverage. Information that would normally not appear on an health insurance card is not required."

// Inherited short and definition include animals
* . ^short = "Information about an individual who has health insurance coverage"
* . ^definition = "Demographics and other administrative information about an individual with insurance coverage provided by a health plan."

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last.  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last."
* meta.profile 1..*
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest."
* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4DICPatient)

* name 1..1 MS
* name.family 1..1 MS
* name.family ^comment = "Where an individual has only one name, payers SHALL provide the information as family name to ensure consistency."
* name.given 0..* MS

* birthDate 0..1
* birthDate ^comment = "MAY be excluded. This data element is printed on some physical insurance cards, but not all."

* gender 0..1
* gender ^comment = "MAY be excluded. Gender is not a data element typically found on physical insurance cards. Furthermore, self-identified gender may change over time. Including this element could create a situation where the gender element in the provided resource does not match that in another form of identification or does not match the member's self-identified gender."
