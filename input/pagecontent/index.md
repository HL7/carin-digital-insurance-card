<a name="introduction"> </a>
### Introduction

This implementation guide describes the CARIN for Digital Insurance Card Framework, providing a set of resources that payers can display to consumers via a FHIR API. This implementation guide focuses on standardizing how data elements from the physical insurance card can be transmitted in a FHIR-based exchange, leveraging the Coverage resource as well as Patient and Organization resources. See the Table of Contents for more information.

<a name="the-carin-alliance"></a>
### The CARIN Alliance
The CARIN (Creating Access to Real-time Information Now through Consumer-Directed Exchange) Alliance is an [HL7 FHIR Accelerator program](http://www.hl7.org/about/fhir-accelerator/index.cfm) which brings implementers together to advance the use of HL7 FHIR standards in health care. The [CARIN Alliance Health Plan Workgroup](https://www.carinalliance.com/our-work/health-plan/) was organized to develop a FHIR-based API that could be implemented by a consumer-facing application. The goal of the CARIN Alliance Health Plan Workgroup is to develop an agreed upon set of data fields to exchange with consumers and a FHIR-based implementation guide for health plans and consumer facing applications to use to implement the API.

<a name="authors"> </a>
### Authors

* Primary
    * Cille Kissel (Humana) – [Ckissel@humana.com](mailto:Ckissel@humana.com)
    * Mark Roberts (Leavitt Partners, LLC) - [mark.roberts@leavittpartners.com](mailto:mark.roberts@leavittpartners.com)
    * HL7 Payer/Provider Workgroup

* Secondary
    * Adam Culbertson (Humana) – [Aculbertson1@humana.com](mailto:Aculbertson1@humana.com)
    * Ryan Howells (Leavitt Partners, LLC) - [ryan.howells@leavittpartners.com](mailto:ryan.howells@leavittpartners.com)
    * Gail Kocher (Blue Cross Blue Shield Association) [Gail.Kocher@bcbsa.com](mailto:Gail.Kocher@bcbsa.com)
    * Pamela Maklari (Cognizant) [Pamela.Maklari@cognizant.com](mailto:Pamela.Maklari@cognizant.com)
    * Julia Meade Tulli (Anthem) [julia.tulli@anthem.com](mailto:julia.tulli@anthem.com)
    * Sarah Young (Anthem) [Sarah.Young@anthem.com](mailto:Sarah.Young@anthem.com)
    * Joshua Kelly (Automate Medical) [josh@automatemedical.com](mailto:josh@automatemedical.com)
    * HL7 Financial Management Workgroup
    * HL7 Security Workgroup 


### Acknowledgements
This IG was developed using FHIR Shorthand syntax and the SUSHI tookit, a free, open source toolchain from the MITRE Corporation. Valuable guidance on FSH and assistance with the FHIR IG builds were provided by Corey Spears (MITRE), and Vince Van Dintel (Humana). 


