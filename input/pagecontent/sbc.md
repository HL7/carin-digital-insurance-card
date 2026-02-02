# Summary of Benefits and Coverage (SBC) FHIR Implementation Guide

## Overview

This Implementation Guide (IG) defines a FHIR profile for representing Summary of Benefits and Coverage (SBC) documents as structured data using the InsurancePlan resource. The SBC is a standardized disclosure document required under the Affordable Care Act (ACA) Section 2715 and implementing regulations.

## Purpose

The SBC framework was established to provide consumers with clear, standardized information about health insurance benefits and costs. While SBC regulations prescribe detailed content requirements, they do not specify machine-readable data formats. This IG addresses that gap by:

- Defining a structured FHIR representation of SBC documents
- Enabling machine-readable representation of the 27 required benefit categories
- Supporting programmatic access to cost-sharing information (copays, coinsurance, deductibles)
- Preserving network distinctions (in-network vs. out-of-network)
- Maintaining regulatory compliance with SBC content requirements

## Regulatory Context

The SBC is jointly regulated by three federal agencies:

- **Department of Health and Human Services (HHS)** through CMS and CCIIO - enforces requirements for health insurance issuers (45 CFR 147.200)
- **Department of Labor (DOL)** through EBSA - enforces requirements for ERISA-covered group health plans (29 CFR 2590.715-2715)
- **Department of the Treasury** through IRS - enforces via excise taxes (26 CFR 54.9815-2715)

The statutory authority stems from Section 2715 of the Public Health Service Act, added by ACA Section 1001(5), codified at 42 U.S.C. § 300gg-15.

## Key Features

### 27 Required Benefit Categories

The profile supports all 27 benefit categories mandated by SBC regulations:

1. Preventive care/screening/immunization
2. Primary care visits
3. Specialist visits
4. Diagnostic tests
5. Imaging (CT/PET/MRI)
6. Generic drugs
7. Preferred brand drugs
8. Non-preferred brand drugs
9. Specialty drugs
10. Facility fees
11. Physician/surgeon fees
12. Emergency room care
13. Emergency medical transportation
14. Urgent care
15. Hospital outpatient care
16. Hospital inpatient care
17. Mental/behavioral health outpatient services
18. Mental/behavioral health inpatient services
19. Pregnancy services
20. Childbirth/delivery
21. Pregnancy home health care
22. Rehabilitation services
23. Habilitation services
24. Skilled nursing care
25. Durable medical equipment
26. Hospice services
27. Children's eye exams
28. Children's glasses
29. Children's dental check-ups

### Cost-Sharing Representation

The profile represents cost-sharing through the InsurancePlan `plan.specificCost` structure:

- **Copayments** - Fixed dollar amounts per service
- **Coinsurance** - Percentage of costs paid by the member
- **Deductibles** - Amounts to be paid before benefits apply
- **Network distinctions** - Separate costs for in-network and out-of-network services

### SBC-Specific Extensions

While the profile prioritizes using base InsurancePlan elements, it defines minimal extensions for SBC-specific content:

- **SBC Metadata Extension** - Minimum essential coverage indicator, minimum value indicator, abortion coverage disclosure
- **Excluded Services Extension** - Services not covered by the plan
- **Benefit Limitation Extension** - Limitations and exceptions for specific benefits

## Scope

This IG currently focuses on the core benefit and cost-sharing structure of SBC documents. Future versions may include:

- Coverage examples (standardized scenarios: having a baby, managing diabetes, simple fracture)
- Additional regulatory disclosures
- Language access and translation metadata
- Links to uniform glossary definitions

## Target Audience

- Health insurance issuers creating SBC documents
- Health plan administrators
- Consumer-facing health applications
- Health IT vendors building plan comparison tools
- Researchers analyzing health plan benefits

## Getting Started

- Review the [SBC to FHIR Mapping](sbc-mapping.html) to understand how SBC elements map to FHIR
- Explore the [SBC InsurancePlan Profile](StructureDefinition-sbc-insurance-plan.html)
- Examine the [Example SBC](InsurancePlan-SBCExampleHMO.html) for a complete implementation
- Browse the [Terminology](sbc-terminology.html) for benefit category codes

## Authors and Contributors

This IG is maintained by the SBC FHIR Project.

## License and Legal

This implementation guide is provided for educational and interoperability purposes. Organizations using this IG remain responsible for compliance with all applicable SBC regulations at 45 CFR 147.200, 29 CFR 2590.715-2715, and 26 CFR 54.9815-2715.
