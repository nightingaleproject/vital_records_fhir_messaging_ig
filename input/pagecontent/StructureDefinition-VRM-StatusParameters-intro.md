
Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  DSTATE    | State, U.S. Territory or Canadian Province of Death - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Date of Death--Year | death_yr   | string(4)   |
|  AUXNO    | Auxiliary State file number | state_auxiliary_id   | string(12)   |
| N/A       | Processing Status | status    | code from [StatusVS] |
{: .grid }
{% include markdown-link-references.md %}