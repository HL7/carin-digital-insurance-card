### Introduction
<p>This Implementation Guide was born out of the CARIN Alliance Payer's Implementer Forum where representatives from major health insurance companies in the US come together to collaborate on FHIR server implementation. In 2020, participants of the forum indicated a need for better guidance on how to represent the full data elements found on physical insurance cards within a FHIR-based transaction. In particular, participating payers noted the following challenges when trying to build out FHIR Coverage resources including all the necessary data elements:</p>

* The base Coverage resource allows for representation of the patient for whom the Coverage resource pertains as well as the subscriber. There is not a standard way to represent all of the beneficiaries for the plan and their corresponding member IDs the way they would be found on a physical insurance card.
* The Coverage resource "network" field allows for only one single string. There is a need to allow for a unique identifier for the network as well as a consumer-friendly name which is often printed on the physical insurance card.
* The Coverage resource does not allow for expression of copays in the form of text strings. Some copays are able to represented as the required SimpleQuantity or Money data types while others require strings.
* There is a need to standardize how images often found on insurance cards are able to be expressed in a FHIR-based transaction in a way that is predictable and renderable by consuming applications.

### Overview
<p>In order to represent the essential information found on the physicial insurance card, payers can leverage the Coverage resource to communicate the insurance plan information, the Organization resource to communicate the contact information for the plan (often found on the back of the physical card), and the Patient resource to communicate additional demographic information such as date of birth. The below diagram outlines how these resources relate.</p>

<p><img style="width: 85%; float: none; align: middle;" src="ResourceDiagram.png"/></p>

### Additional Information

<p>For additional information about the exchange of insurance card information please visit these pages:</p>

* Use Case
* Physical Insurance Card Data Elements

### Boundaries

<p>This Implementation Guide enables the digital exchange and digital rendering of the elements found on a person’s physical insurance card. The primary use case is to support insurance members who wish to retrieve their proof of insurance coverage digitally via a consumer-facing application. This IG does NOT address eligibility checks between health providers and the insurance company. This IG is not intended to replace use of any existing standards for pharmacy insurance cards, i.e. NCPDP standards, and is being provided to augment existing physical insurance cards where pharmacy benefits may need to be included with other coverage. </p>

