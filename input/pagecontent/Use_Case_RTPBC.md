

### Background
The Digital Insurance Card provides standardized insurance identifiers required for [CARIN Real-Time Pharmacy Benefit Check (RTPBC)](https://hl7.org/fhir/us/carin-rtpbc/) transactions. These identifiers are required in order for consumers to perform real-time pharmacy benefit checks in applications of their choosing, as specified in the CARIN RTPBC Implementation Guide.

### Scenario
A consumer wants to check their pharmacy benefit coverage and medication costs before filling a prescription. The digital insurance card provides the necessary identifiers (member ID, group number, BIN/IIN/PCN) required to submit an RTPBC request through either direct FHIR API access. Consumer application requests access to retrieve the required identifiers from the digital insurance card and upon being granted access by the member, includes those identifiers in an RTPBC request.

### Technical Workflows

#### Actors:

- Consumer
- Consumer App (implementing CARIN RTPBC)
- RTPBC Service (CARIN RTPBC endpoint)

App first gets access using one of the [authorization use cases](Use_Case_Authorization.html).

#### Flow:
1. Consumer App extracts member ID, group number, and BIN/IIN/PCN from Coverage resource.
2. Consumer App constructs and submits an National Council for Prescription Drug Programs (NCPDP) RTPBC request per CARIN RTPBC specifications.
3. RTPBC Service returns formulary and benefit information.
4. Consumer App displays medication costs and coverage to the consumer.

