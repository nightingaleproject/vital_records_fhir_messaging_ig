
These parameters are included to enable processing and routing of messages without needing to parse the associated message payload.
The values included in the message parameters *MUST* precisely match the values of the same fields included in the death or fetal death record submission.

Note that in v2.0 of this IG, the message parameters have been consolidated -- the same parameters are used pretty much throughout.   The use of death_year is allowed for backwards compatibility, but will eventually be retired.  Please use event_year for all events, including death.

Parameters included:

| **IJE Name** | **Description** | **Parameter **  |  **Encoding or Type**  |
| ---------- | ---------------| ------------- |
|  DSTATE, BSTATE or FDSTATE    | State, U.S. Territory or Canadian Province of Event - code | jurisdiction_id  | string(2) from [JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html)   |
|  FILENO    | Certificate Number | cert_no   | string(6)   |
|  DOD_YR    | Date of Death--Year | death_year(allowed, but being phased out)  | string(4)   |
|  DOD_YR, DOB_YR, FDOB_YR   | Date of event--Year | event_year (preferred)  | string(4)   |
|  AUXNO    | Auxiliary State file number | state_auxiliary_id   | string(12)   |
|  -    | Payload Version ID | payload_version_id   | string from [PayloadVersionVS]   |
{: .grid }
{% include markdown-link-references.md %}