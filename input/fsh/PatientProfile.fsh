Profile: C4DICPatient
Parent: Patient
Id: C4DIC-Patient
Title: "C4DIC Patient"
Description: "Slight modification of Patient with limited MS. This profile is used to convey information about the member who has health insurance coverage. Information that would normally not appear on an health insurance card should not be used. This profile makes minimization suggestions."

// Inherited short and definition include animals
* . ^short = "Information about an individual receiving an individual receiving a vaccination or infectious disease-related laboratory test"
* . ^definition = "Demographics and other administrative information about an individual receiving a vaccination or infectious disease-related laboratory test."

* meta 1..1 MS
* meta.lastUpdated 1..1 MS
* meta.lastUpdated ^comment = "Defines the date the Resource was created or updated, whichever comes last.  Payers SHALL provide the last time the data was updated or the date of creation in the payer’s system of record, whichever comes last."
* meta.profile 1..*
* meta.profile ^comment = "meta.profile is required as a matter of convenience of receiving systems. The meta.profile should be used by the Server to hint/assert/declare that this instance conforms to one (or more) stated profiles (with business versions). meta.profile does not capture any business logic, processing directives, or semantics (for example, inpatient or outpatient). Clients should not assume that the Server will exhaustively indicate all profiles with all versions that this instance conforms to. Clients can (and should) perform their own validation of conformance to the indicated profile(s) and to any other profiles of interest."
* insert Metaprofile-supportedProfile-slice
* meta.profile[supportedProfile] = Canonical(C4DICPatient)

* birthDate MS
* birthDate ^comment = "If exact date of birth is partially or completely unknown, Payers SHALL populate this element with the date of birth information listed on the member's government-issued identification. This MAY include a partial date of birth like `1999` or `1999-01`, or \"filler\" for unknown portions. (E.g., if a member was born in 1950 but does not know the month or day, their government-issued identification may fill the month and day with `-01-01`. In this case, it is acceptable to populate this element with `1950-01-01` even if it is known the member was not actually born on January 1.) If date of birth is completely unknown and no government-issued identification is available, Payers MAY omit this element."

* gender 0..0
* gender ^short = "SHALL NOT be included"
* gender ^comment = "Self-identified gender may change over time, and it may not be possible to re-issue a credential updating the value of this element. Including this element could therefore create a situation where the gender element in the credential does not match that in another form of identification, or does not match the member's self-identified gender at the time they present their credential."

* photo 0..0
* photo ^comment = "Attachments are not allowed"

* name 1..1
* name and name.given and name.family MS
* name obeys c4dic-name-invariant
* name ^short = "Official name (i.e., legal name) of the member"
* name ^definition = "Official name (i.e., legal name) of the member, corresponding to `official` in [this value set](https://www.hl7.org/fhir/valueset-name-use.html). Issuers SHALL provide a single `name` element UNLESS they believe providing multiple `name` elements is critical for verification of the credential. If providing only a single `name` element, Issuers SHALL NOT populate `name.use`, and Verifiers SHALL assume that the provided name is `official`."
* name.text ^short = "Use instead of `family` and `given` if the member's name cannot be easily split these elements"

* address.district MS
* address.district ^comment = "The county for the member's primary address" 
* address.country MS 
* address.line ^comment = "Member's street name, number, direction & P.O. Box etc."
* address.city ^comment = "The city for the member's primary address" 
* address.state ^comment = "The state for the member's primary address" 
* address.postalCode ^comment = "This represents the member's 5 digit zip code" 
* address.country ^comment = "The country for the member's primary address"