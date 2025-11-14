This page identifies best practices to be applied when implementing this Implementation Guide.

### Representing No/Expired Coverage

There are instances where an individual was previously, but is no longer a member of a health plan (coverage is expired). The health plan **SHOULD** respond to requests for C4DIC Coverage resources using the latest version of each applicable Coverage resource, even if the individual is no longer a member of the Health Plan.

For Health Plan APIs that allow an individual to access their API despite never being a member of the Health Plan (for instance, by presenting a digital identity credential), there is no expectation of the creation of a Coverage resource. 

#### Example: 

An individual was insured with a diamond-level health insurance plan from 01-01-2025 to 06-30-2025. The individual received telehealth services on 04-15-2025, for which they received a bill on 08-30-2025, without their insurance applied. The individual receives a digital insurance card from the API of the diamond-level Health Plan, and submits this information to the telehealth service for proper billing. 
