# Download Specification - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Download Specification**

## Download Specification

### Downloads

You can download:

* [this entire guide](full-ig.zip)
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on Nightingale GitHub [https://github.com/nightingaleproject/vital_records_fhir_messaging_ig](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig).

#### Cross Version Analysis

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (vital-records-fhir-messaging.r4)](package.r4.tgz) and [R4B (vital-records-fhir-messaging.r4b)](package.r4b.tgz) are available.

#### Dependency Table








#### Globals Table

*There are no Global profiles defined*

#### IP Statements

This publication includes IP covered under the following statements.

* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [BirthRecordIdentifierChild](StructureDefinition-VRM-birth-record-identifier-child.md), [Bundle/MaternalLinkageBundle-Birth](Bundle-MaternalLinkageBundle-Birth.md)...Show 13 more,[Bundle/MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert.md),[Bundle/MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert.md),[Bundle/MaternalLinkageBundle-PluralBirthWithCert](Bundle-MaternalLinkageBundle-PluralBirthWithCert.md),[Bundle/MaternalLinkageSubmissionMessage-Example1](Bundle-MaternalLinkageSubmissionMessage-Example1.md),[Bundle/MaternalLinkageUpdateMessage-Example1](Bundle-MaternalLinkageUpdateMessage-Example1.md),[FetalDeathRecordIdentifier](StructureDefinition-VRM-fetal-death-record-identifier.md),[Observation/BirthRecordIdentifierChild-Example1](Observation-BirthRecordIdentifierChild-Example1.md),[Observation/BirthRecordIdentifierChild-Example2](Observation-BirthRecordIdentifierChild-Example2.md),[Observation/BirthRecordIdentifierChild-ExtensiveExample1](Observation-BirthRecordIdentifierChild-ExtensiveExample1.md),[Observation/BirthRecordIdentifierChild-ExtensiveExample2](Observation-BirthRecordIdentifierChild-ExtensiveExample2.md),[Observation/FetalDeathRecordIdentifier-Example1](Observation-FetalDeathRecordIdentifier-Example1.md),[Observation/FetalDeathRecordIdentifier-Example2](Observation-FetalDeathRecordIdentifier-Example2.md)and[Observation/FetalDeathRecordIdentifier-ExtensiveExample1](Observation-FetalDeathRecordIdentifier-ExtensiveExample1.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://tx.fhir.org/r4/ValueSet/snomedct): [Bundle/MaternalLinkageBundle-Birth](Bundle-MaternalLinkageBundle-Birth.md), [Bundle/MaternalLinkageBundle-BirthNoCert](Bundle-MaternalLinkageBundle-BirthNoCert.md)...Show 14 more,[Bundle/MaternalLinkageBundle-BirthPendingCert](Bundle-MaternalLinkageBundle-BirthPendingCert.md),[Bundle/MaternalLinkageBundle-EctopicPregnancy](Bundle-MaternalLinkageBundle-EctopicPregnancy.md),[Bundle/MaternalLinkageBundle-FetalDeathWithCertPending](Bundle-MaternalLinkageBundle-FetalDeathWithCertPending.md),[Bundle/MaternalLinkageBundle-PluralBirthWithCert](Bundle-MaternalLinkageBundle-PluralBirthWithCert.md),[Bundle/MaternalLinkageSubmissionMessage-Example1](Bundle-MaternalLinkageSubmissionMessage-Example1.md),[Bundle/MaternalLinkageUpdateMessage-Example1](Bundle-MaternalLinkageUpdateMessage-Example1.md),[Parameters/ParametersLinkage-EctopicPregnancy](Parameters-ParametersLinkage-EctopicPregnancy.md),[Parameters/ParametersLinkage-FetalDeathWithCertPending](Parameters-ParametersLinkage-FetalDeathWithCertPending.md),[Parameters/ParametersLinkage-LiveBirthWithCert](Parameters-ParametersLinkage-LiveBirthWithCert.md),[Parameters/ParametersLinkage-LiveBirthWithPendingCert](Parameters-ParametersLinkage-LiveBirthWithPendingCert.md),[Parameters/ParametersLinkage-LiveBirthWithoutCert](Parameters-ParametersLinkage-LiveBirthWithoutCert.md),[Parameters/ParametersLinkage-PluralBirthWithCert](Parameters-ParametersLinkage-PluralBirthWithCert.md),[PregnancyOutcomesVS](ValueSet-VRM-PregnancyOutcomes-vs.md)and[RecentPregnancyParameters](StructureDefinition-VRM-RecentPregnancyParameters.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [NullFlavor](http://terminology.hl7.org/7.0.0/CodeSystem-v3-NullFlavor.html): [BirthRecordIdentifierChild](StructureDefinition-VRM-birth-record-identifier-child.md), [Bundle/MaternalLinkageBundle-FetalDeathWithCertPending](Bundle-MaternalLinkageBundle-FetalDeathWithCertPending.md)...Show 5 more,[CertAvailableVS](ValueSet-VRM-CertAvailable-vs.md),[FetalDeathRecordIdentifier](StructureDefinition-VRM-fetal-death-record-identifier.md),[Observation/FetalDeathRecordIdentifierNoCert-Example4](Observation-FetalDeathRecordIdentifierNoCert-Example4.md),[PregnancyOutcomesVS](ValueSet-VRM-PregnancyOutcomes-vs.md)and[RecentPregnancyParameters](StructureDefinition-VRM-RecentPregnancyParameters.md)


