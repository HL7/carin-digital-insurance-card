
{% include style_insert_table_blue.html %}
### Changes and Updates for version 2.0.0 (from version 1.1.0)

| JIRA Ticket                                          | Change                                                                           |
|------------------------------------------------------|----------------------------------------------------------------------------------|
| **Block-Vote-1**                                      |                        |
| [FHIR-55562](https://jira.hl7.org/browse/FHIR-55562) | Add experimental Summary of Benefit Profile |
| [FHIR-53643](https://jira.hl7.org/browse/FHIR-53643) | Add additional narrative that allows integration with existing Coverage resources | 
| [FHIR-53494](https://jira.hl7.org/browse/FHIR-53494) | Update Smart Health Card/Smart Health Links in IG | 
| [FHIR-53443](https://jira.hl7.org/browse/FHIR-53443) | Add Guidance on RxIIN in Coverage Class ValueSet | 
| [FHIR-53442](https://jira.hl7.org/browse/FHIR-53442) | Add Use Case for Support for Multiple Digital insurance Cards. | 
| [FHIR-53441](https://jira.hl7.org/browse/FHIR-53441) | Add Best Practices page under the Guidance Menu | 
| [FHIR-53289](https://jira.hl7.org/browse/FHIR-53289) | Restructure Menu Bar and Add Use Cases | 
| [FHIR-53096](https://jira.hl7.org/browse/FHIR-53096) | Restructure Use Case Page to connect multiple use case pages | 
| [FHIR-53035](https://jira.hl7.org/browse/FHIR-53034) | Switch to support US Core 6.1.0 and US Core 7.0.0 for Resources | 
| [FHIR-53030](https://jira.hl7.org/browse/FHIR-53030)  | Update Change History for STU2 |
| [FHIR-53028](https://jira.hl7.org/browse/FHIR-53028). | Add Support sub-mneu to Menu Bar | 
| [FHIR-43292](https://jira.hl7.org/browse/FHIR-43292). | Coverage profile should be based on US Core Coverage | 
| [FHIR-34681](https://jira.hl7.org/browse/FHIR-34681). | Sending primary and secondary networks | 


### Changes and Updates for version 1.1.0 (from version 1.0.0)

| JIRA Ticket                                         | Change                                                                           |
|-----------------------------------------------------|----------------------------------------------------------------------------------|
| Publisher 1.6.2 requires auto-oid-root value        | hl7.fhir.us.insurance-card = 2.16.840.1.113883.4.642.40.9                                                                     |
| Publication Prep                                    | Change Version to 1.1.0                                                          | 
| [FHIR-43141](https://jira.hl7.org/browse/FHIR-43141) | Please tighten your extension contexts                                           | 
| [FHIR-43109](https://jira.hl7.org/browse/FHIR-43109) | Extensions should have more specific context                                     | 
| [FHIR-42840](https://jira.hl7.org/browse/FHIR-42840) | Copay type lists Rx but Tiers are needed                                         | 
| [FHIR-42779](https://jira.hl7.org/browse/FHIR-42779) | Background color is specified, therefore the foreground should also be specified | 

#### Home Page
[https://build.fhir.org/ig/HL7/carin-digital-insurance-card/index.html](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/index.html)
Update the intro to reflect the SHL use case.

1.1 Introduction
This implementation guide describes the CARIN for Digital Insurance Card (C4DIC) Framework, providing a set of resources that payers can display to consumers via a FHIR API or SMART Health Link. This implementation guide focuses on standardizing how data elements from the physical insurance card can be transmitted in a FHIR-based exchange, leveraging the Coverage resource as well as Patient and Organization resources. See the Table of Contents for more information.

#### Background
[https://build.fhir.org/ig/HL7/carin-digital-insurance-card/Background.html](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/Background.html)
Add a reference to updating the IG to include SHLs at the end of Introduction 2.1:
While STU 1.0.0 focused on a FHIR API -based exchange of digital insurance cards, in 2023, the need was identified to create portable, verifiable versions of digital insurance cards. In STU 1.1.0, the IG was expanded to include support for SMART Health Links.

#### Use Cases
[https://build.fhir.org/ig/HL7/carin-digital-insurance-card/Use_Case.html#use-cases](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/Use_Case.html#use-cases)
Add a new sub-use-case for SHLs as a means for consumer access and exchange:
The Digital Insurance Card can also be made available to the member in a verifiable, tamper-proof package that the subscriber can store, manage, and share with healthcare providers as they see fit. In this model, the payer provides the member with a QR code or URL representing their digital insurance card, likely using the same modalities used to share digital cards today (e.g. payer mobile application, website, email). The member is able to present the QR code to be scanned during in-person visits or provide the QR code or URL to mobile or web forms during online registration or check-in flows. The provider then uses the QR code or URL to retrieve the Digital Insurance Card and verify its authenticity.
SMART Health Cards are a FHIR-based verifiable credential technical framework that has been made available to hundreds of millions of people around the world for proof of vaccination and infectious disease laboratory testing results.
SMART Health Links are a derivation of SMART Health Cards that enable larger and dynamic data payloads as well as other methods of interaction.


_Flow:_
Payer shares the insurance card with a member (e.g., as a QR code and text-based link, via the payer website, mobile application, secure messaging, etc)
Member downloads/retrieves the QR code and/or link.
Member stores the QR code and link as they see fit, with options ranging from printing on paper to storing in health apps or wallets capable of interpreting SMART Health Links.
Member presents the SMART Health Link to healthcare provider
In-person:
Member presents the QR code on their device or paper
Check-in staff or kiosk scan the QR code
Online:
Member provides the insurance card to the online check-in app or web flow by pasting the link into a field, uploading a image of the QR, or in the future via API-based methods tailored to wallet and health apps
Healthcare provider processes the SMART Health Link and retrieves the insurance card information from the Payor (or designated data hosting service), verifying cryptographic signatures if desired
Healthcare provider, EHR vendor, or other platform vendor incorporates insurance information into existing workflows

#### Guidance

[https://build.fhir.org/ig/HL7/carin-digital-insurance-card/General_Guidance.html](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/General_Guidance.html)

_Add a section for SHL-based implementation:_
**A Payer, to provide members with SMART Health Digital Insurance Cards:**

**SHALL** generate a complete and appropriate FHIR bundle using as described in this specification, including Coverage, Organization, and Patient information, as well as any additional information defined by this IG’s extensions.
**SHALL** follow the SMART Health Cards specification to create a SMART Health Card containing the FHIR bundle.
**SHALL** create the SMART Health Card as a JWS string, as defined by https://spec.smarthealth.cards/#health-cards-are-encoded-as-compact-serialization-json-web-signatures-jws.
**SHOULD** implement revocation as defined by https://spec.smarthealth.cards/#revocation.

**SHALL** follow the SMART Health Links specification to create a SMART Health Link referencing the SMART Health Card.
**SHALL** include the SMART Health Card as `application/smart-health-card`, a JSON file with a `.verifiableCredential array` containing the SMART Health Card JWS string, as specified by https://spec.smarthealth.cards#via-file-download.
**SHALL NOT** require the user to set a passcode, and SHALL NOT enforce a passcode by default.

**SHALL** share the Digital Insurance Card with the member as other personal information would be shared.
**SHALL** provide the member the SMART Health Link in text URI format as well as   QR format, as described here .https://docs.smarthealthit.org/smart-health-links/spec#sharing-user-transmits-a-shlink.
**SHALL** in close proximity to the link and QR code, specify to the member
Data referenced in the link.
Expiration date.
Whether or not the information is updated over time.
Caution about sharing the link with parties they trust.



**A Consumer App, in helping members manage and share their Digital Insurance Card:**
Can process the SMART Health Link as described here [https://docs.smarthealthit.org/smart-health-links/spec#shl-receiving-application-processes-a-shlink](https://docs.smarthealthit.org/smart-health-links/spec#shl-receiving-application-processes-a-shlink).
**SHALL** display the included data elements for the card.
If the `flag: L` is present, indicating the contents are for long term use, the application SHALL update the display of the contents or display a message noting that the contents may be stale.

**SHALL** display the expiration date, `exp` (if present)  for the card.
**SHALL** inform the user if the card has been revoked, as specified by [https://spec.smarthealth.cards/#revocation](https://spec.smarthealth.cards/#revocation).
**SHALL** update the display of data from the SMART Health Link
**SHALL** provide the member with the ability to share the SMART Health Link as they see fit.
**SHALL** provide the member the SMART Health Link in text URI format as well as QR code, as described here [https://docs.smarthealthit.org/smart-health-links/spec#sharing-user-transmits-a-shlink](https://docs.smarthealthit.org/smart-health-links/spec#sharing-user-transmits-a-shlink).
**SHALL** in close proximity to the link and QR code, caution the member about sharing the link with parties they trust.


**Providers, receiving the Digital Insurance Card:**
Can process the SMART Health Link as described here [https://docs.smarthealthit.org/smart-health-links/spec#shl-receiving-application-processes-a-shlink](https://docs.smarthealthit.org/smart-health-links/spec#shl-receiving-application-processes-a-shlink).
