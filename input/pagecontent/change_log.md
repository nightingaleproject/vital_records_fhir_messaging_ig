### Version 3.0.0-preview 1
* Added support for [Maternal Linkage records for Mortality](maternallinkage.html)

### Version 2.0.0
* Eliminated direct dependency on content (BFDR, VRDR) IGs.
* Added support for Birth, Fetal Death, and Industry/Occupation exchange.  Support for death records should be fully backwards compatible.
* Added payload version parameter to [MessageParameters] to support messages from all known versions of vital records IGs.
* Enhanced [AcknowledgementMessage] to include optional content warnings.
* Reorganized FSH content to align with BFDR and VRDR.
* Added value in the "Status Codes Values" codeystem for "non-codeable."

### Version 1.0.1
* Simplified examples of VRDR data used by the VRFM IG.  These were a constant battle to maintain as the IG publisher's validation process evolved.  The examples have been stripped down to the absolute minimum.  No changes should have occured to the technical content of this IG, only to the VRDR-based examples used to illustrate the exchange of content.
* Changed the dependency on VRDR to the current version to work around IG Publisher issues.   
### Version 1.0.0
* Changed version number to 1.0 to reflect the maturity and stability of the content of this Implementation Guide and its production use.   No material changes were made between versions 0.9.1 and 1.0.0.
* Added further clarification for logical checks in the [NCHS business rules](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/business_rules.html) regarding injury incident fields.
### Changes prior to 1.0.0
* Incorporated [NCHS business rules](https://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/business_rules.htm) for death record submissions.
* Added note regarding lack of support for [extraction error messages](message.html#message-extraction-failures) by NCHS API (November 2022)
* Added Alias Message based on input from Veronique, Krynn, and Aaina in February 2021
* Changed canonical URL to http://cdc.gov/nchs/nvss/fhir/vital-records-messaging
* All messages use the same basic parameter structure.  Not sure this was the case previously.
* Added Status Message to (initially) report back that a deathrecord will be manually coded.



{% include markdown-link-references.md %}
