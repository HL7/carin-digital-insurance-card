
### Background

The Digital Insurance Card must be delivered to consumers through secure, accessible channels. Distribution use cases describe the methods by which health plans provide consumers with their Digital Insurance Card. While Authorization describes how consumers share their card with providers, Distribution describes how consumers obtain their card from health plans. See also [Authorization](Use_Case_Authorization.html).

#### Scenario 1: Distribution via Member Portal

A health plan provides Digital Insurance Cards through their web-based member portal. After the consumer authenticates using existing credentials (with optional multi-factor authentication), the portal provides options to:

- Download the Digital Insurance Card as a SMART Health Link (shl:/)
- Download a file containing the insurance card data
- View and print a QR code representing their Digital Insurance Card

For health plans that have implemented the Patient Access API, this represents a minimal technical lift, as the underlying FHIR resources are already available in the required format.

#### Scenario 2: Distribution via Mobile Application

A consumer accesses their Digital Insurance Card through the health plan's mobile application. After authenticating (which may include biometric authentication), the application enables the consumer to:

- Add the Digital Insurance Card directly to a compatible digital wallet
- Generate a scannable QR code representing their SMART Health Link
- Share the card using native mobile sharing capabilities

This method provides convenience for consumers who primarily interact with their health plan through mobile devices.

#### Scenario 3: Physical Distribution

Health plans distribute Digital Insurance Cards in physical format using established card distribution processes. The Digital Insurance Card is encoded as a QR code and printed on a physical insurance card alongside traditional card information.

Physical distribution follows existing security practices:

- Mailing cards to the consumer's address of record
- Providing cards for pickup at plan offices with proper identification
- Issuing cards during in-person enrollment events

The printed QR code can be scanned by providers or by consumers to import the card into a digital wallet.
