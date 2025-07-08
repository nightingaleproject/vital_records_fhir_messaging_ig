### NCHS Notes on Production Use of VRDR STU2.2 and VRFM 1.0.1

Version 1.0

**Last updated** : May 28, 2025

**Table of Content**

[FHIR IGs for Mortality Data Submission to NCHS](#fhir-igs-for-mortality-and-natality-data-submission-to-nchs)

[VRDR STU2.2 Errata](#vrdr-stu22-errata)

[VRFM 1.0.1 Errata](#vrfm-101-errata)

## FHIR IGs for Mortality and Natality Data Submission to NCHS
Current submissions to NCHS used in production are based on the following FHIR IGs:
* [HL7 Vital Records Death Reporting STU2.2](https://hl7.org/fhir/us/vrdr/STU2.2/)
* [NCHS Vital Records FHIR Messaging v1.0.1](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/v1.0.1/index.html)

Periodically, NCHS will transition the submission process to use new published versions of these IGs and new IGs.

Testing events have begun based on the following FHIR IGs:
* [HL7 Birth and Fetal Death (BFDR) IG STU2.0](https://hl7.org/fhir/us/bfdr/index.html)
* [NCHS Vital Records FHIR Messaging v2.0.0](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/)

As with any software product or specification, bugs/issues will be identified between publication events.
The purpose of this document is to provide documentation about known bugs/issues/errata in the published specifications that implementers may need to successfully implement FHIR-based death record submission.

The following table summarizes the history of the IGs, correspondance to other resources, and their status.

| *Implementation Guide* | *Supporting VRFM Version* | *Supporting Software Version* | *Status as of June 2025* |
|------------------------------|--------|--------|------------|------|
| [VRDR STU2.2.0](https://hl7.org/fhir/us/vrdr/STU2.2/) | [VRFM STU1.0.1](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/v1.0.1/index.html) | VRDR-dotnet 4.x.x | Implemented and used in production. |
| [VRDR STU3.0.0](https://hl7.org/fhir/us/vrdr/STU3/) | [VRFM STU2.0.0](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/) | VRDR-dotnet 5.x.x | Not implemented for testing or production yet. |
| [BFDR STU2.0.0](https://hl7.org/fhir/us/bfdr/STU2/index.html) | [VRFM STU2.0.0](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/) | BFDR-dotnet 1.x.x | Testing events have begun.  |
| [VRCL STU2.0.0](https://hl7.org/fhir/us/vr-common-library/STU2/index.html) | [VRFM STU2.0.0](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/) | VR-dotnet 1.x.x | Used to support VRDR STU3.0.0 and BFDR STU2.0.0. |
{: .grid }


## VRDR STU2.2 Errata
* Handling of STATESP (State Specific field) in [Cause of Death Coded Bundle](https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-coded-bundle.html)
  * The [Cause of Death Coded Bundle](https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-cause-of-death-coded-bundle.html) is intended to be content equivalent to the Transax (TRX) coded cause of death data definition.   in VRDR STU2.2 one field - STATESP - that is sent by jurisdictions to NCHS was left out of the associated bundle.   This omission will not be rectified in VRDR STU2, but is included in VRDR STU3.  This field is sent by jurisdictions to NCHS, so jurisdictions should be in possession of the data element.  
* Description of State Auxiliary Identifiers (AUXNO1 and AUXNO2)
  * The State Auxiliary Identifiers are fields that are passed by the jurisdiction to NCHS and returned *unchanged* in the bundles associated with the death certificate.   The VRDR STU2.2 documentation describes them as integer-valued fields that are left-prefixed with zeroes.   That is inaccurate.   These are string fields of fixed length that NCHS stores, and returns, but does not check for format or content.   They are for use as the jurisdictions choose to use them.   The documentation of these fields is updated in VRDR STU3.   NCHS-provided software (e.g., vrdr-dotnet) will treat them as fixed length strings.
* Use of Inactivated SNOMEDCT Code [#103693007 "Diagnostic Procedure"](https://browser.ihtsdotools.org/?perspective=full&conceptId1=103693007&edition=MAIN/2024-06-01&release=&languages=en)
  * The code for the [VRDR STU2.2 Death Certification Procedure](https://hl7.org/fhir/us/vrdr/STU2.2/StructureDefinition-vrdr-death-certification.html) is SNOMEDCT [#103693007 "Diagnostic Procedure (procedure)"](https://browser.ihtsdotools.org/?perspective=full&conceptId1=103693007&edition=MAIN/2024-06-01&release=&languages=en).  This is a poor choice since it is not descriptive, and it is also current in "inactive" state.  This may cause validation errors or warnings on VRDR STU2.2 conformant data.   These errors or warnings should be ignored since an inactive SNOMEDCT code remains valid.   In VRDR STU3, the code has been changed to a much more descriptive and active code -- SNOMEDCT [#308646001 Death certification (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=308646001&edition=MAIN/2024-06-01&release=&languages=en.)

## VRFM 1.0.1 Errata
No errata have been identified.


