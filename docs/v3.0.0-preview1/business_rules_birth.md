# Business Rules for Birth Record Submissions - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Business Rules for Birth Record Submissions**

## Business Rules for Birth Record Submissions

### Business Rules for Birth Record Submissions

Version 0.1

**Last updated** : August 9, 2024

**Table of Content**

[Required Fields](#required-fields)

[Additional Checks](#additional-checks)

[Internal Validation Errors](#internal-validation-errors)

#### Required Fields

The following fields are required for a valid birth record submission to be processed. An Error Message with a format of "Error: Unable to find **IJE Field** required element" will be returned for each missing field.

* **Field Description**: State, U.S. Territory or Canadian Province of Death - code
  * **IJE Field**: BSTATE
  * **FHIR Profile**: State, U.S. Territory or Canadian Province of Birth (Infant) - code
  * **FHIR Field**: address.state**or**address.state.extension[nationalReportingJurisdictionId]If both are provided, the extension will override. Unless you are NYC, recommend using address.state**only.**
* **Field Description**: Certificate Number
  * **IJE Field**: FILENO
  * **FHIR Profile**: BundleDocumentBirthReport
  * **FHIR Field**: identifier.extension[certificateNumber].value
* **Field Description**: Date of Birth (Infant)--Year
  * **IJE Field**: IDOB_YR
  * **FHIR Profile**: PatientChildVitalRecords
  * **FHIR Field**: birthDate.value
* **Field Description**: Date of Birth (Infant)--Month
  * **IJE Field**: IDOB_MO
  * **FHIR Profile**: PatientChildVitalRecords
  * **FHIR Field**: birthDate.value
* **Field Description**: Date of Birth (Infant)--Day
  * **IJE Field**: IDOB_DY
  * **FHIR Profile**: PatientChildVitalRecords
  * **FHIR Field**: birthDate.value

#### Additional Checks

Records that contain the minimal set of required fields will be processed by NCHS. Reports on the completeness of each record will be shared with jurisdictions through the same channels as is done for IJE-formatted records. This process may be revised to introduce more stringent checking of submissions as NCHS and Jurisdictions gain experience with the process.

#### Internal Validation Errors

The following error messages are internal validation errors and if you receive any of these, please contact NCHS.

| |
| :--- |
| An unexpected network error occurred. |
| Exception has been thrown by the target of an invocation. |
| Object reference not set to an instance of an object. |
| The network path was not found. |
| Unable to find the specified file. |

