# Business Rules for Maternal Linkages - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Business Rules for Maternal Linkages**

## Business Rules for Maternal Linkages

### Business Rules for Maternal Linkage Records

Version 1.0

**Last updated** : June 24, 2025

**Table of Content**

[Required Fields for All Linkages](#required-fields-for-all-linkages)

[Required Fields for Live Births](#required-fields-for-live-births)

[Required Fields for Fetal Deaths](#required-fields-for-fetal-deaths)

[Additional Logical Checks](#additional-logical-checks)

[Additional Notes](#additional-notes)

#### Required Fields for All Linkages

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

* **Field Description**: Decedent Certificate Number
  * **FHIR Profile**: MaternalLinkageContentBundle
  * **FHIR Field**: identifier.extension[certificateNumber].value
* **Field Description**: Record Identifier
  * **FHIR Profile**: MaternalLinkageContentBundle
  * **FHIR Field**: identifier.value
* **Field Description**: Correctness of Pregnancy Status
  * **FHIR Profile**: RecentPregnancyParameters
  * **FHIR Field**: parameter[preg_status_is_correct].value[X]

#### Required Fields for Live Births

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

* **Field Description**: Certificate Availability for Birth
  * **FHIR Profile**: BirthRecordIdentifierChild
  * **FHIR Field**: component[cert_available].value[x]

#### Required Fields for Fetal Deaths

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

* **Field Description**: Certificate Availability for Fetal Death
  * **FHIR Profile**: FetalDeathRecordIdentifier
  * **FHIR Field**: component[cert_available].value[x]

#### Additional Logical Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Error: Invalid combination of **Field 1** and **Field 2**" will be returned for each invalid combination reported.

| | | | |
| :--- | :--- | :--- | :--- |
| **Field 1** | **Field 2** | | |
| **Description** | **Value** | **Description** | **Value** |
| Decedent Death Date | Greater than Date of Birth or Fetal Death | Birth or Fetal Death Date | Less than Decedent Death Date |
| Birth Plurality or Fetal Death Plurality | 0 | Birth Record Identifier Child or Fetal Death Record Identifier | **Not**'Not Provided (1) |
| Birth Plurality or Fetal Death Plurality | Greater than or equal to 1 | Birth Record Identifier Child or Fetal Death Record Identifier | Not Provided (2) |
| Pregnancy Outcome | Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, Molar Pregnancy | Birth Record Identifier Child, Fetal Death Record Identifier | **Not**'Not Provided (3) |
| Pregnancy Outcome | Fetal Death, Live Birth | Birth Record Identifier Child, Fetal Death Record Identifier (4) | Not Provided |
| Pregnancy Outcome | Plural Fetal Death and Birth | Birth Record Identifier Child, Fetal Death Record Identifier | Both Not Provided (5) |
| Certificate Availability | Yes | Child’s Birth Record Number, Birth Jurisdiction, Birth Year, Index | Not Provided (1) |

The following fields refer to the presence of BirthRecordIdentifier and/or FetalDeathRecordIdentifier instances as part of the MaternalLinkageBundle submission:

1. If the Birth Plurality or Fetal Death Plurality value is 0, there should be no instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
1. If the Birth Plurality or Fetal Death Plurality value is greater than or equal to 1, there should be at least one instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
1. If the Pregnancy Outcome value is Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, or Molar Pregnancy, there should be no instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
1. If the Pregnancy Outcome value is Fetal Death or Live Birth, there should be at least one instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
1. If the Pregnancy Outcome value is Plural Fetal Death and Birth, there should be at least one instance of the BirthRecordIdentifierChild and the FetalDeathRecordIdentifier in the MaternalLinkageBundle.

If BirthRecordIdentifierChild or FetalDeathRecordIdentifier profile instance is provided and the Certificate Availability value is 'Yes', fields can be considered 'not provided' if:

1. The Child's Birth Record Number, Birth Jurisdiction, Birth Year, and Index values are missing. A data absent reason with the code “unknown” will not cause this data validation check to fail.

#### Additional Notes

VROs should resubmit complete data when making updates

