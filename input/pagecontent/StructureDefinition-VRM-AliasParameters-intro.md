
Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  DSTATE    | State, U.S. Territory or Canadian Province of Death - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Date of Death--Year | death_yr   | string(4)   |
|  GNAME    | Alias: Decedent first/given name | alias_decedent_first_name   | string   |
|  LNAME    | Alias: Decedent last/sur name | alias_decedent_last_name   | string  |
|  MNAME    | Alias: Decedent middle name | alias_decedent_middle_name   | string   |
|  SUFF    | Alias: Decedent name suffix | alias_decedent_name_suffix   | string  |
|  FLNAME    | Alias: Father last/sur name | alias_father_surname   | string(6)   |
|  SSN    | Alias: Decedent Social Security Number | alias_social_security_number   | string   |
{: .grid }
{% include markdown-link-references.md %}
