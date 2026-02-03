<a name="actors"></a>
### Actors

The following actors are part of the CARIN IG for Digital Insurance Card:

* CARIN IG for Digital Insurance Requestor or Consumer App: An application that initiates a data access request to retrieve patient data. This can be thought of as the client in a client-server interaction.
* CARIN IG for Digital Insurance Responder or Health Plan API: A product that responds to the data access request providing patient data. This can be thought of as the server in a client-server interaction.

<a name="conformance-verbs"></a>
### Conformance Verbs

<p>The conformance verbs - <strong>SHALL, SHOULD, MAY</strong> - used in this guide are defined in <a style="font-size: 14px;" href="http://hl7.org/fhir/R4/conformance-rules.html">FHIR Conformance Rules.</a></p>

<a name="must-support"></a>
### Must Support

<p>For profiles defined in other IGs, the meaning of Must Support is established in the defining IG. Note that the Must Support requirements for this IG are modeled after the US Core implementation guide. The requirements for Health Plan API actors are modeled on those for US Core Responders, and the requirements for Consumer App actors is modeled on those for US Core Requestors. §c4dic-001 When querying and reading CARIN IG for Digital Insurance Card Profiles, Must Support on any profile data element SHALL be interpreted as follows: §</p>

<li>§c4dic-002 Health Plan API actors <strong>SHALL</strong>&nbsp;be capable of populating all data elements as part of the query results as specified by the CARIN for Digital Insurance Card CapabilityStatement. §</li>
<li>§c4dic-003 Consumer App actors <strong>SHALL</strong> be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. §</li>
<li>§c4dic-004 Consumer App actors <strong>SHALL</strong> be capable of displaying the data elements for human use. §</li>
<li>§c4dic-005 In situations where information on a particular data element is not present and the reason for absence is unknown, Health Plan API actors SHALL NOT include the data elements in the resource instance returned as part of the query results. §</li>
<li>§c4dic-006 In situations where information on a particular data element is missing and the Health Plan API actor knows the precise reason for the absence of data, Health Plan API actors SHALL send the reason for the missing information using either the nullFlavors or dataAbsentReason extensions. §</li>
<li>§c4dic-007 When querying Health Plan APIs, Consumer App actors SHALL interpret missing data elements within resource instances as data not present in the Health Plan API actor's system. § §c4dic-008 Consumer App actors SHALL be able to process resource instances with missing data without generating an error or causing the application to fail for the user. § §c4dic-009 Consumer App actors SHOULD configure their applications to translate nullFalvors and dataAbsentReason extensions into a user-friendly message indicating the data has not been provided by the Health Plan API actor. §</li>

<p>NOTE: Readers are advised to understand <a href="http://hl7.org/fhir/R4/terminologies.html">FHIR Terminology</a> requirements, <a href="http://hl7.org/fhir/R4/http.html">FHIR RESTful API</a> based on the HTTP protocol, along with <a href="http://hl7.org/fhir/R4/datatypes.html">FHIR Data Types</a>, <a href="http://hl7.org/fhir/R4/search.html">FHIR Search</a> and <a href="http://hl7.org/fhir/R4/resource.html">FHIR Resource</a> formats before implementing CARIN IG for Digital Insurance Card requirements.</p>
  
<a name="missing-data"></a>
  
### Missing Data

<p>If the source system does not have data for a Must Support data element with minimum cardinality = 0, the data element is omitted from the resource. If the source system does not have data for a required data element (in other words, where the minimum cardinality is &gt; 0), follow guidance defined in the core FHIR specification and summarized in the&nbsp;<a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core.</a></p>

<a name="conformance-to-us-core-profiles"></a>

### Conformance to US Core Profiles

<p>§c4dic-010 Any Health Plan API actor in this IG SHALL: §</p>

* Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as *Must Support* as defined by that profiles StructureDefinition.
* Conform to the US Core Server Capability Statement expectations for that profile's type.

<p>§c4dic-011 Any Consumer App actor in this IG SHALL: §</p>
* Be able to process and retain all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.
* Conform to the US Core Client Capability Statement expectations for that profiles type.

<a name="common-clinical-data-set"></a>

### U.S. Core Data for Interoperability and 2015 Edition Common Clinical Data Set

<p>The US Core Profiles were originally designed to meet the 2015 Edition certification criterion for Patient Selection 170.315(g)(7), and Application Access - Data Category Request 170.315(g)(8). They were created for each item in the&nbsp;<a href="https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf">2015 Edition Common Clinical Data Set (CCDS).&nbsp;</a>The 3.1.0 version of the US Core Profiles IG includes new requirements from the latest proposed ONC&nbsp;<a href="https://www.healthit.gov/topic/laws-regulation-and-policy/notice-proposed-rulemaking-improve-interoperability-health">U.S. Core Data for Interoperability(USCDI)&nbsp;</a>.</p>

### Conformance to SMART Health Cards and Links

The Digital Insurance Card can also be made available to the member in a verifiable, tamper-proof package that the subscriber can store, manage, and share with healthcare providers as they see fit. In this model, the payer provides the member with a QR code or URL representing their digital insurance card, likely using the same modalities used to share digital cards today (e.g. payer mobile application, website, email). The member is able to present the QR code to be scanned during in-person visits or provide the QR code or URL to mobile or web forms during online registration or check-in flows. The provider then uses the QR code or URL to retrieve the Digital Insurance Card and verify its authenticity.

