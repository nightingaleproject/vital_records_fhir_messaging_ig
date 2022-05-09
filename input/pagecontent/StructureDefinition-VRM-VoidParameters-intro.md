
Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  DSTATE    | State, U.S. Territory or Canadian Province of Death - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Date of Death--Year | death_yr   | string(4)   |
|  AUXNO    | Auxiliary State file number | cert_no   | string(6)   |
|  N/A    | Block Count - Number of records to void starting at the certificate number specified by the 'cert_no' parameter | block_count   | unsigned int   |
