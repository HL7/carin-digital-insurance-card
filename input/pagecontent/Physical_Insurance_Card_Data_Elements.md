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
        <td><b>Member Name</b></td>
      <td>Member's first and last name and may include middle name or initial. Note: A member is any individual covered by the benefits offered by an entity, such as an employer or insurance company. </td>
      <td>coverage.extension C4DIC-PlanBeneficiaries-extension (enables represenation of all members), coverage.beneficiary (reflecting the patient for whom this resource is being pulled), patient.name (reflecting the patient for whom this resource is being pulled)</td>
    </tr>
    <tr>
      <td><b>Member ID</b></td>
      <td>The unique identifier for the organization's membership</td>
      <td>coverage.extension C4DIC-PlanBeneficiaries-extension (enables represenation of all members), coverage.identifier (reflecting the patient for whom this resource is being pulled), coverage.subscriberId (representing the subscriber of the plan)</td>
    </tr>
    <tr>
      <td><b>Dependent Number</b></td>
      <td>Identifies the unique dependent under the plan. Note: A Dependent is an individual, other than the subscriber, who has insurance coverage under the benefits selected by a subscriber</td>
      <td>coverage.dependent</td>
    </tr>
    <tr>
      <td><b>Subscriber</b></td>
      <td>An individual or entity that selects benefits offered by an entity, such as an employer, government, or insurance company</td>
      <td>coverage.subscriber</td>
    </tr>
    <tr>
      <td><b>Patient Relationship to Subscriber<b/></td>
      <td>Describes how the beneficiary and how the plan subscriber are related</td>
      <td>coverage.relationship</td>
    </tr>
    <tr>
      <td><b>Plan Type</b></td>
      <td>Refers to how plans provide coverage and from which network. Also may be called Product Type. Exampe HMO, PPO</td>
      <td>coverage.type</td>
    </tr>
    <tr>
      <td><b>Payer ID</b></td>
      <td>This is the Unique ID assigned to each payer</td>
      <td>organization.identifier</td>
    </tr>
    <tr>
      <td><b>Payer Name</b></td>
      <td>The name of the payer</td>
      <td>coverage.payor.display, organization.name</td>
    </tr>
    <tr>
      <td><b>Group ID</b></td>
      <td>The unique ID for the group you get insurance coverage from. Typically refers to an employer group.</td>
      <td>coverage.class where type = group</td>
    </tr>
    <tr>
      <td><b>Group Name<b/></td>
      <td>The group from which your insurance coverage is from. Typically your employer.</td>
      <td>coverage.class where type = group</td>
    </tr>
    <tr>
      <td><b>Division ID</b></td>
      <td>This is a sub-group from the group that identifed which cohort an individaul is assigned.</td>
      <td>coverage.class where type = division</td>
    </tr>
    <tr>
      <td><b>Primary Network ID<b/></td>
      <td>Identifes a group of providers in one network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td><b>Primary Network Name</b></td>
      <td>The name of the group that identifies a group of providers in a network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td><b>Secondary Network ID</b></td>
      <td>Identifes a group of providers in one network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td><b>Secondary Network Name</b></td>
      <td>Is the name of the group that identifies a group of providers in a network.</td>
      <td>coverage.class where type = network</td>
    </tr>
    <tr>
      <td><b>RxBIN</b></td>
      <td>Bank identification number used to locate your pharmacy member profile under the PBM system</td>
      <td>coverage.class where type = rxbin</td>
    </tr>
    <tr>
      <td><b>RxIIN</b></td>
      <td>ANSI issued Issuer Identification Number</td>
      <td>coverage.class where type = rxiin</td>
    </tr>
    <tr>
      <td><b>RxPCN<b/></td>
      <td>Processor control number tells the pharmacy which group you're in so they can process your prescription payment correctly</td>
      <td>coverage.class where type = rxpcn</td>
    </tr>
    <tr>
      <td><b>RxGRP</b></td>
      <td>RX group number</td>
      <td>coverage.class where type = rxgroup</td>
    </tr>
    <tr>
      <td><b>RxID</b></td>
      <td>NCPDP Cardholder ID defined as 'the Insurance ID assigned to the cardholder or identification number used by the plan'</td>
      <td>coverage.class where type = rxid</td>
    </tr>
    <tr>
      <td><b>Free text fields</b></td>
      <td>Additional contextual information often found on the back of physical insurance cards. Could include TTY,
        disclaimers about eligibility, and/or limits to coverage. Could include notice of dental/vision coverage.</td>
      <td>coverage.extension C4DIC-AdditionalCardInformation-extension </td>
    </tr>
    <tr>
      <td><b>Individual or Family Out of Network Deductible</b></td>
      <td>The amount you must pay before your insurance plan's benefits begin. Out of Network amount</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family In Network Deductible</b></td>
      <td>The amount you must pay before your insurance plan's benefits begin. In network amount</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family Pharmacy Out of Network Deductible</b></td>
      <td>The amount you must pay before your insurance plan's benefits begin. Pharmacy Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family Pharmacy In Network Deductible</b></td>
      <td>The amount you must pay before your insurance plan's benefits begin. Pharmacy In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family Out of Network Out of Pocket Max<b/></td>
      <td>The limit on the amount of money you have to pay for covered health services. Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family In Network Out of Pocket Max</b></td>
      <td>The limit on the amount of money you have to pay for covered health services. In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family Pharmacy Out of Network Out of Pocket Max<b/></td>
      <td>The limit on the amount of money you have to pay for covered health services. Pharmacy Out of Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
    <tr>
      <td><b>Individual or Family Pharmacy In Network Out of Pocket Max</b></td>
      <td>The limit on the amount of money you have to pay for covered health services. Pharmacy In Network amount.</td>
      <td>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</td>
    </tr>
        <tr>
      <td><b>Card issuance date</b></td>
      <td>Date when the insurance company issued the insurance card</td>
      <td>coverage.extension C4DIC-CardIssueDate-extension</td>
    </tr>
    <tr>
      <td><b>Date of Birth</b></td>
      <td>Date of Birth of the beneficiary</td>
      <td>patient.birthDate</td>
    </tr>
    <tr>
      <td colspan="3"><b>Payer Contact Details: The contact details often found on the back of the physical insurance card. Please note, there may be multiple types of contacts for different purposes such as member support, pharmacist inquiries, etc.</b></td>
    </tr>
    <tr>
      <td><i>&emsp;Claims Address</i></td>
      <td><i>Address to send provider claims to for adjudication.</i></td>
      <td><i>organization.contact.address</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Phone</i></td>
      <td><i>Phone numbers. Need to support multiple types of phone numbers for different purposes (physician, member, pharmacist, etc.)</i></td>
      <td><i>organization.contact.telecom</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Web Address</i></td>
      <td><i>The public internet address of the payer</i></td>
      <td><i>organization.contact.telecom</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Customer Service</i></td>
      <td><i>This is the customer-facing number for member service questions</i></td>
      <td><i>organization.contact.telecom</i></td>
    </tr>
        <tr>
      <td colspan="3"><b>Copay Designation & Amounts: Payment required for various types of health care services</b></td>
    </tr>
    <tr>
      <td><i>&emsp;PCP office visits</i></td>
      <td><i>Copay for PCP office visits</i></td>
      <td><i>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Specialist office visits</i></td>
      <td><i>Copay for specialist office visits</i></td>
      <td><i>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Urgent care</i></td>
      <td><i>Copay for urgent care visits</i></td>
      <td><i>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required</i>)</td>
    </tr>
    <tr>
      <td><i>&emsp;ER visits</i></td>
      <td><i>Copay for ER visits</i></td>
      <td><i>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Prescription drugs, retail pharmacy, 30-day supply</i></td>
      <td><i>Copay for prescription drugs</i></td>
      <td><i>coverage.costToBeneficiary (where value can be represented as valueMoney), coverage.extension C4DIC-AdditionalCardInformation-extension (where string is required)</i></td>
    </tr>
    <tr>
      <td colspan="3"><b>Images: Images often found on the front or back of the physical insurance card</b></td>
    </tr>
    <tr>
      <td><i>&emsp;Logo</i></td>
      <td><i>A company logo or image to represent the company</i></td>
      <td><i>coverage.extension C4DIC-Logo-extension</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Barcode</i></td>
      <td><i>Machine readable code in the form of numbers or patterns or special charaters.</i></td>
      <td><i>coverage.extension C4DIC-Barcode-extension</i></td>
    </tr>
    <tr>
      <td><i>&emsp;QR code</i></td>
      <td><i>Scannable code in the form of patterns.</i></td>
      <td><i>coverage.extension C4DIC-QRCode-extension</i></td>
    </tr>
    <tr>
      <td><i>&emsp;Other supporting images</i></td>
      <td><i>Partner logos, images indicating the type of coverage provided, etc.</i></td>
      <td><i>coverage.extension C4DIC-SupportingImage-extension</i></td>
    </tr>
</table>