[SMART Healt hCards]({{site.data.fhir.ver.shcl}}) are a FHIR-based verifiable credential technical framework that has been made available to hundreds of millions of people around the world for proof of vaccination and infectious disease laboratory testing results. 

[SMART Health Links]({{site.data.fhir.ver.shcl}}) are a derivation of SMART Health Cards that enable larger and dynamic data payloads as well as other methods of interaction.

#### Typical Flow:

1. Payer shares the insurance card with a member (e.g., as a QR code and text-based link, via the payer website, mobile application, secure messaging, etc.).
2. Member downloads/retrieves the QR code and/or link.
3. Member stores the QR code and link as they see fit, with options ranging from printing on paper to storing in health apps or wallets capable of interpreting SMART Health Links.
4. Member presents the SMART Health Link to healthcare provider.

The Digital Insurance Card can be shared by a consumer in flexible ways. See [Authorization](/Use_Case_Authorization.html) and [Distribution](/Use_Case_Distribution.html) to learn more.

### A Payer, to provide members with SMART Health Digital Insurance Cards:

- §c4dic-012 **SHALL** generate a complete and appropriate FHIR bundle using as described in this specification, including Coverage, Organization, and Patient information, as well as any additional information defined by this IG's extensions. §
- §c4dic-013 **SHALL** follow the [SMART Health Cards specification]({{site.data.fhir.ver.shcl}}) to create a SMART Health Card containing the FHIR bundle. §
  - §c4dic-014 **SHALL** create the SMART Health Card as a JWS string, as defined by [{{site.data.fhir.ver.shcl}}/cards-specification.html]({{site.data.fhir.ver.shcl}}/cards-specification.html). §
  - §c4dic-015 **SHOULD** implement revocation as defined by [{{site.data.fhir.ver.shcl}}/cards-specification.html#revocation]({{site.data.fhir.ver.shcl}}/cards-specification.html#revocation). §

- §c4dic-016 **SHALL** follow the [SMART Health Links specification]({{site.data.fhir.ver.shcl}}) to create a SMART Health Link referencing the SMART Health Card. §
  - §c4dic-017 **SHALL** include the SMART Health Card as `application/smart-health-card`, a JSON file with a `.verifiableCredential array` containing the SMART Health Card JWS string, as specified by [{{site.data.fhir.ver.shcl}}/cards-specification.html#via-file-download]({{site.data.fhir.ver.shcl}}/cards-specification.html#via-file-download). §
  - §c4dic-018 **SHALL NOT** require the user to set a passcode, and SHALL NOT enforce a passcode by default. §

- §c4dic-019 **SHALL** share the Digital Insurance Card with the member as other personal information would be shared. §
 - §c4dic-020 **SHALL** provide the member the SMART Health Link in text URI format as well as QR format, as described here [{{site.data.fhir.ver.shcl}}/cards-specification.html#presenting-health-cards-to-a-verifier]({{site.data.fhir.ver.shcl}}/cards-specification.html#presenting-health-cards-to-a-verifier). §
 - §c4dic-021 **SHALL** in close proximity to the link and QR code, specify to the member: §
   - Data referenced in the link.
   - Expiration date.
   - Whether or not the information is updated over time.
   - Caution about sharing the link with parties they trust.

### A Consumer App, in helping members manage and share their Digital Insurance Card:
- Can process the SMART Health Link as described here [{{site.data.fhir.ver.shcl}}/links-specification.html#smart-health-links-receiving-application-processes-a-smart-health-link]({{site.data.fhir.ver.shcl}}/links-specification.html#smart-health-links-receiving-application-processes-a-smart-health-link).
- §c4dic-022 **SHALL** display the included data elements for the card. §
  - §c4dic-023 If the `flag: L` is present, indicating the contents are for long term use, the application SHALL update the display of the contents or display a message noting that the contents may be stale. §

- §c4dic-024 **SHALL** display the expiration date, `exp` (if present)  for the card. §
- §c4dic-025 **SHALL** inform the user if the card has been revoked, as specified by [{{site.data.fhir.ver.shcl}}/cards-specification.html#revocation]({{site.data.fhir.ver.shcl}}/cards-specification.html#revocation). §
- §c4dic-026 **SHALL** update the display of data from the SMART Health Link. §
- §c4dic-027 **SHALL** provide the member with the ability to share the SMART Health Link as they see fit. §
  - §c4dic-028 **SHALL** provide the member the SMART Health Link in text URI format as well as QR code, as described here [{{site.data.fhir.ver.shcl}}/links-specification.html]({{site.data.fhir.ver.shcl}}/links-specification.html). §
  - §c4dic-029 **SHALL** in close proximity to the link and QR code, caution the member about sharing the link with parties they trust. §

### Providers, receiving the Digital Insurance Card:

Can process the SMART Health Link as described here [{{site.data.fhir.ver.shcl}}/links-specification.html]({{site.data.fhir.ver.shcl}}/links-specification.html).

### Color Palette Extension

§c4dic-030 When rendering foreground and background colors, the implementer SHOULD not use the same foreground and background colors and instead should algorithmically determine a high color contrast. §
