# CARIN Alliance
**_Enabling consumers and their authorized caregivers to access more of their digital health information with less friction._**

This implementation guide describes the CARIN for Digital Insurance Card Framework, providing a set of resources that payers can display to consumers via a FHIR API. The goal is to enable insurance members to retrieve the data elements found on their physical insurance cards via a FHIR interaction. See the Table of Contents for more information.

**Change Log**

* 11/12: Added disclaimer to Patient Profile description to indicate profile deviating from US Core is only approved for use in this IG; Supressed US Core deviation warning (As Approved by Cross-Projects Group)
* 11/12: Added clarification to background and use case pages that this IG is intended to be used to retrieve current proof of coverage (As recommended by FM)
* 11/12: Added a coverage.class code and slice for RxIIN (As recommended by FM)
* 11/12: Added a coverage.class slice for RxId (As recommended by FM)
* 11/12: Adjusted copay type value set to point to R4 version of HL7 terminology set instead of 0.1.0 (In response to FM feedback)
* 11/12: Added a column to the required data elements page to indicate where we are mapping each element to FHIR (As recommended by PIE)
* 11/12: Added text in boundaries section to indicate not all nuanced data elements made it into this first IG (As recommended by PIE)
* 11/15: Updated CapabilityStatement and other documentation to add search parameters for coverage.status and coverage.period (As recommended by FM)

**Outstanding Feedback from HL7 Workgroups**

* FM 11/9: Consider compiling requests for teams working on R5 to overcome challenges we've seen (like coverage.network only allowing one string)
