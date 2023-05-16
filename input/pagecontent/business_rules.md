### Business Rules for Death Record Submissions

Version 2.0

**Last updated** : March 17, 2023

**Table of Content**

[Required Fields](#_Required_Values)

[Additional Logic Checks](#_Additional_Logical_Checks)

[Validation Errors](#_Validation_Errors)

[Internal Validation Errors](#_Internal_Validation_Errors)

#### Required Fields

The following fields are required for a valid death record submission. An Error Message with a format of "Error: Unable to find _IJE Field_ required element" will be returned for each missing field.

| **Field Description** | **IJE Field** | **FHIR Profile** | **FHIR Field** |
| --- | --- | --- | --- |
| State, U.S. Territory or Canadian Province of Death - code | DSTATE | DeathLocation | address.state **or** address.state.extension[nationalReportingJurisdictionId]
 If both are provided, the extension will override. Unless you are NYC, recommend using address.state **only.** |
| Certificate Number | FILENO | DeathCertificateDocument | identifier.extension[certificateNumber].value |
| Decedent's Legal Name–Last | LNAME | Decedent | name.family, name.use = official |
| Decedent's Sex at Death | SEX | Decedent | extension[NVSS-SexAtDeath] |
| Decedent's Age–Type | AGETYPE | DecedentAge | valueQuantity.code |
| Decedent's Age–Units | AGE | DecedentAge | valueQuantity.value |
| Date of Birth | DOB\_YR, DOB\_MO, DOB\_DY | Decedent | birthDate |
| Decedent's Residence–Inside City Limits | LIMITS | Decedent | address.city.extension[withinCityLimits] |
| Marital Status | MARITAL | Decedent | maritalStatus |
| Place of Death | DPLACE | DeathDate | component[placeOfDeath].value |
| County of Death Occurrence | COD | DeathLocation | address.district.extension[countyCode] |
| Method of Disposition | DISP | DecedentDispositionMethod | value |
| Date of Death | DOD\_YR, DOD\_MO, DOD\_DY | DeathDate | value |
| Decedent's Education | DEDUC | DecedentEducationLevel | value |
| Decedent of Hispanic Origin?–Mexican | DETHNIC1 | InputRaceAndEthnicity | component[HispanicMexican].valueCoding |
| Decedent of Hispanic Origin?–Puerto Rican | DETHNIC2 | InputRaceAndEthnicity | component[HispanicPuretoRican].valueCoding |
| Decedent of Hispanic Origin?–Cuban | DETHNIC3 | InputRaceAndEthnicity | component[HispanicCuban].valueCoding |
| Decedent of Hispanic Origin?–Other | DETHNIC4 | InputRaceAndEthnicity | component[HispanicOther].valueCoding |
| Manner of Death | MANNER | MannerOfDeath | value |
| Was Autopsy performed | AUTOP | AutopsyPerformedIndicator | value |
| Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF | AutopsyPerformedIndicator | component[autopsyResultsAvailable].value |
| Did Tobacco Use Contribute to Death? | TOBAC | TobaccoUseContributedToDeath | value |

#### Additional Logical Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Error: Invalid combination of _Field 1_ and _Field 2_" will be returned for each invalid combination reported.

| **Field 1** | **Field 2** |
| --- | --- |
| **Description** | **Value** | **Description** | **Value** |
| Sex | Male | Pregnancy Status | **Not**'Not Applicable' |
| Was Autopsy performed | Yes | Were Autopsy Findings Available to Complete the Cause of Death? | 'Not Applicable' |
| Was Autopsy performed | No | Were Autopsy Findings Available to Complete the Cause of Death? | **Not**'Not Applicable' |
| Date of Injury | Greater than Date of Death | Date of Death | Less than Date of Injury |
| Manner of Death | Accident, Suicide, Homicide | Date of Injury | Not Provided |
| Manner of Death | Accident, Suicide, Homicide | Place of Injury Literal | Not Provided |
| Manner of Death | Accident, Suicide, Homicide | Describe How Injury Occurred | Not Provided |

#### Validation Errors

For many fields, the value provided must be one that is found in the corresponding VRDR Value Set for the field. Otherwise, an Error Message with a format of "Error: Unable to find _IJE Field_ mapping for _FHIR Component_ field value '_string_'" will be returned for each violation.

There are additional Errors that may be returned when a record cannot be accepted, including some IJE fields that are not retained by NCHS, but must be valid if provided.

| **IJE Field** | **Error Message** | **Clarification** |
| --- | --- | --- |
| BSTATE | Error: FHIR field BirthRecordState too long for IJE field BSTATE of length 2 | The birth state must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). **http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs** |
| COD1A and OTHERCONDITION | The record is uncodeable. The record is missing important cause of death information. | When manner of death is not 'Pending' or 'Could Not Be Determined', then cause of death information must be included in the record by providing literal text for fields COD1A and/or OTHERCONDITION. |
| DETHNICE | Error: Unable to find IJE DETHNICE mapping for FHIR HispanicCode field value '_string_' | DETHNICE is a field that is returned to the jurisdictions in the multi-race file. If including in records to share as part of IJE, the values reported must be valid. **http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs** |
| DINSTI | Error: FHIR field DeathLocationName contains string too long for IJE field DINSTI of length 30 | The location of death string exceeds the 30-character limit for this field. |
| DSTATE | Error: FHIR field DeathLocationJurisdiction contains string too long for IJE field DSTATE of length 2 | DSTATE is a requiredfield, and the value must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). |
| DSTATE | Error JurisdictionID was not identified |
| DOD\_YR | 4 digits number are expected | The year of the event must be a valid 4 numeric digit year (YYYY) without special characters or blanks. |
| Event Year | FHIR cannot process records from EventYear _year_; please resubmit via IJE | Until the 2022 data year is closed, NVSS may not be able to process older years via FHIR. |
| FHIR Bundle Event Year | FHIR BUNDLE Parameter event year should match the death record Death Year. | DOD\_YR must agree with the year included in the FHIR BUNDLE parameter. |
| FHIR Bundle Source Endpoint | FHIR Bundle Source Endpoint is missing | The actual message source address or id needs to be specified for the endpoint. |
| FILENO | Certificate Number is missing, or the certificate length is greater than 6 | FILENO is a requiredfield and must be exactly 6 digits in length. 000000 and 999999 are not valid. In general, Certificate Numbers beginning with 9 are used for Jurisdictional purposes, so they may also be rejected. | | Only Numeric and positive digits are allowed for Certificate Number |
| IDOB\_YR | Error: FHIR field BirthRecordYear contains string too long for IJE field IDOB\_YR of length 4 | The year of birth must be a valid 4-digit numeric year (YYYY). |
| INDUST | Error: FHIR field UsualIndustry contains string …. too long for IJE field INDUST of length 40 | The decedent's industry literal exceeds the 40-character limit for this field. |
| OCCUP | Error: FHIR field UsualOccupation contains string … too long for IJE field OCCUP of length 40 | The decedent's occupation literal exceeds the 40-character limit for this field. |
| Record Length | The IJE version of the FHIR message did not reach the 1025 bytes characters required. Some fields are missing. | The Death Record is missing several important FHIR elements required to generate a complete IJE record. Review the record to determine which fields are missing. |
| SSN | Error: FHIR field SSN contains string …. which is not the expected length (without dashes or spaces) for IJE field SSN of length 9 | The Social Security Number (SSN) must be 9 numeric digits long (without dashes or spaces) to be accepted. |

#### Internal Validation Errors

The following error messages are internal validation errors and if you receive any of these, please contact NCHS.

| **Error Message** |
| --- |
| An unexpected network error occurred. |
| Exception has been thrown by the target of an invocation. |
| Object reference not set to an instance of an object. |
| The network path was not found. |
| Unable to find the specified file. |

