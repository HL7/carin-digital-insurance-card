### Use Case - Representing Multiple Types of Coverage for the Same Payer

In instances where a Health Plan API actor is the Payer for multiple types of coverage for a member, the payer **SHOULD** represent each type of Coverage as a distinct Coverage resource. 

Examples:

- A government agency offers separate plans (or "Parts") that each cover distinct types of services, such as inpatient, outpatient, and prescription fills. The Health Plan API Actor SHOULD represent these using three different Coverage resources, with different values in Coverage.type.
- A private insurance plan offers both medical and dental insurance using the same group ID and member number. The insurance plan SHOULD represent medical and dental insurance using separate Coverage resources, with different values in Coverage.type.

