<a name="use-cases-access-and-exchange"></a>
<h3>Use Case - Consumer Access and Exchange</h3>

<p>The Digital Insurance Card can also be made available to the member in a verifiable, tamper-proof package that the subscriber can store, manage, and share with healthcare providers as they see fit. In this model, the payer provides the member with a QR code or URL representing their digital insurance card, likely using the same modalities used to share digital cards today (e.g. payer mobile application, website, email). The member is able to present the QR code to be scanned during in-person visits or provide the QR code or URL to mobile or web forms during online registration or check-in flows. The provider then uses the QR code or URL to retrieve the Digital Insurance Card and verify its authenticity.</p>

<p>[SMART Health Cards](https://spec.smarthealth.cards/) are a FHIR-based verifiable credential technical framework that has been made available to hundreds of millions of people around the world for proof of vaccination and infectious disease laboratory testing results.</p>

<p>[SMART Health Links](https://docs.smarthealthit.org/smart-health-links/design) are a derivation of SMART Health Cards that enable larger and dynamic data payloads as well as other methods of interaction.</p>

<p><b>Flow:</b></p>
<ol>
<li>Payer shares the insurance card with a member (e.g., as a QR code and text-based link, via the payer website, mobile application, secure messaging, etc.).</li>
<li>Member downloads/retrieves the QR code and/or link.</li>
<li>Member stores the QR code and link as they see fit, with options ranging from printing on paper to storing in health apps or wallets capable of interpreting SMART Health Links.</li>
<li>Member presents the SMART Health Link to healthcare provider.</li>
</ol>
<h4><b>In-person:</b></h4>
<ol>
<li>Member presents the QR code on their device or paper.</li>
<li>Check-in staff or kiosk scan the QR code.</li>
</ol>

<h4><b>Online:</b></h4>
<ol>
<li>Member provides the insurance card to the online check-in app or web flow by pasting the link into a field, uploading a image of the QR, or in the future via API-based methods tailored to wallet and health apps.</li>
<li>Healthcare provider processes the SMART Health Link and retrieves the insurance card information from the Payor (or designated data hosting service), verifying cryptographic signatures if desired.</li>
<li>Healthcare provider, EHR vendor, or other platform vendor incorporates insurance information into existing workflows.</li>
</ol>
