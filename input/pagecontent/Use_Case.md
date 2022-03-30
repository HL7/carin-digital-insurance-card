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
<td>Any individual covered by the benefits offered by an entity, such as an employer or insurance company</td>
</tr>
<tr>
<td>Beneficiary</td>
<td>Any individual that selects or is covered by benefits provided by government programs</td>
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
<h6>Scenario</h6>
<p>When an individual visits a healthcare provider, they may be asked to provide proof of insurance prior to receiving care. Instead of relying on their physical insurance card, the individual may pull out their phone and open a digital application to display their insurance card information. This will assist in cases of a lost or forgotten physical insurance card. The provider can capture the necessary information for proof of insurance based on the information displayed in the consumer-facing application. </p>
<h4>Consumer-Directed Exchange</h4>
<p>Consumer-directed exchange occurs when a consumer or an authorized caregiver invokes their HIPAA Individual Right of Access (45 CFR 164.524) and requests their digital health information from a HIPAA covered entity (CE) via an application or other third-party data steward.&nbsp;</p>
<p><img style="width: 85%; float: none; align: middle;" src="UseCaseDiagram.jpg"/></p>
<h4>Technical Workflow</h4>
<p>Precondition: Consumer App registers with a payer endpoint and receives a client ID and client secret<p>
<p><img style="width: 100%; float: none; align: middle;" src="CARINSequence.png" /> Actors:</p>
<ul>
<li>Consumer (aka Subscriber, Beneficiary, Patient, or Personal Representative)</li>
<li>Consumer App (aka digital third-party application selected by and primarily for the Consumer with a consumer-facing user interface)</li>
<li>Health Plan API (aka Payer, Covered Entity)</li>
<li>Health Plan&rsquo;s Identity and Access Authorization server</li>
</ul>
<p>Flow:</p>
<ol>
<li>Consumer App presents a list of potential Payers / Health Plans that can be accessed by the Consumer.</li>
<li>Consumer selects the Payer / Health Plan to initiate the login and consent flow.</li>
<li>Consumer App redirects to the Health Plan’s Identity and Access Authorization server.</li>
<li>Consumer enters the credentials and consents to data sharing.</li>
<li>Health Plan's Identity and Access Authorization server validates the credentials, generates and returns to the Consumer App an OIDC token with Consumer and authorized patient/beneficiary identities encoded.</li>
<li>Consumer App successfully links the user to the Payer / Health Plan and notifies the Consumer.</li>
<li>Consumer App requests the Coverage resource and associated resources as desired (i.e. Organization and/or Patient) along with the token and PatientID from step #5.</li>
<li>Health Plan’s Authorization server validates the access token.</li>
<li>Health Plan's FHIR API responds to the Consumer App with a bundle of the requested FHIR resources.</li>
<li>Consumer App receives the FHIR data and presents the information to the consumer.</li>
</ol>
