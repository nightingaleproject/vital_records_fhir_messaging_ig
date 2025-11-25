# Business Rules for Death Record Submissions - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Business Rules for Death Record Submissions**

## Business Rules for Death Record Submissions

### Business Rules for Death Record Submissions

Version 2.2

**Last updated** : June 11, 2024

**Table of Content**

[Required Fields](#required-fields)

[Additional Logic Checks](#additional-logical-checks)

[Validation Errors](#validation-errors)

[Internal Validation Errors](#internal-validation-errors)

#### Required Fields

The following fields are required for a valid death record submission. An Error Message with a format of "Error: Unable to find **IJE Field** required element" will be returned for each missing field.

* **Field Description**: State, U.S. Territory or Canadian Province of Death - code
  * **IJE Field**: DSTATE
  * **FHIR Profile**: DeathLocation
  * **FHIR Field**: address.state**or**address.state.extension[nationalReportingJurisdictionId]If both are provided, the extension will override. Unless you are NYC, recommend using address.state**only.**
* **Field Description**: Certificate Number
  * **IJE Field**: FILENO
  * **FHIR Profile**: DeathCertificateDocument
  * **FHIR Field**: identifier.extension[certificateNumber].value
* **Field Description**: Decedent's Legal Name–Last
  * **IJE Field**: LNAME
  * **FHIR Profile**: Decedent
  * **FHIR Field**: name.family, name.use = official
* **Field Description**: Decedent's Sex at Death
  * **IJE Field**: SEX
  * **FHIR Profile**: Decedent
  * **FHIR Field**: extension[NVSS-SexAtDeath]
* **Field Description**: Decedent's Age-Type
  * **IJE Field**: AGETYPE
  * **FHIR Profile**: DecedentAge
  * **FHIR Field**: valueQuantity.code
* **Field Description**: Decedent's Age-Units
  * **IJE Field**: AGE
  * **FHIR Profile**: DecedentAge
  * **FHIR Field**: valueQuantity.value
* **Field Description**: Date of Birth
  * **IJE Field**: DOB_YR, DOB_MO, DOB_DY
  * **FHIR Profile**: Decedent
  * **FHIR Field**: birthDate
* **Field Description**: Decedent's Residence–Inside City Limits
  * **IJE Field**: LIMITS
  * **FHIR Profile**: Decedent
  * **FHIR Field**: address.city.extension[withinCityLimits]
* **Field Description**: Marital Status
  * **IJE Field**: MARITAL
  * **FHIR Profile**: Decedent
  * **FHIR Field**: maritalStatus
* **Field Description**: Place of Death
  * **IJE Field**: DPLACE
  * **FHIR Profile**: DeathDate
  * **FHIR Field**: component[placeOfDeath].value
* **Field Description**: County of Death Occurence
  * **IJE Field**: COD
  * **FHIR Profile**: DeathLocation
  * **FHIR Field**: address.district.extension[countyCode]
* **Field Description**: Method of Disposition
  * **IJE Field**: DISP
  * **FHIR Profile**: DecedentDispositionMethod
  * **FHIR Field**: value
* **Field Description**: Date of Death
  * **IJE Field**: DOD_YR, DOD_MO, DOD_DY
  * **FHIR Profile**: DeathDate
  * **FHIR Field**: value
* **Field Description**: Decedent's Education
  * **IJE Field**: DEDUC
  * **FHIR Profile**: DecedentEducationLevel
  * **FHIR Field**: value
* **Field Description**: Decedent of Hispanic Origin?–Mexican
  * **IJE Field**: DETHNIC1
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[HispanicMexican].valueCoding
* **Field Description**: Decedent of Hispanic Origin?–Puerto Rican
  * **IJE Field**: DETHNIC2
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[HispanicPuertoRican].valueCoding
* **Field Description**: Decedent of Hispanic Origin?–Cuban
  * **IJE Field**: DETHNIC3
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[HispanicCuban].valueCoding
* **Field Description**: Decedent of Hispanic Origin?–Other
  * **IJE Field**: DETHNIC4
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[HispanicOther].valueCoding
* **Field Description**: Decedent's Race–White
  * **IJE Field**: RACE1
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[White].valueBoolean
* **Field Description**: Decedent's Race–Black or African American
  * **IJE Field**: RACE2
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[BlackOrAfricanAmerican].valueBoolean
* **Field Description**: Decedent's Race–American Indian or Alaska Native
  * **IJE Field**: RACE3
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[AmericanIndianOrAlaskanNative].valueBoolean
* **Field Description**: Decedent's Race–Asian Indian
  * **IJE Field**: RACE4
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[AsianIndian].valueBoolean
* **Field Description**: Decedent's Race–Chinese
  * **IJE Field**: RACE5
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Chinese].valueBoolean
* **Field Description**: Decedent's Race–Filipino
  * **IJE Field**: RACE6
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Filipino].valueBoolean
* **Field Description**: Decedent's Race–Japanese
  * **IJE Field**: RACE7
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Japanese].valueBoolean
* **Field Description**: Decedent's Race–Korean
  * **IJE Field**: RACE8
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Korean].valueBoolean
* **Field Description**: Decedent's Race–Vietnamese
  * **IJE Field**: RACE9
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Vietnamese].valueBoolean
* **Field Description**: Decedent's Race–Other Asian
  * **IJE Field**: RACE10
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[OtherAsian].valueBoolean
* **Field Description**: Decedent's Race–Native Hawaiian
  * **IJE Field**: RACE11
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[NativeHawaiian].valueBoolean
* **Field Description**: Decedent's Race–Guamanian or Chamorro
  * **IJE Field**: RACE12
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[GuamanianOrChamorro].valueBoolean
* **Field Description**: Decedent's Race–Samoan
  * **IJE Field**: RACE13
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[Samoan].valueBoolean
* **Field Description**: Decedent's Race–Other Pacific Islander
  * **IJE Field**: RACE14
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[OtherPacificIslander].valueBoolean
* **Field Description**: Decedent's Race–Other
  * **IJE Field**: RACE15
  * **FHIR Profile**: InputRaceAndEthnicity
  * **FHIR Field**: component[OtherRace].valueBoolean
