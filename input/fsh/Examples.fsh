Instance: Example-Coverage-FSH
InstanceOf: C4DICCoverage
Description: "Coverage Example 1 in FSH"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-04-06T10:49:02.473+00:00"
* meta.profile[supportedProfile] = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-Coverage"

* extension[PlanBeneficiaries][+]
  * extension[memberId].valueString = "102345672-01"
  * extension[name].valueHumanName.family = "Doe"
  * extension[name].valueHumanName.given = "John"

* extension[PlanBeneficiaries][+]
  * extension[memberId].valueString = "102345672-02"
  * extension[name].valueHumanName.family = "Doe"
  * extension[name].valueHumanName.given = "jane"

* extension[PlanBeneficiaries][+]
  * extension[memberId].valueString = "102345672-03"
  * extension[name].valueHumanName.family = "Doe"
  * extension[name].valueHumanName.given = "Jimmy"

* extension[PlanBeneficiaries][+]
  * extension[memberId].valueString = "102345672-04"
  * extension[name].valueHumanName.family = "Doe"
  * extension[name].valueHumanName.given = "Ginny"


* extension[AdditionalCardInformation][+].valueAnnotation.text = "If you use a TTY, call 711.\nYou may be asked to present this card when you receive care or fill a perscription. This card does not gaurentee coverage. Intentionally misusing this card may be considered fraud or a violation of the law.\nWe encourage you to use a primary care physician as a valuable resource and personal health advocate."


* extension[CardIssueDate].valueDate = "2020-12-15"

* extension[BackgroundColor].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/IECColourManagement##00bfff

* extension[HighlightColor]
  * valueCodeableConcept = http://terminology.hl7.org/CodeSystem/IECColourManagement##ceebf5

