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

<p>For profiles defined in other IGs, the meaning of Must Support is established in the defining IG. Note that the Must Support requirements for this IG are modeled after the US Core implementation guide. The requirements for Health Plan API actors are modeled on those for US Core Responders, and the requirements for Consumer App actors is modeled on those for US Core Requestors. When querying and reading CARIN IG for Digital Insurance Card Profiles, *Must Support* on any profile data element SHALL be interpreted as follows:</p>
<ul>
<li>Health Plan API actors <strong>SHALL</strong>&nbsp;be capable of populating all data elements as part of the query results as specified by the CARIN for Digital Insurance Card CapabilityStatement.</li>
<li>Consumer App actors <strong>SHALL</strong> be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.</li>
<li>Consumer App actors <strong>SHALL</strong> be capable of displaying the data elements for human use.</li>
<li>In situations where information on a particular data element is not present and the reason for absence is unknown, Health Plan API actors SHALL NOT include the data elements in the resource instance returned as part of the query results.</li>
<li>In situations where information on a particular data element is missing and the Health Plan API actor knows the precise reason for the absence of data, Health Plan API actors SHALL send the reason for the missing information using either the nullFlavors or dataAbsentReason extensions.</li>
<li>When querying Health Plan APIs, Consumer App actors SHALL interpret missing data elements within resource instances as data not present in the Health Plan API actor's system. Consumer App actors SHALL be able to process resource instances with missing data without generating an error or causing the application to fail for the user. Consumer App actors SHOULD configure their applications to translate nullFalvors and dataAbsentReason extensions into a user-friendly message indicating the data has not been provided by the Health Plan API actor.</li>

<p>NOTE: Readers are advised to understand <a href="http://hl7.org/fhir/R4/terminologies.html">FHIR Terminology</a> requirements, <a href="http://hl7.org/fhir/R4/http.html">FHIR RESTful API</a> based on the HTTP protocol, along with <a href="http://hl7.org/fhir/R4/datatypes.html">FHIR Data Types</a>, <a href="http://hl7.org/fhir/R4/search.html">FHIR Search</a> and <a href="http://hl7.org/fhir/R4/resource.html">FHIR Resource</a> formats before implementing CARIN IG for Digital Insurance Card requirements.</p>
<a name="missing-data"></a>

### Missing Data

<p>If the source system does not have data for a *Must Support* data element with minimum cardinality = 0, the data element is omitted from the resource. If the source system does not have data for a required data element (in other words, where the minimum cardinality is &gt; 0), follow guidance defined in the core FHIR specification and summarized in the&nbsp;<a href="http://hl7.org/fhir/us/core/general-guidance.html#missing-data">US Core.</a></p>

<a name="conformance-to-us-core-profiles"></a>

### Conformance to US Core Profiles

<p>Any Health Plan API actor in this IG SHALL:</p>
  
* Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as *Must Support* as defined by that profiles StructureDefinition.
* Conform to the US Core Server Capability Statement expectations for that profile's type.

<p>Any Consumer App actor in this IG SHALL:</p>
* Be able to process and retain all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.
* Conform to the US Core Client Capability Statement expectations for that profiles type.

<a name="common-clinical-data-set"></a>

### U.S. Core Data for Interoperability and 2015 Edition Common Clinical Data Set

<p>The US Core Profiles were originally designed to meet the 2015 Edition certification criterion for Patient Selection 170.315(g)(7), and Application Access - Data Category Request 170.315(g)(8). They were created for each item in the&nbsp;<a href="https://www.healthit.gov/sites/default/files/ccds_reference_document_v1_1.pdf">2015 Edition Common Clinical Data Set (CCDS).&nbsp;</a>The 3.1.0 version of the US Core Profiles IG includes new requirements from the latest proposed ONC&nbsp;<a href="https://www.healthit.gov/topic/laws-regulation-and-policy/notice-proposed-rulemaking-improve-interoperability-health">U.S. Core Data for Interoperability(USCDI)&nbsp;</a>.</p>