* **Field Description**: Manner of Death
  * **IJE Field**: MANNER
  * **FHIR Profile**: MannerOfDeath
  * **FHIR Field**: value
* **Field Description**: Was Autopsy performed
  * **IJE Field**: AUTOP
  * **FHIR Profile**: AutopsyPerformedIndicator
  * **FHIR Field**: value
* **Field Description**: Were Autopsy Findings Available to Complete the Cause of Death
  * **IJE Field**: AUTOPF
  * **FHIR Profile**: AutopsyPerformedIndicator
  * **FHIR Field**: component[autopsyResultsAvailable].value
* **Field Description**: Did Tobacco Use Contribute to Death?
  * **IJE Field**: TOBAC
  * **FHIR Profile**: TobaccoUseContributedToDeath
  * **FHIR Field**: value

#### Additional Logical Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Error: Invalid combination of **Field 1** and **Field 2**" will be returned for each invalid combination reported.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Field 1** | **Field 2** | | | | |
| **Description** | **IJE Field** | **Value** | **Description** | **IJE Field** | **Value** |
| Sex | SEX | Male | Pregnancy Status | PREG | **Not**'Not Applicable' |
| Was Autopsy performed | AUTOP | Yes | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF | 'Not Applicable' |
| Was Autopsy performed | AUTOP | No | Were Autopsy Findings Available to Complete the Cause of Death? | AUTOPF | **Not**'Not Applicable' |
| Date of Injury | DOI_YR, DOI_MO, DOI_DY | Greater than Date of Death | Date of Death | DOD_YR, DOD_MO, DOD_DY | Less than Date of Injury |
| Manner of Death | MANNER | Accident, Suicide, Homicide | Date of Injury | DOI_YR, DOI_MO, DOI_DY | Not Provided (1) |
| Manner of Death | MANNER | Accident, Suicide, Homicide | Place of Injury Literal | POILTRL | Not Provided (2) |
| Manner of Death | MANNER | Accident, Suicide, Homicide | Describe How Injury Occurred | HOWINJ | Not Provided (2) |

The fields DOI_YR, DOI_MO, DOI_DY, POILTRL and HOWINJ all map to the VRDR InjuryIncident profile. These fields are considered 'not provided' if no instance of the InjuryIncident profile is provided as part of the DeathRecord submission. If the Manner of Death requires information about an injury incident, and none is available, providing an instance of an Injury Incident profile with 'unknown' values for the required fields satisfies the data requirement.

