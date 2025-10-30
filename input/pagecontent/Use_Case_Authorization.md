### Background

The Digital Insurance Card can be shared by a consumer in flexible ways. Authorization use cases describe methods and opportunities for a consumer who has consented to share a Digital Insurance Card or for a provider to pull the Digital Insurance Card in an inpatient, outpatient, telehealth, at home, or other setting. See also [Distribution](Use_Case_Distribution.html).
#### Scenario 1: Sharing from a web browser

For browser-based applications, the consumer can share access using one of the following methods:

- Sharing the Digital Insurance Card in a SMART Health Link (shl:/)
- Starting a SMART on FHIR OAuth authorization flow

Alternatively, the provider’s office may display a QR code that the consumer can scan using their mobile device and direct them to a web browser. A provider’s office may also send a secure access link via email to the consumer to initiate access to the browser.

#### Scenario 2: Sharing from a mobile device application

A consumer uses a mobile application on their personal device to authorize access to their digital health insurance information. To initiate this process, the consumer may receive an entry point message such as an SMS, email, or other message containing a link or QR code either ahead of time or while at the provider’s office. This entry point directs them to a mobile application.

Once the application is launched, it provides a consumer experience where the consumer can share a scannable QR code or communicate application-to-application in an out of band manner. The application may require the consumer to provide a second factor authentication method, but note that the SMART Health Link version of the digital insurance card shall be passcode free.

This flow supports secure, user-initiated access from mobile platforms.


#### Scenario 3: In-Person via Kiosk or Provider-Managed Device

In a clinical or administrative setting, the consumer interacts with a camera-enabled device (e.g., tablet or kiosk). The application prompts the consumer to present a scannable QR code, distributing the Digital Insurance Card in a SMART Health Link. The consumer can present this QR code as:

- A printed physical record
- A SMART Health Card wallet on their mobile device

Notably, SMART Health Cards & Links can be distributed physically. For example, as a printed QR code issued on an existing physical card. In-person authorization allows the consumer to utilize this physical option.

The device scans the credential to initiate verification and access to the consumer’s insurance data.

#### Scenario 4: Sharing from a Triggered Event

The Digital Insurance Card can be shared or activated through a variety of triggering events that prompt a consumer to initiate the exchange of their health information. Triggering event scenarios describe the specific moments such as scheduling an appointment, entering a provider’s office, or scanning a QR code when a consumer is presented with an opportunity to share their data in a secure and consent-driven manner.

##### Appointment Scheduling

Trigger: Patient schedules an appointment.

Flow:
- Payer has coverage information available.
- Patient is prompted to share their health information during scheduling.
- Consent and data sharing can occur via SMART on FHIR OAuth, SHL, or other standards-compliant methods.
- EHR publishes a pre-visit summary.
- Notifications for appointment and encounter events (outpatient, telehealth, ED, inpatient) are sent via FHIR Subscriptions, where legally permitted.
