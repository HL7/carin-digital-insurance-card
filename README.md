# CARIN Alliance
**_Enabling consumers and their authorized caregivers to access more of their digital health information with less friction._**

This implementation guide describes the CARIN for Digital Insurance Card Framework, providing a set of resources that payers can display to consumers via a FHIR API. The goal is to enable insurance members to retrieve the data elements found on their physical insurance cards via a FHIR interaction. See the Table of Contents for more information.

**To Do List**

1. Update given name to 0..1 on beneficiaries extension
1. Diagram of relationships of the resources and how they relate to one another with additional context text
2. Add more background information generally speaking....
3. Just point to Patient from US Core instead of creating a new profile
4. Allow support for labels and usage info on images
5. Add boundary text around NCPDP - not intended to be used for drug cards only
6. Add lines for extensions on Coverage and Organization to connect to extension files
7. Update link for copay costToBeneficiary (right now points to wrong VS)
8. Read and respond to feedback about simplifying the beneficiaries extension, some argue for use of List or Group resource?