If an InjuryIncident profile instance is provided, fields can be considered 'not provided' if:
 1) The date of injury is considered ‘not provided’ if the effective time value is missing, or it includes a PartialDateTime extension and any component of the date has a data absent reason of “temp-unknown” (equivalent to an IJE blank). A data absent reason with the code “unknown” (equivalent to all 9’s in IJE) will not cause this data validation check to fail. 
 2) The literal string fields HOWINJ and POILTRL are considered 'not provided' if an instance of the profile is provided, and the value (HOWINJ) or the component[ placeOfInjury].value (POILTRL) are not provided, or their value is blank.

#### Validation Errors

For many fields, the value provided must be one that is found in the corresponding VRDR Value Set for the field. Otherwise, an Error Message with a format of "Error: Unable to find **IJE Field** mapping for **FHIR Component** field value '**string**'" will be returned for each violation.

There are additional Errors that may be returned when a record cannot be accepted, including some IJE fields that are not retained by NCHS, but must be valid if provided.

| | | |
| :--- | :--- | :--- |
| **IJE Field** | **Error Message** | **Clarification** |
| BSTATE | Error: FHIR field BirthRecordState too long for IJE field BSTATE of length 2 | The birth state must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks).[https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs](https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs) |
| COD1A and OTHERCONDITION | The record is uncodeable. The record is missing important cause of death information. | When manner of death is not 'Pending' or 'Could Not Be Determined', then cause of death information must be included in the record by providing literal text for fields COD1A and/or OTHERCONDITION. |
| DETHNICE | Error: Unable to find IJE DETHNICE mapping for FHIR HispanicCode field value**'string'** | DETHNICE is a field that is returned to the jurisdictions in the multi-race file. If including in records to share as part of IJE, the values reported must be valid.[https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs](https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs) |
| DINSTI | Error: FHIR field DeathLocationName contains string too long for IJE field DINSTI of length 30 | The location of death string exceeds the 30-character limit for this field. |
| DSTATE | Error: FHIR field DeathLocationJurisdiction contains string too long for IJE field DSTATE of length 2 | DSTATE is a required field, and the value must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). |
| Error: JurisdictionID was not identified | | |
| DOD_YR | 4 digits number are expected | The year of the event must be a valid 4 numeric digit year (YYYY) without special characters or blanks. |
| Event Year | FHIR cannot process records from EventYear**year**; please resubmit via IJE | Until the 2022 data year is closed, NVSS may not be able to process older years via FHIR. |
| FHIR Bundle Event Year | FHIR BUNDLE Parameter event year should match the death record Death Year. | DOD_YR must agree with the year included in the FHIR BUNDLE parameter. |
| FHIR Bundle Source Endpoint | FHIR Bundle Source Endpoint is missing | The actual message source address or id needs to be specified for the endpoint. |
| FILENO (certificate number) | Certificate Number is missing, or the certificate length is greater than 6 | FILENO is a required field and must be exactly 6 digits in length. Only positive numbers are allowed for this field. |
| Certificate Number exceeds expected value | Unexpected high Certificate Numbers may be accepted for Medical Processing, but then rejected for Demographic Processing if the Certificate Number is not within the typical range for the Jurisdiction/Year/Event being submitted. You must first contact your VSS to adjust your expected ranges before re-submitting these records in order for them to be included in your Demographic File. | |
| IDOB_YR | Error: FHIR field BirthRecordYear contains string too long for IJE field IDOB_YR of length 4 | The year of birth must be a valid 4-digit numeric year (YYYY). |
| INDUST | Error: FHIR field UsualIndustry contains string …. too long for IJE field INDUST of length 40 | The decedent's industry literal exceeds the 40-character limit for this field. |
| OCCUP | Error: FHIR field UsualOccupation contains string … too long for IJE field OCCUP of length 40 | The decedent's occupation literal exceeds the 40-character limit for this field. |
| Record Length | The IJE version of the FHIR message did not reach the 1025 bytes characters required. Some fields are missing. | The Death Record is missing several important FHIR elements required to generate a complete IJE record. Review the record to determine which fields are missing. |
| SSN | Error: FHIR field SSN contains string …. which is not the expected length (without dashes or spaces) for IJE field SSN of length 9 | The Social Security Number (SSN) must be 9 numeric digits long (without dashes or spaces) to be accepted. |

#### Internal Validation Errors

The following error messages are internal validation errors and if you receive any of these, please contact NCHS.

| |
| :--- |
| An unexpected network error occurred. |
| Exception has been thrown by the target of an invocation. |
| Object reference not set to an instance of an object. |
| The network path was not found. |
| Unable to find the specified file. |

