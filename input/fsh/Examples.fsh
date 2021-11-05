/*
Instance: Patient1
InstanceOf: C4DICPatient
Description: "Patient Example1"
Usage: #example
//* id = "1234-234-1243-12345678901"
//* meta.profile = Canonical(C4DICPatient)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* id = "Patient1"
* active = true
* name[0].family = "Example1"
* name[0].given[0] = "Johnny"
* telecom[0].system = http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)555-1212"
* telecom[0].rank = 1
* telecom[0].system = 	http://hl7.org/fhir/contact-point-system#phone
* telecom[0].value = "(301)666-1212"
* telecom[0].rank = 2
* gender = http://hl7.org/fhir/administrative-gender#male
* birthDate = "1986-01-01"
* address[0].type = http://hl7.org/fhir/address-type#physical
* address[0].line[0] = "123 Main Street"
* address[0].city = "Pittsburgh"
* address[0].state = "PA"
* address[0].postalCode = "12519"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK
* identifier[memberid].type = $IdentifierType#MB
* identifier[memberid].value = "1234-234-1243-12345678901"
* identifier[memberid].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
//* identifier[medrecnum].type = $IdentifierType#MR
//* identifier[medrecnum].value = "1234-234-1243-12345678901m"
//* identifier[medrecnum].system = "https://www.xxxhealthplan.com/fhir/medicalrecordnumber"
* identifier[uniquememberid].type = C4DICIdentifierType#um
* identifier[uniquememberid].value = "1234-234-1243-12345678901u"
* identifier[uniquememberid].system = "https://www.xxxhealthplan.com/fhir/iniquememberidentifier"

Instance: Coverage1
InstanceOf: C4DICCoverage
Description: "Coverage Example1"
Usage: #example
//* id = "1234-234-1243-12345678901-20190101-20191031"
* id = "Coverage1"
//* meta.profile = Canonical(C4DICCoverage)
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* language = #en-US
* status = #active
* identifier[0].type = $IdentifierType#MB
* identifier[0].value = "1234-234-1243-12345678901"
* identifier[0].system = "https://www.xxxhealthplan.com/fhir/memberidentifier"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP
* type.text = "health insurance plan policy"
* policyHolder = Reference(Patient1)
* subscriber = Reference(Patient1)
* beneficiary = Reference(Patient1)
* subscriberId = "12345678901"  
* dependent = "01"
* period.start = "2019-01-01"
* period.end = "2019-10-31"

* class[group].type = $CoverageClassCS#group 
* class[group].type.text = "An employee group"
* class[group].value = "021890"
* class[group].name = "Acme Corporation"
* class[plan].type = $CoverageClassCS#plan
* class[plan].type.text = "Plan"
* class[plan].value = "XYZ123"
* class[plan].name = "XYZ123-UPMC CONSUMER ADVA"
// * class[0].type = $CoverageClassCS#subgroup 
// * class[0].type.text = "A subgroup of an employee group"
// * class[0].value = "300"
// * class[0].name = "ACME HSA PPO 1500"
* network = "XYZ123-UPMC CONSUMER ADVA"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self
* payor = Reference(OrganizationPayer1)


Instance: OrganizationPayer1
InstanceOf: C4DICOrganization
Description: "Payer1"
Usage: #example
* id = "Payer1"
//* meta.profile = Canonical(C4DICOrganization)
* meta.lastUpdated = "2019-12-12T09:14:11+00:00"
* language = #en-US
* identifier[NPI].type = $C4DICIdentifierTypeCS#npi
* identifier[NPI].value = "345678"
* identifier[payerid].type = $C4DICIdentifierTypeCS#payerid
* identifier[payerid].value = "901234"
* name = "Payer 1"
* active = true 
*/
