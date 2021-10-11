
Extension: PlanBeneficiaries
Id: C4DIC-PlanBeneficiaries-extension
Title: "Plan Beneficiaries"
Description: "All beneficiaries on the plan with corresponding Names and MemberIDs"
* extension contains
	subscriber 1..1 MS and
    beneficiary 1..* MS

* extension[subscriber].extension contains
	memberId 1..1 MS and
    name 1..1 MS

* extension[subscriber] ^short = "Subscriber Information"
* extension[subscriber].extension[memberId] ^short = "Subscriber Member Id"
* extension[subscriber].extension[memberId].value[x] 1..1
* extension[subscriber].extension[memberId].value[x] only string

* extension[subscriber].extension[name] ^short = "Subscriber Name"
* extension[subscriber].extension[name].value[x] 1..1
* extension[subscriber].extension[name].value[x] only HumanName
* extension[subscriber].extension[name].valueHumanName.family 1..1 MS
* extension[subscriber].extension[name].valueHumanName.given 1..* MS

* extension[beneficiary].extension contains
	memberId 1..1 MS and
    name 1..1 MS

* extension[beneficiary] ^short = "Beneficiary Information"
* extension[beneficiary].extension[memberId] ^short = "Beneficiary Member Id"
* extension[beneficiary].extension[memberId].value[x] 1..1
* extension[beneficiary].extension[memberId].value[x] only string

* extension[beneficiary].extension[name] ^short = "Beneficiary Name"
* extension[beneficiary].extension[name].value[x] 1..1
* extension[beneficiary].extension[name].value[x] only HumanName
* extension[beneficiary].extension[name].valueHumanName.family 1..1 MS
* extension[beneficiary].extension[name].valueHumanName.given 1..* MS




Extension: BeneficiaryCosts
Id: C4DIC-BeneficiaryCosts-extension
Title: "Beneficiary Costs"
Description: "Cost to beneficiary allowing for strings"
* extension contains
	costToBeneficiary 0..* MS

* extension[costToBeneficiary].extension contains
	type 1..1 MS and
    cost 1..1 MS

* extension[costToBeneficiary] ^short = "Cost to beneficiary"

* extension[costToBeneficiary].extension[type] ^short = "Type of cost"
* extension[costToBeneficiary].extension[type].value[x] 1..1
* extension[costToBeneficiary].extension[type].value[x] only CodeableConcept
* extension[costToBeneficiary].extension[type].valueCodeableConcept from C4DICCopayTypeVS (required)

* extension[costToBeneficiary].extension[cost] ^short = "Cost description"
* extension[costToBeneficiary].extension[cost].value[x] 1..1
* extension[costToBeneficiary].extension[cost].value[x] only string



Extension: AdditionalCardInformation
Id: C4DIC-AdditionalCardInformation-extension
Title: "Additional Insurance Card Information"
Description: "Aadditional free text items often found on insurance cards"
* value[x] 1..1
* value[x] only Annotation




Extension: CardImages
Id: C4DIC-CardImages-extension
Title: "Card Images"
Description: "Images found on insurance cards"
* extension contains
	backgroundColor 0..1 and
	highlightColor 0..1 and 
	logo 0..* and
	qrCode 0..* and
	barcode 0..* and
	other 0..*


* extension[backgroundColor] ^short = "Insurance card background color"
* extension[backgroundColor].value[x] 1..1
* extension[backgroundColor].value[x] only CodeableConcept

* extension[backgroundColor].valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* extension[backgroundColor].valueCodeableConcept.coding ^slicing.rules = #open
* extension[backgroundColor].valueCodeableConcept.coding ^slicing.discriminator.type = #pattern 
* extension[backgroundColor].valueCodeableConcept.coding ^slicing.ordered = false   // can be omitted, since false is the default
* extension[backgroundColor].valueCodeableConcept.coding ^slicing.description = "Slice based on $this pattern"

* extension[backgroundColor].valueCodeableConcept.coding contains
	isoColor 1..1

* extension[backgroundColor].valueCodeableConcept.coding[isoColor].system = "urn:iso:std:iso-iec:61966:2-1" 
* extension[backgroundColor].valueCodeableConcept.coding[isoColor].code 1..1

* extension[highlightColor] ^short = "Insurance card highlight color"
* extension[highlightColor].value[x] 1..1
* extension[highlightColor].value[x] only CodeableConcept


* extension[highlightColor].valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* extension[highlightColor].valueCodeableConcept.coding ^slicing.rules = #open
* extension[highlightColor].valueCodeableConcept.coding ^slicing.discriminator.type = #pattern 
* extension[highlightColor].valueCodeableConcept.coding ^slicing.ordered = false   // can be omitted, since false is the default
* extension[highlightColor].valueCodeableConcept.coding ^slicing.description = "Slice based on $this pattern"

* extension[highlightColor].valueCodeableConcept.coding contains
	isoColor 1..1

* extension[highlightColor].valueCodeableConcept.coding[isoColor].system = "urn:iso:std:iso-iec:61966:2-1" 
* extension[highlightColor].valueCodeableConcept.coding[isoColor].code 1..1
//* extension[highlightColor].valueCodeableConcept.coding.system = "urn:iso:std:iso-iec:61966:2-1" 

* extension[logo] ^short = "Logo for the health insurance provider"
* extension[logo].value[x] 1..1
* extension[logo].value[x] only Attachment
* extension[logo].valueAttachment.contentType 1..1
* extension[logo].valueAttachment.data 1..1

* extension[qrCode] ^short = "QR code found on the insurance card"
* extension[qrCode].value[x] 1..1
* extension[qrCode].value[x] only Attachment
* extension[qrCode].valueAttachment.contentType 1..1
* extension[qrCode].valueAttachment.data 1..1

* extension[barcode] ^short = "Barcode found on the insurance card"
* extension[barcode].value[x] 1..1
* extension[barcode].value[x] only Attachment
* extension[barcode].valueAttachment.contentType 1..1
* extension[barcode].valueAttachment.data 1..1

* extension[other] ^short = "Other supporting images found on the insurance card"
* extension[other].value[x] 1..1
* extension[other].value[x] only Attachment
* extension[other].valueAttachment.contentType 1..1
* extension[other].valueAttachment.data 1..1

Extension: CardIssueDate
Id: C4DIC-CardIssueDate-extension
Title: "Card Issue Date"
Description: "Date at which the insurance card was issued by the payer"
* value[x] 1..1
* value[x] only date