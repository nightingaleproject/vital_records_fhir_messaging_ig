
These parameters are included to enable processing and routing of messages without needing to parse the associated message payload.
The values included in the message parameters *MUST* precisely match the values of the same fields included in the birth record submission.

Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  BSTATE    | State, U.S. Territory or Canadian Province of Birth - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Infant Date of Birth (year) | birth_year   | string(4)   |
|  AUXNO    | Auxiliary State file number | state_auxiliary_id   | string(12)   |
|  -    | Payload Version ID | payload_version_id   | [PayloadVersionVS]   |
{: .grid }
{% include markdown-link-references.md %}