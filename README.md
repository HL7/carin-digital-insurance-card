# CARIN Alliance
**_Enabling consumers and their authorized caregivers to access more of their digital health information with less friction._**

This implementation guide describes the CARIN for Digital Insurance Card Framework, providing a set of resources that payers can display to consumers via a FHIR API. The goal is to enable insurance members to retrieve the data elements found on their physical insurance cards via a FHIR interaction. See the Table of Contents for more information.

**To Do List**

* Pending decision, supress US Core deviation warning
* Suppress hint around URN for RBG color scheme

**Feedback from HL7 Workgroups**

* FM 11/9: Opportunity to clarify current coverage (possible confusion with encouraging support for vread; potential to add support for searching on status and/or period)
* FM 11/9: RxBIN may need to be renamed RxIIN
* FM 11/9: Add slice for RxIdentifier in coverage.class
* FM 11/9: Consider compiling requests for teams working on R5 to overcome challenges we've seen (like coverage.network only allowing one string)
