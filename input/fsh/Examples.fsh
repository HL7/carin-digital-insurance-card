Instance: Example-Coverage-FSH
InstanceOf: C4DICCoverage
Description: "Coverage Example 1 in FSH"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-04-06T10:49:02.473+00:00"
* meta.profile[supportedProfile] = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-Coverage"

* extension[PlanBeneficiaries][+].extension[memberId].valueString = "102345672-01"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.family = "Doe"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.given = "John"

* extension[PlanBeneficiaries][+].extension[memberId].valueString = "102345672-02"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.family = "Doe"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.given = "jane"

* extension[PlanBeneficiaries][+].extension[memberId].valueString = "102345672-03"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.family = "Doe"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.given = "Jimmy"

* extension[PlanBeneficiaries][+].extension[memberId].valueString = "102345672-04"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.family = "Doe"
* extension[PlanBeneficiaries][=].extension[name].valueHumanName.given = "Ginny"


* extension[AdditionalCardInformation][+].valueAnnotation.text = "If you use a TTY, call 711.\nYou may be asked to present this card when you receive care or fill a perscription. This card does not gaurentee coverage. Intentionally misusing this card may be considered fraud or a violation of the law.\nWe encourage you to use a primary care physician as a valuable resource and personal health advocate."

// Reference to Summary of Benefits and Coverage (SBC) document
* extension[AdditionalCardInformation][+].valueReference = Reference(SBCExampleHMO)
* extension[AdditionalCardInformation][=].valueReference.display = "Summary of Benefits and Coverage - Acme Gold Plus HMO"


* extension[CardIssueDate].valueDate = "2020-12-15"

* extension[ColorPalette].extension[BackgroundColor].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/IECColourManagement##00bfff
* extension[ColorPalette].extension[ForegroundColor].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/IECColourManagement##000000
* extension[ColorPalette].extension[HighlightColor].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/IECColourManagement##ceebf5

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
  * extension[label].valueString = "Front of insurance card"
  * extension[description].valueString = "Image of the front of the member's physical insurance card showing plan name, member ID, and group number"
  * extension[image].valueAttachment.contentType = #image/jpeg
  * extension[image].valueAttachment.data = "/9j/4AAQSkZJRgABAQEAYABgAAD/4QBoRXhpZgAATU0AKgAAAAgABAEaAAUAAAABAAAAPgEbAAUAAAABAAAARgEoAAMAAAABAAIAAAExAAIAAAARAAAATgAAAAAAAABgAAAAAQAAAGAAAAABcGFpbnQubmV0IDQuMy4xMgAA/9sAQwAkGRsgGxckIB4gKSckKzZbOzYyMjZvT1RCW4R0ioiBdH99kaPRsZGaxZ19f7b3uMXY3urs6o2v///+4//R5erh/9sAQwEnKSk2MDZrOztr4ZZ/luHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh/8AAEQgAGAA0AwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A3KKp6kxWKLBcAyqCEJBI9OKhnIVbdVW4CNIdy7m3H5T75oA0qKzI5JHt4k81ws0xUMT8wUZ4J9eKmKm2u40jdykqNlWYtgjHIzQBdorGjnlTTxG8jFmVJEcnkgkZGfb+Rq1PAv2+Fd8oWQOzASsORj396AL9FAGAB6UUARzQrNs3EjY4cY9RRJCskkbknMZJGPpj+tFFAEbWcbBxlhufzBg/db1FLHahHMjyPI5G3c5HA9scUUUAMewhkt4oWLYixtOeeKmaFWmjlJO5AQPTnH+FFFAElFFFAH//2Q=="

* extension[SupportingImage][+]
  * extension[label].valueString = "Back of insurance card"
  * extension[description].valueString = "Image of the back of the member's physical insurance card showing claims address, customer service numbers, and pharmacy information"
  * extension[image].valueAttachment.contentType = #image/jpeg
  * extension[image].valueAttachment.data = "/9j/4AAQSkZJRgABAQEAYABgAAD/4QBoRXhpZgAATU0AKgAAAAgABAEaAAUAAAABAAAAPgEbAAUAAAABAAAARgEoAAMAAAABAAIAAAExAAIAAAARAAAATgAAAAAAAABgAAAAAQAAAGAAAAABcGFpbnQubmV0IDQuMy4xMgAA/9sAQwAkGRsgGxckIB4gKSckKzZbOzYyMjZvT1RCW4R0ioiBdH99kaPRsZGaxZ19f7b3uMXY3urs6o2v///+4//R5erh/9sAQwEnKSk2MDZrOztr4ZZ/luHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh/8AAEQgAGAA0AwEiAAIRAQMRAf/EAB8AAAEFAQEBAQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAABAgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGxwQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8AxoYXnYrGBkAsckAAfjRNDJAwEgA3DIIIII9iKtaWC00wCbyYW+X19qsNEzSWyhfJdY2/dYDEAc8A9zk9aAMqnpCzwySAjEeMjvzWm8Y86M+X++NuSoZQCXyR09cUlrwJxfLtyEzkY78ZFAGVRUt0JBcyecAJM846fh7VFQAUUUUAFFFFABRRRQAUUUUAFFFFAH//2Q=="


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
* class[+].type = C4DICExtendedCoverageClassCS#division
* class[=].value = "11"
* class[+].type = C4DICExtendedCoverageClassCS#network
* class[=].value = "561490"
* class[=].name = "Acme Gold Plus South"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#rxbin
* class[=].value = "100045"
* class[+].type = http://terminology.hl7.org/CodeSystem/coverage-class#rxpcn
* class[=].value = "1234000"

* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamOutDed "Family Out of Network Deductible"
* costToBeneficiary[=].valueMoney.value = 10000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamInDed "Family In Network Deductible"
* costToBeneficiary[=].valueMoney.value = 8000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamRxOutDed "Family Pharmacy Out of Network Deductible"
* costToBeneficiary[=].valueMoney.value = 2000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamRxInDed "Family Pharmacy In Network Deductible"
* costToBeneficiary[=].valueMoney.value = 1500
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamOutMax "Family Out of Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 12000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamInMax "Family In Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 10000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamRxOutMax "Family Pharmacy Out of Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 3000
* costToBeneficiary[=].valueMoney.currency = #USD
* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#FamRxInMax "Family Pharmacy In Network Out of Pocket Maximum"
* costToBeneficiary[=].valueMoney.value = 2000
* costToBeneficiary[=].valueMoney.currency = #USD

//* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#gpvisit
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][=].url = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-BeneficiaryCostString-extension"
//
//* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#spvisit
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][=].url = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-BeneficiaryCostString-extension"
//
//* costToBeneficiary[+].type = http://terminology.hl7.org/CodeSystem/coverage-copay-type#emergency
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "N/A"
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][=].url = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-BeneficiaryCostString-extension"

//* costToBeneficiary[+].type = C4DICExtendedCopayTypeCS#rx
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][+].valueString = "DED THEN $10/$40/$70/25%"
//* costToBeneficiary[=].valueMoney.extension[BeneficiaryCostString][=].url = "http://hl7.org/fhir/us/insurance-card/StructureDefinition/C4DIC-BeneficiaryCostString-extension"
