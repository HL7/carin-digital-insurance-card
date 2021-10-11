
### FHIR Security and Privacy Guidance
Security and privacy are critical aspects to consider with any interface where data, like that described in this Implementation Guide, is shared or otherwise made accessible. Implementers need to make sure their APIs are secure and should consider the guidance found in the <a href="http://hl7.org/fhir/secpriv-module.html">FHIR Security and Privacy Module</a>.

<a name="smart-on-fhir-application-launch"></a>
### SMART on FHIR Application Launch
<p>Client applications and Payers SHALL support the standalone launch sequence (launch/Patient) of the SMART App Launch framework for user authorization and client authentication. Payers SHALL publish their authorization and token endpoints for discovery in accordance with the SMART App Launch framework. If the app needs to authenticate the identity of the end-user, it MAY include two OpenID Connect scopes: openid and fhirUser. When these scopes are requested, and the request is granted, the app MAY receive an id token along with the access token.</p>
<p>&nbsp;</p>
<a name="authorization-and-authentication"></a>
### Authorization and Authentication
<p>The use of this Implementation Guide is predicated on client applications being registered with a payer’s system of record in order to retrieve a client_id and client_secret for API access. The registration process is outside the scope of this IG.<p>
