### Physical Insurance Card Data Elements
<p>This table outlines the necessary data elements found on physical insurance cards. This list of data elements was compiled through collaboration with numerous subject-matter experts across major insurance companies in the US. The authors of this IG also consulted the following resources for additional guidance:</p>

*	WEDI Health Identification Card Implementation Guide
*	WEDI Virtual Clipboard
*	NYS DFS Title 11, section 52.69
*	CAA/No Surprises Act, section 107 
*	SMART Health Card IG (related to QR codes)

<table border="1">
    <tr>
      <td><b>Data Element</b></td>
      <td><b>Description</b></td>
      <td><b>FHIR Mapping</b></td>
    </tr>
    <tr>
      <td>Member Name</td>
      <td>Member's first and last name and may include middle name or initial. Note: A member is any individual covered by the benefits offered by an entity, such as an employer or insurance company. </td>
      <td>coverage.extension C4DIC-PlanBeneficiaries-extension (enables represenation of all members), coverage.beneficiary (reflecting the patient for whom this resource is being pulled), patient.name (reflecting the patient for whom this resource is being pulled)</td>
    </tr>
    <tr>
      <td>Member ID</td>
      <td>The unique identifier for the organization's membership</td>
      <td>coverage.extension C4DIC-PlanBeneficiaries-extension (enables represenation of all members), coverage.identifier (reflecting the patient for whom this resource is being pulled), coverage.subscriberId (representing the subscriber of the plan)</td>
    </tr>
    <tr>
      <td>Dependent Number</td>
      <td>Identifies the unique dependent under the plan. Note: A Dependent is an individual, other than the subscriber, who has insurance coverage under the benefits selected by a subscriber</td>
      <td>coverage.dependent</td>
    </tr>
    <tr>
      <td>Subscriber</td>
      <td>An individual or entity that selects benefits offered by an entity, such as an employer, government, or insurance company</td>
      <td>coverage.subscriber</td>
    </tr>
    <tr>
      <td>Patient Relationship to Subscriber</td>
      <td>Describes how the beneficiary and how the plan subscriber are related</td>
      <td>coverage.relationship</td>
    </tr>
    <tr>
      <td>Plan Type</td>
      <td>Refers to how plans provide coverage and from which network. Also may be called Product Type. Exampe HMO, PPO</td>
      <td>coverage.type</td>
    </tr>
    <tr>
      <td>Payer ID</td>
      <td>This is the Unique ID assigned to each payer</td>
      <td>organization.identifier</td>
    </tr>
    <tr>
      <td>Payer Name</td>
      <td>The name of the payer</td>
      <td>coverage.payor.display, organization.name</td>
    </tr>
    <tr>
      <td>Group ID</td>
      <td>The unique ID for the group you get insurance coverage from. Typically refers to an employer group.</td>
      <td>coverage.class where type = group</td>
    </tr>
    <tr>
      <td>Group Name</td>
      <td>The group from which your insurance coverage is from. Typically your employer.</td>
      <td>coverage.class where type = group</td>
    </tr>
    <tr>
      <td>Division ID</td>
      <td>This is a sub-group from the group that identifed which cohort an individaul is assigned.</td>
      <td>coverage.class where type = division</td>
    </tr>
    <tr>
      <td>Primary Network ID</td>
      <td>Identifes a group of providers in one network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td>Primary Network Name</td>
      <td>The name of the group that identifies a group of providers in a network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td>Secondary Network ID</td>
      <td>Identifes a group of providers in one network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td>Secondary Network Name</td>
      <td>Is the name of the group that identifies a group of providers in a network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td>Payer Contact Details:</td>
      <td>The contact details often found on the back of the physical insurance card. Please note, there may be multiple types of contacts for different purposes such as member support, pharmacist inquiries, etc.</td>
      <td></td>
    </tr>
    <tr>
      <td>--Claims Address</td>
      <td>Address to send provider claims to for adjudication.</td>
      <td>organization.contact.address</td>
    </tr>
    <tr>
      <td>--Phone</td>
      <td>Phone numbers. Need to support multiple types of phone numbers for different purposes (physician, member, pharmacist, etc.)</td>
      <td>organization.contact.telecom</td>
    </tr>
    <tr>
      <td>--Web Address</td>
      <td>The public internet address of the payer</td>
      <td>organization.contact.telecom</td>
    </tr>
    <tr>
      <td>--Customer Service</td>
      <td>This is the customer-facing number for member service questions</td>
      <td>organization.contact.telecom</td>
    </tr>
    <tr>
      <td>RxBin/BIN</td>
      <td>Bank identification number used to locate your pharmacy member profile under the PBM system</td>
      <td>coverage.class where type = rxbin</td>
    </tr>
    <tr>
      <td>RxIIN</td>
      <td>ANSI issued Issuer Identification Number</td>
      <td>coverage.class where type = rxiin</td>
    </tr>
    <tr>
      <td>RxPCN </td>
      <td>Processor control number tells the pharmacy which group you're in so they can process your prescription payment correctly</td>
      <td>coverage.class where type = rxpcn</td>
    </tr>
    <tr>
      <td>RxGRP</td>
      <td>RX group number</td>
      <td>coverage.class where type = rxgroup</td>
    </tr>
    <tr>
      <td>RxID</td>
      <td>NCPDP Cardholder ID defined as 'the Insurance ID assigned to the cardholder or identification number used by the plan'</td>
      <td>coverage.class where type = rxid</td>
    </tr>
    <tr>
      <td>Free text fields</td>
      <td>Additional contextual information often found on the back of physical insurance cards. Could include TTY,
        disclaimers about eligibility, and/or limits to coverage. Could include notice of dental/vision coverage.</td>
      <td>coverage.extension C4DIC-AdditionalCardInformation-extension </td>
    </tr>
    <tr>
      <td>Copay Designation & Amounts:</td>
      <td>Payment required for various types of health care services</td>
      <td> </td>
    </tr>
    <tr>
      <td>--PCP office visits</td>
      <td>Copay for PCP office visits</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>--Specialist office visits</td>
      <td>Copay for specialist office visits</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>--Urgent care</td>
      <td>Copay for urgent care visits</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>--ER visits</td>
      <td>Copay for ER visits</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>--Prescription drugs, retail pharmacy, 30-day supply</td>
      <td>Copay for prescription drugs</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Out of Network Deductible</td>
      <td>The amount you must pay before your insurance plan's benefits begin. Out of Network amount</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family In Network Deductible</td>
      <td>The amount you must pay before your insurance plan's benefits begin. In network amount</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Pharmacy Out of Network Deductible</td>
      <td>The amount you must pay before your insurance plan's benefits begin. Pharmacy Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Pharmacy In Network Deductible</td>
      <td>The amount you must pay before your insurance plan's benefits begin. Pharmacy In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Out of Network Out of Pocket Max</td>
      <td>The limit on the amount of money you have to pay for covered health services. Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family In Network Out of Pocket Max</td>
      <td>The limit on the amount of money you have to pay for covered health services. In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Pharmacy Out of Network Out of Pocket Max</td>
      <td>The limit on the amount of money you have to pay for covered health services. Pharmacy Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Individual or Family Pharmacy In Network Out of Pocket Max</td>
      <td>The limit on the amount of money you have to pay for covered health services. Pharmacy In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td>Images</td>
      <td>Images often found on the front or back of the physical insurance card</td>
      <td> </td>
    </tr>
    <tr>
      <td>--Logo</td>
      <td>A company logo or image to represent the company</td>
      <td>coverage.extension C4DIC-Logo-extension</td>
    </tr>
    <tr>
      <td>--Barcode</td>
      <td>Machine readable code in the form of numbers or patterns or special charaters.</td>
      <td>coverage.extension C4DIC-Barcode-extension</td>
    </tr>
    <tr>
      <td>--QR code</td>
      <td>Scannable code in the form of patterns.</td>
      <td>coverage.extension C4DIC-QRCode-extension</td>
    </tr>
    <tr>
      <td>--Other supporting images</td>
      <td>Partner logos, images indicating the type of coverage provided, etc.</td>
      <td>coverage.extension C4DIC-SupportingImage-extension</td>
    </tr>
    <tr>
      <td>Card issuance date</td>
      <td>Date when the insurance company issued the insurance card</td>
      <td>coverage.extension C4DIC-CardIssueDate-extension</td>
    </tr>
    <tr>
      <td>Date of Birth</td>
      <td>Date of Birth of the beneficiary</td>
      <td>patient.birthDate</td>
    </tr>
</table>
