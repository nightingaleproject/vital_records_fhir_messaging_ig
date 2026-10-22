
Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  DSTATE    | State, U.S. Territory or Canadian Province of Death - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Date of Death--Year | death_year(allowed, but being phased out)  | string(4)   |
|  DOD_YR, DOB_YR, FDOB_YR   | Date of event--Year | event_year (preferred)  | string(4)   |
|  AUXNO    | Auxiliary State file number | state_auxiliary_id   | string(12)   |
| N/A       | Processing Status | status    | code from [StatusVS] |
{: .grid }
{% include markdown-link-references.md %}