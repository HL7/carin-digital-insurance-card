<a name="terms-and-concepts"></a>
### Terms and Concepts
<table class="codes" border="1">
<thead>
<tr>
<td><strong>Term</strong></td>
<td><strong>Definition</strong></td>
</tr>
</thead>
<tbody>
<tr>
<td>Subscriber</td>
<td>An individual or entity that selects benefits offered by an entity, such as an employer, government, or insurance company</td>
</tr>
<tr>
<td>Dependent</td>
<td>An individual, other than the subscriber, who has insurance coverage under the benefits selected by a subscriber</td>
</tr>
<tr>
<td>Member</td>
<td>Any individual covered by the benefits offered by an entity, such as an employer or insurance company. In the US, some government programs refer to Members as Beneficiaries.</td>
</tr>
<tr>
<td>Patient</td>
<td>
<p>An individual who has received, is receiving or intends to receive health care services. (Health care services as defined by federal and state regulations.)</p>
</td>
</tr>
<tr>
<td>Personal Representative</td>
<td>Per the HIPAA privacy regulations at 45 CFR 164.502(g), a <a href="https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/personal-representatives/index.html">personal-representative</a> is someone authorized under state or other applicable law to act on behalf of the individual in making health care related decisions (such as a parent, guardian, or person with a medical power of attorney)</td>
</tr>
<tr>
<td>Payer</td>
<td>
<p>Public or private party which offers and/or administers health insurance plan(s) or coverage and/or pays claims directly or indirectly. Examples include:</p>
<ul>
<li>Insurance Company</li>
<li>Health Maintenance Organization</li>
<li>Medicare</li>
<li>Third-party Administrator</li>
<li>Repricer</li>
</ul>
</td>
</tr>
</tbody>
</table>

<a name="use-cases"></a>
### Use Case - Consumer Access to their Insurance Card Data
<h4>Background</h4>
<p>This implementation guide is designed to standardize the way that health insurance companies provide the data elements found on the physical insurance card in a FHIR-based API exchange. The primary use case is to support insurance members (or their personal representatives) who wish to retrieve their current proof of insurance coverage digitally via a consumer-facing application. This will provide an alternative to using the physical insurance card as proof of insurance. </p>
<h5>Scenario</h5>
<p>When an individual visits a healthcare provider, they may be asked to provide proof of insurance prior to receiving care. Instead of relying on their physical insurance card, the individual may pull out their phone and open a digital application to display their insurance card information. This will assist in cases of a lost or forgotten physical insurance card. The provider can capture the necessary information for proof of insurance based on the information displayed in the consumer-facing application. </p>
<h4>Consumer-Directed Exchange</h4>
<p>Consumer-directed exchange occurs when a consumer or an authorized caregiver invokes their HIPAA Individual Right of Access (45 CFR 164.524) and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.&nbsp;</p>
<p><img style="width: 85%; float: none; align: middle;" src="UseCaseDiagram.jpg"/></p>
<h4>Technical Workflow</h4>
<p>Precondition: Consumer App registers with a payer endpoint and receives a client ID and client secret<p>
<p><img style="width: 100%; float: none; align: middle;" src="CARINSequence.png" /> <b>Actors:</b></p>
<ul>
<li>Consumer (aka Subscriber, Member, Dependent, Patient, or Personal Representative)</li>
<li>Consumer App (aka digital third-party application selected by and primarily for the Consumer with a consumer-facing user interface)</li>
<li>Health Plan API (aka Payer, Covered Entity)</li>
<li>Health Plan&rsquo;s Identity and Access Authorization server</li>
</ul>
<p><b>Flow:</b></p>
<ol>
<li>Consumer App presents a list of potential Payers / Health Plans that can be accessed by the Consumer.</li>
<li>Consumer selects the Payer / Health Plan to initiate the login and consent flow.</li>
<li>Consumer App redirects to the Health Plan’s Identity and Access Authorization server. Please note: The Health Plan may leverage a Third Party authentication service or technology for user login.</li>
<li>Consumer enters the credentials and consents to data sharing.</li>
<li>Health Plan's Identity and Access Authorization server validates the credentials, generates and returns to the Consumer App an OIDC token with authorized Consumer identities encoded.</li>
<li>Consumer App successfully links the user to the Payer / Health Plan and notifies the Consumer.</li>
<li>Consumer App requests the Coverage resource and associated resources as desired (i.e. Organization and/or Patient) along with the token and PatientID from step #5.</li>
<li>Health Plan’s Authorization server validates the access token.</li>
<li>Health Plan's FHIR API responds to the Consumer App with a bundle of the requested FHIR resources.</li>
<li>Consumer App receives the FHIR data and presents the information to the consumer.</li>
</ol>

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
