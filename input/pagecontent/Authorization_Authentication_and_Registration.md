
### FHIR Security and Privacy Guidance
<p>Security and privacy are critical aspects to consider with any interface where data, like that described in this Implementation Guide, is shared or otherwise made accessible. Implementers of this Implementation Guide should make sure their APIs are secure in accordance with guidance defined in the FHIR standard where applicable: </p>

* The FHIR Security specification provides guidance related to communication security, authentication, authorization/access control, audit, digital signatures, attachments, labels, narrative, and input validation. The FHIR security specification is available <a href="http://hl7.org/fhir/R4/security.html">here</a>
* The FHIR Security and Privacy Module describes access control and authorization considerations to protect a FHIR server, how to document permissions granted, and how to keep records of performed events. The FHIR Security and privacy module can be found <a href="http://hl7.org/fhir/R4/secpriv-module.html">here</a>
* The FHIR Implementer’s Safety Checklist helps implementers be sure that they have considered all the parts of FHIR that impact their system design regarding privacy, security, provenance, and safety. The FHIR safety check list is available <a href="http://hl7.org/fhir/R4/safety.html">here</a>

### Legal and Regulatory Requirements
<p>Implementers must ensure that APIs fully and successfully implement privacy and security features such as, but not limited to, those required to comply with HIPAA privacy and security requirements and other applicable law protecting the privacy and security of protected health information. Note that the HIPAA regulations apply only to HIPAA covered entities and their business associates. After information leaves the control of an entity covered under HIPAA, the HIPAA regulations do not apply. FTC consumer protection laws and other state and federal laws may apply.</p>

### SMART on FHIR Application Launch
<p>Client applications and Payers SHALL support the standalone launch sequence (launch/Patient) of the <a href="http://hl7.org/fhir/smart-app-launch/app-launch.html">SMART App Launch framework</a> for user authorization and client authentication. Payers SHALL publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework. If the app needs to authenticate the identity of the end-user, it MAY include two OpenID Connect scopes: openid and fhirUser. When these scopes are requested, and the request is granted, the app MAY receive an id token along with the access token.</p>

### Authorization and Authentication
<p>The use of this Implementation Guide is predicated on client applications being registered with a payer’s system of record in order to retrieve a client_id and client_secret for API access. The registration process is outside the scope of this IG. </p>

<p>This IG is also predicated on an insurance plan member (or their personal representative) consenting for their data to be shared with a consumer-facing application. This process follows the SMART on FHIR protocols linked above and typically involves the member (or their personal representative) agreeing to the terms of service and privacy policies of both the insurance plan and the consuming application before the data exchange takes place.</p>
