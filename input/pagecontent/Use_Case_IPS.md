### Comparison with the International Patient Summary IG

The CARIN Digital Insurance Card IG defines how members may release their insurance card information via a payer-provided FHIR API, using the Coverage, Patient, and Organization resources. It supports both direct API access and verifiable packaging via [SMART Health Cards (SHC) and SMART Health Links (SHL)]({{site.data.fhir.ver.shcl}}). These formats allow patients to store and share their insurance card digitally—via QR codes, URLs, or mobile wallets.

The [International Patient Summary]({{site.data.fhir.ver.ips}}) is a minimal and non-exhaustive set of basic clinical data of a patient, specialty-agnostic, condition-independent, but readily usable by all clinicians for cross-border patient care. This summarized version of the patient’s clinical data gives health professionals the essential information such as allergies, medications and problems needed to provide care in the case of an unexpected or unscheduled medical situation (e.g. emergency or accident). While this data is mainly intended to aid health professionals in providing unscheduled care, it can also be used to provide planned medical care (e.g. in the case of citizen movements or cross-organizational care paths).

Both IGs support patient-mediated exchange, and both can be packaged using [SHC/SHL]({{site.data.fhir.ver.shcl}})) for portability and interoperability.

Implementers could consider referencing IPS and Digital Insurance Card data in a single SHL manifest, enabling seamless sharing across clinical and administrative domains.

#### Example 1: Emergency Room Visit Abroad
A patient presents a SMART Health Link containing both their IPS document and digital insurance card. The provider accesses allergies, medications, and coverage details in one workflow—supporting both clinical decision-making and eligibility verification.

#### Example 2: Telehealth Registration
A patient uploads a SHL with both IPS and insurance card data to a provider portal. This enables pre-visit clinical review, reducing administrative burden and improving care coordination.

#### Example 3: Patient/Clinician Medication Coverage Confirmation
A patient shares their digital insurance card for coverage verification and their IPS for medication reconciliation. This streamlines the administration and prescribing process, reduces errors, and improves price transparency.

#### Example 4: Request for Patient Preferences
A digital insurance card and IPS could include patient preferences and summary with documentation that could include coverage, end of life decisions, power of attorney, among others so your decisions are clear to your provider.