* extension[Logo]
  * extension[label].valueString = "ACME Inc."
  * extension[description].valueString = "Company logo"
  * extension[image].valueAttachment.contentType = #image/png
  * extension[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAkCAQAAAAqEXJRAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQflCBoOCChye9NTAAAAsklEQVQ4y+WSsQrCMBCGv9ZCUdwUBEcfR+c+kVPewHdxdxEcBQW1FBTpkFoQ6iJxiSHaRCdB9L/l5+6/kP/uAHpMOKCeYoegDdBlUyveY06zwZghPvQpYe3tVyhmARdi/DhGVvnEVLMRLc1irOcWRpqanAx5g98QRI6WhI6dsAcVkrB82IW0BTmr2rJkgHr5heIzNgsqv+CMYEDutlkh9ARSt81/PpjvONqt4XvDMq6alTdjhHqxFxxRQAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0wOC0yNlQxNDowODo0MCswMDowMF+TI3oAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMDgtMjZUMTQ6MDg6NDArMDA6MDAuzpvGAAAAAElFTkSuQmCC"



* extension[QRCode][+]
  * extension[label].valueString = "Some label for this QR code"
  * extension[description].valueString = "Usage text for this QR code for the end user"
  * extension[image].valueAttachment.contentType = #image/png
  * extension[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAkCAQAAAAqEXJRAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQflCBoOCChye9NTAAAAsklEQVQ4y+WSsQrCMBCGv9ZCUdwUBEcfR+c+kVPewHdxdxEcBQW1FBTpkFoQ6iJxiSHaRCdB9L/l5+6/kP/uAHpMOKCeYoegDdBlUyveY06zwZghPvQpYe3tVyhmARdi/DhGVvnEVLMRLc1irOcWRpqanAx5g98QRI6WhI6dsAcVkrB82IW0BTmr2rJkgHr5heIzNgsqv+CMYEDutlkh9ARSt81/PpjvONqt4XvDMq6alTdjhHqxFxxRQAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0wOC0yNlQxNDowODo0MCswMDowMF+TI3oAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMDgtMjZUMTQ6MDg6NDArMDA6MDAuzpvGAAAAAElFTkSuQmCC"

* extension[Barcode][+]
  * extension[label].valueString = "Some label for this Barcode"
  * extension[description].valueString = "Usage text for this Barcode for the end user"
  * extension[image].valueAttachment.contentType = #image/png
  * extension[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAkCAQAAAAqEXJRAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQflCBoOCChye9NTAAAAsklEQVQ4y+WSsQrCMBCGv9ZCUdwUBEcfR+c+kVPewHdxdxEcBQW1FBTpkFoQ6iJxiSHaRCdB9L/l5+6/kP/uAHpMOKCeYoegDdBlUyveY06zwZghPvQpYe3tVyhmARdi/DhGVvnEVLMRLc1irOcWRpqanAx5g98QRI6WhI6dsAcVkrB82IW0BTmr2rJkgHr5heIzNgsqv+CMYEDutlkh9ARSt81/PpjvONqt4XvDMq6alTdjhHqxFxxRQAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0wOC0yNlQxNDowODo0MCswMDowMF+TI3oAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMDgtMjZUMTQ6MDg6NDArMDA6MDAuzpvGAAAAAElFTkSuQmCC"

* extension[SupportingImage][+]
  * extension[label].valueString = "Some label text"
  * extension[description].valueString = "Some text for the end user about the usage/meaning of this image"
  * extension[image].valueAttachment.contentType = #image/png
  * extension[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAkCAQAAAAqEXJRAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAAHdElNRQflCBoOCChye9NTAAAAsklEQVQ4y+WSsQrCMBCGv9ZCUdwUBEcfR+c+kVPewHdxdxEcBQW1FBTpkFoQ6iJxiSHaRCdB9L/l5+6/kP/uAHpMOKCeYoegDdBlUyveY06zwZghPvQpYe3tVyhmARdi/DhGVvnEVLMRLc1irOcWRpqanAx5g98QRI6WhI6dsAcVkrB82IW0BTmr2rJkgHr5heIzNgsqv+CMYEDutlkh9ARSt81/PpjvONqt4XvDMq6alTdjhHqxFxxRQAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMS0wOC0yNlQxNDowODo0MCswMDowMF+TI3oAAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjEtMDgtMjZUMTQ6MDg6NDArMDA6MDAuzpvGAAAAAElFTkSuQmCC"


* identifier[memberid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member Number"
* identifier[memberid].system = "https://www.acmeinsurance.com/glossary/memberid"
* identifier[memberid].value = "102345672-02"
* identifier[memberid].assigner.display = "Acme Insurance Co"
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIP "health insurance plan policy"
* type.text = "health insurance plan policy"
* subscriber = Reference(Patient/Example-Patient1) "John Doe"
* subscriberId = "102345672-01"
* beneficiary = Reference(Patient/Example-Patient2) "Jane Doe"
* dependent = "02"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#spouse "Spouse"
* relationship.text = "Spouse"
* period.start = "2021-01-01"
* payor = Reference(Organization/Example-PayerOrganization1) "Acme Insurance Co"


* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[=].value = "993355"
* class[=].name = "Stars Inc"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
* class[=].value = "11461128"
* class[=].name = "Acme Gold Plus"
* class[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCoverageClassCS#division
* class[=].value = "11"
* class[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCoverageClassCS#network
* class[=].value = "561490"
* class[=].name = "Acme Gold Plus South"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#rxbin
* class[=].value = "100045"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#rxpcn
* class[=].value = "1234000"

* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamOutDed "Family Out of Network Deductible"
* costToBeneficiary[=].valueMoney.value = 10000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamInDed "Family In Network Deductible"
* costToBeneficiary[=].valueMoney.value = 8000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamRxOutDed "Family Pharmacy Out of Network Deductible"
* costToBeneficiary[=].valueMoney.value = 2000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamRxInDed "Family Pharmacy In Network Deductible"
* costToBeneficiary[=].valueMoney.value = 1500
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamOutMax "Family Out of Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 12000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamInMax "Family In Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 10000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamRxOutMax "Family Pharmacy Out of Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 3000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#FamRxInMax "Family Pharmacy In Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 2000
* costToBeneficiary[=].valueMoney.currency = #USD

* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#gpvisit
* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"

* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#spvisit
* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"

* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#emergency
* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"

* costToBeneficiary[+].type = http://hl7.org/fhir/us/insurance-card/CodeSystem/C4DICExtendedCopayTypeCS#rx
* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "DED THEN $10/$40/$70/25%"