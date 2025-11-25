# Artifacts Summary - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Message Profiles 

Message Profiles

| | |
| :--- | :--- |
| [Acknowledgement Message](StructureDefinition-VRM-AcknowledgementMessage.md) | Acknowledgement Message |
| [Birth Report Message](StructureDefinition-VRM-BirthReportMessage.md) | Message for reporting birth records |
| [Birth Report Update Message](StructureDefinition-VRM-BirthReportUpdateMessage.md) | Message for updating birth records |
| [Cause of Death Coding Message](StructureDefinition-VRM-CauseOfDeathCodingMessage.md) | Message for cause of death coding response to death records |
| [Cause Of Death Coding Update Message](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md) | Message for updating Cause Of Death coding response to death records |
| [Coded Cause of Fetal Death Message](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md) | Message for reporting coded cause of fetal death |
| [Coded Cause of Fetal Death Update Message](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.md) | Message for updating coded cause of fetal death |
| [Death Record Alias Message](StructureDefinition-VRM-DeathRecordAliasMessage.md) | Message for aliasing death records |
| [Death Record Submission Message](StructureDefinition-VRM-DeathRecordSubmissionMessage.md) | Message for submitting death records |
| [Death Record Update Message](StructureDefinition-VRM-DeathRecordUpdateMessage.md) | Message for updating death records |
| [Demographics Coding Message](StructureDefinition-VRM-DemographicsCodingMessage.md) | Message for demographics coding response to death records |
| [Demographics Coding Update Message](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md) | Message for updating Demographics coding response to death records |
| [Extraction Error Message](StructureDefinition-VRM-ExtractionErrorMessage.md) | Message for Errors during content extraction |
| [Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportMessage.md) | Message for reporting fetal death records |
| [Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportUpdateMessage.md) | Message for updating fetal death records |
| [Industry Occupation Coding Message](StructureDefinition-VRM-IndustryOccupationCodingMessage.md) | Message for industry occupation coding response to death records |
| [Industry Occupation Coding Update Message](StructureDefinition-VRM-IndustryOccupationCodingUpdateMessage.md) | Message for updating industry occupation coding response to death records |
| [Status Message](StructureDefinition-VRM-StatusMessage.md) | Message for sending status of DeathRecord processing |

### Message Header Profiles 

Message Header Profiles

| | |
| :--- | :--- |
| [Acknowledgement Header](StructureDefinition-VRM-AcknowledgementHeader.md) | Acknowledgement Header |
| [Alias Header](StructureDefinition-VRM-AliasHeader.md) | Alias Header |
| [Cause of Death Coding Header](StructureDefinition-VRM-CauseOfDeathCodingHeader.md) | Cause of Death Coding Header |
| [Cause of Death Coding Update Header](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.md) | Cause of Death Coding Update Header |
| [Demographics Coding Header](StructureDefinition-VRM-DemographicsCodingHeader.md) | Demographics Coding Header |
| [Demographics Coding Update Header](StructureDefinition-VRM-DemographicsCodingUpdateHeader.md) | Demographics Coding Update Header |
| [Extraction Error Header](StructureDefinition-VRM-ExtractionErrorHeader.md) | Extraction Error Message Header |
| [Industry Occupation Coding Header](StructureDefinition-VRM-IndustryOccupationCodingHeader.md) | Industry Occupation Coding Header |
| [Industy Occupation Coding Update Header](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.md) | Industry Occupation Coding Update Header |
| [Message Update Header](StructureDefinition-VRM-UpdateHeader.md) | Message Update Header |
| [Status Header](StructureDefinition-VRM-StatusHeader.md) | Status Header |
| [Submission Message Header](StructureDefinition-VRM-SubmissionHeader.md) | Message Submission Header |
| [Void Header](StructureDefinition-VRM-VoidHeader.md) | Void Header for all submission types |

### Message Parameter Profiles 

Message Parameter Profiles

| | |
| :--- | :--- |
| [Alias Message Parameters](StructureDefinition-VRM-AliasParameters.md) | Parameters for an Alias Message |
| [Message Parameters](StructureDefinition-VRM-MessageParameters.md) | Parameter set for most Messages. Parameters with all-caps names are defined as per the 2022 IJE specification. |
| [Status Message Parameters](StructureDefinition-VRM-StatusParameters.md) | Parameters for a Status Message |
| [Void Message Parameters](StructureDefinition-VRM-VoidParameters.md) | Parameters for a Void Message |

### Outcome Profiles 

| | |
| :--- | :--- |
| [Outcome Profile](StructureDefinition-VRM-Outcome.md) | Outcome profile to support profile-based slicing of bundles |

### Codesystems 

Codesystems

| | |
| :--- | :--- |
| [MessageHeader URI Values](CodeSystem-VRM-MessageHeaderURI-cs.md) | MessageHeader URI Values |

### Maternal Record Linkage Components 

Maternal Record Linkages

| | |
| :--- | :--- |
| [Birth Record Identifier Child](StructureDefinition-VRM-birth-record-identifier-child.md) | Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child. The subject is implicitly the Decedent (mother), whose death was related to the to the birth referenced by the identifier. |
| [Certificate Available Values](ValueSet-VRM-CertAvailable-vs.md) | Certificate Available Values |
| [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md) | Fetal Death Record Identifier (Observation). For use in Maternal Death. This includes the fetal death record identifier, the jurisdiction, and the birth year. The subject is implicitly the Decedent (mother), whose death was related to the fetal death referenced by the identifier. |
| [Local Coded Pregnancy Status](CodeSystem-VRM-coded-pregnancy-status-cs.md) | Codesystem for pregnancy status for cases not covered by SNOMEDCT. |
| [Maternal Linkage Content Bundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md) | Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent. |
| [Pregnancy Outcome Values](ValueSet-VRM-PregnancyOutcomes-vs.md) | Pregnancy Outcome Values |
| [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md) | Parameter for most recent pregnancy during year before decease. |

### Maternal Record Linkage Messages 

Maternal Record Linkage Messages

| | |
| :--- | :--- |
| [Maternal Linkage Request Message](StructureDefinition-VRM-MaternalLinkageRequestMessage.md) | Message for requesting maternal linkage |
| [Maternal Linkage Submission Message](StructureDefinition-VRM-MaternalLinkageSubmissionMessage.md) | Message for submitting maternal linkage |
| [Maternal Linkage Update Message](StructureDefinition-VRM-MaternalLinkageUpdateMessage.md) | Message for update maternal linkage |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Maternal Linkage Request Message Header](StructureDefinition-VRM-MaternalLinkageRequestHeader.md) | Maternal Linkage Request Header |
| [Placeholder Profile for profile-based slicing](StructureDefinition-VRM-MessageBundle.md) | Placeholder for profile-based slicing |
| [Void Message (for mortality, birth, and fetal death)](StructureDefinition-VRM-VoidMessage.md) | Message for voiding mortality, birth, and fetal death records. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Acknowledgement MessageHeader URI Values](ValueSet-VRM-AcknowledgementHeaderURI-vs.md) | Acknowledgement MessageHeader URI Values |
| [Cause of Death Coding MessageHeader URI Values](ValueSet-VRM-CauseOfDeathCodingHeaderURI-vs.md) | Cause of Death Coding MessageHeader URI Values |
| [Cause of Death Coding Update MessageHeader URI Values](ValueSet-VRM-CauseOfDeathCodingUpdateHeaderURI-vs.md) | Cause of Death Coding Update MessageHeader URI Values |
| [Demographics Coding MessageHeader URI Values](ValueSet-VRM-DemographicsCodingHeaderURI-vs.md) | Demographics Coding MessageHeader URI Values |
| [Demographics Coding Update MessageHeader URI Values](ValueSet-VRM-DemographicsCodingUpdateHeaderURI-vs.md) | Demographics Coding Update MessageHeader URI Values |
| [ExtractionError MessageHeader URI Values](ValueSet-VRM-ExtractionErrorHeaderURI-vs.md) | ExtractionError MessageHeader URI Values |
| [Industry and Occupation MessageHeader URI Values](ValueSet-VRM-IndustryOccupationHeaderURI-vs.md) | Industry and Occupation MessageHeader URI Values |
| [Industry and Occupation Update MessageHeader URI Values](ValueSet-VRM-IndustryOccupationUpdateHeaderURI-vs.md) | Industry and Occupation Update MessageHeader URI Values |
| [Payload Version Identifier Values](ValueSet-Payload-version-vs.md) | Payload Version Identifier Values |
| [Request MessageHeader URI Values](ValueSet-VRM-RequestHeaderURI-vs.md) | Request MessageHeader URI Values |
| [Status Codes Values](ValueSet-VRM-Status-vs.md) | Status Codes Values |
| [Status MessageHeader URI Values](ValueSet-VRM-StatusHeaderURI-vs.md) | Status MessageHeader URI Values |
| [Submission MessageHeader URI Values](ValueSet-VRM-SubmissionHeaderURI-vs.md) | Submission MessageHeader URI Values |
| [Update MessageHeader URI Values](ValueSet-VRM-UpdateHeaderURI-vs.md) | Update MessageHeader URI Values |
| [Void MessageHeader URI Values](ValueSet-VRM-VOIDHeaderURI-vs.md) | Void MessageHeader URI Values |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Local Observation Identifiers](CodeSystem-VRM-observation-cs.md) | Codesystem for local observation identifiers. |
| [Payload Version Identifier Values](CodeSystem-Payload-version-cs.md) | Codesystem for Payload Version Identifier Values. Only versions that are in production use are listed. |
| [Status Codes Values](CodeSystem-VRM-Status-cs.md) | Status Codes Values |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AcknowledgementHeader-Example1](MessageHeader-AcknowledgementHeader-Example1.md) | Acknowledgement Header: Example |
| [AcknowledgementHeader-Example2](MessageHeader-AcknowledgementHeader-Example2.md) | Acknowledgement Header: Example with warnings |
| [AcknowledgementMessage-Example1](Bundle-AcknowledgementMessage-Example1.md) | Acknowledgement message - Example |
| [AcknowledgementMessage-Example2](Bundle-AcknowledgementMessage-Example2.md) | Acknowledgement message with warnings- Example |
| [AliasHeader-Example1](MessageHeader-AliasHeader-Example1.md) | Alias Message Header- Example |
| [AliasParameters-Example1](Parameters-AliasParameters-Example1.md) | Alias Message Parameters- Example |
| [BirthRecordIdentifierChild-Example1](Observation-BirthRecordIdentifierChild-Example1.md) | BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number |
| [BirthRecordIdentifierChild-Example2](Observation-BirthRecordIdentifierChild-Example2.md) | BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number |
| [BirthRecordIdentifierChild-ExtensiveExample1](Observation-BirthRecordIdentifierChild-ExtensiveExample1.md) | BirthRecordIdentifierChild-ExtensiveExample - identifier of the decedent's child's birth certificate number |
| [BirthRecordIdentifierChild-ExtensiveExample2](Observation-BirthRecordIdentifierChild-ExtensiveExample2.md) | BirthRecordIdentifierChild-ExtensiveExample1 - identifier of the decedent's child's birth certificate number |
| [BirthRecordIdentifierChildNoCert-Example1](Observation-BirthRecordIdentifierChildNoCert-Example1.md) | BirthRecordIdentifierChildNoCert-Example1 - identifier of the decedent's child's birth certificate number |
| [BirthReportHeader-Example1](MessageHeader-BirthReportHeader-Example1.md) | Header for Birth Report Message - Example |
| [BirthReportMessage-Example1](Bundle-BirthReportMessage-Example1.md) | Live Birth Report Message - Example |
| [BirthReportUpdateHeader-Example1](MessageHeader-BirthReportUpdateHeader-Example1.md) | Header for Birth Report Message Update - Example |
| [BirthReportUpdateMessage-Example1](Bundle-BirthReportUpdateMessage-Example1.md) | Live Birth Report Message Update - Example |
| [CauseOfDeathCodingHeader-Example1](MessageHeader-CauseOfDeathCodingHeader-Example1.md) | Header for Cause of Death Coding Message - Example1- coded content only |
| [CauseOfDeathCodingMessage-Example1](Bundle-CauseOfDeathCodingMessage-Example1.md) | Cause of death coding message - Example1 – coded content only |
| [CauseOfDeathCodingUpdateHeader-Example1](MessageHeader-CauseOfDeathCodingUpdateHeader-Example1.md) | Header for Cause Of Death Coding Update Message - Example |
| [CauseOfDeathCodingUpdateMessage1](Bundle-CauseOfDeathCodingUpdateMessage1.md) | Cause of Death Coding update message - Example |
| [CodedCauseOfFetalDeathHeader-Example1](MessageHeader-CodedCauseOfFetalDeathHeader-Example1.md) | Header for Coded Cause of Fetal Death Message - Example |
| [CodedCauseOfFetalDeathMessage-Example1](Bundle-CodedCauseOfFetalDeathMessage-Example1.md) | Coded Cause of Fetal Death Message - Example |
| [CodedCauseOfFetalDeathUpdateHeader-Example1](MessageHeader-CodedCauseOfFetalDeathUpdateHeader-Example1.md) | Header for Coded Cause of Fetal Death Message Update - Example |
| [CodedCauseOfFetalDeathUpdateMessage-Example1](Bundle-CodedCauseOfFetalDeathUpdateMessage-Example1.md) | Coded Cause of Fetal Death Message Update - Example |
| [DeathRecordAliasMessage-Example1](Bundle-DeathRecordAliasMessage-Example1.md) | Alias Message - Example |
| [DeathRecordSubmissionHeaderExample1](MessageHeader-DeathRecordSubmissionHeaderExample1.md) | Header for Death Record Submission - Example |
| [DeathRecordSubmissionMessage-Example1](Bundle-DeathRecordSubmissionMessage-Example1.md) | Submission mesage - Example |
| [DemographicsCodingHeader-Example1](MessageHeader-DemographicsCodingHeader-Example1.md) | Header for Demographic Coding Message - Example |
| [DemographicsCodingMessage-Example1](Bundle-DemographicsCodingMessage-Example1.md) | Cause of death coding message - Example1 – coded content only |
| [DemographicsCodingUpdateHeader-Example1](MessageHeader-DemographicsCodingUpdateHeader-Example1.md) | Header for Demographic Coding Update Message - Example |
| [DemographicsCodingUpdateMessage1](Bundle-DemographicsCodingUpdateMessage1.md) | Demographic Coding update message - Example |
| [DummyBundle](Bundle-DummyBundle.md) | Placeholder for all content sent in messages |
| [DummyDeathBundle](Bundle-DummyDeathBundle.md) | Placeholder for death record |
| [ExtractionErrorHeader-Example1](MessageHeader-ExtractionErrorHeader-Example1.md) | Header for Extraction Error Message - Example |
| [ExtractionErrorMessage-Example1](Bundle-ExtractionErrorMessage-Example1.md) | Extraction error message - Example |
| [FetalDeathRecordIdentifier-Example1](Observation-FetalDeathRecordIdentifier-Example1.md) | FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record |
| [FetalDeathRecordIdentifier-Example2](Observation-FetalDeathRecordIdentifier-Example2.md) | FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record |
| [FetalDeathRecordIdentifier-ExtensiveExample1](Observation-FetalDeathRecordIdentifier-ExtensiveExample1.md) | FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record |
| [FetalDeathRecordIdentifier-ExtesnvieExample2](Observation-FetalDeathRecordIdentifier-ExtesnvieExample2.md) | FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record, certificate not available |
| [FetalDeathRecordIdentifierNoCert-Example3](Observation-FetalDeathRecordIdentifierNoCert-Example3.md) | FetalDeathRecordIdentifierNoCert-Example3 - missing identifier of the decedent's fetus's fetal death record |
| [FetalDeathRecordIdentifierNoCert-Example4](Observation-FetalDeathRecordIdentifierNoCert-Example4.md) | FetalDeathRecordIdentifierNoCert-Example4 - certificate pending |
| [FetalDeathReportHeader-Example1](MessageHeader-FetalDeathReportHeader-Example1.md) | Header for Fetal Death Report Message - Example |
| [FetalDeathReportMessage-Example1](Bundle-FetalDeathReportMessage-Example1.md) | Fetal Death Report Message - Example |
| [FetalDeathReportUpdateHeader-Example1](MessageHeader-FetalDeathReportUpdateHeader-Example1.md) | Header for Fetal Death Report Message Update - Example |
| [FetalDeathReportUpdateMessage-Example1](Bundle-FetalDeathReportUpdateMessage-Example1.md) | Fetal Death Report Message Update - Example |
| [IndustryOccupationCodingHeader-Example1](MessageHeader-IndustryOccupationCodingHeader-Example1.md) | Header for Industry Occupation Coding Message - Example |
| [IndustryOccupationCodingMessage-Example1](Bundle-IndustryOccupationCodingMessage-Example1.md) | Industry Occupation coding message - Example1 – coded content only |
| [IndustryOccupationCodingUpdateHeader-Example1](MessageHeader-IndustryOccupationCodingUpdateHeader-Example1.md) | Header for Industry Occupation Coding Update Message - Example |
| [IndustryOccupationCodingUpdateMessage1](Bundle-IndustryOccupationCodingUpdateMessage1.md) | Industry Occupation Coding update message - Example |
| [MaternalLinkageBundle-Birth](Bundle-MaternalLinkageBundle-Birth.md) | MaternalLinkageContentBundle-Birth |
| [MaternalLinkageBundle-BirthNoCert](Bundle-MaternalLinkageBundle-BirthNoCert.md) | MaternalLinkageContentBundle-Birth with no certificate |
| [MaternalLinkageBundle-BirthPendingCert](Bundle-MaternalLinkageBundle-BirthPendingCert.md) | MaternalLinkageContentBundle-Birth with pending certificate |
| [MaternalLinkageBundle-EctopicPregnancy](Bundle-MaternalLinkageBundle-EctopicPregnancy.md) | MaternalLinkageContentBundle-Ectopic Pregnancy |
| [MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert.md) | MaternalLinkageContentBundle-Plural Birth and Fetal Death with and without Certificates-extensive example |
| [MaternalLinkageBundle-FetalDeathWithCertPending](Bundle-MaternalLinkageBundle-FetalDeathWithCertPending.md) | MaternalLinkageContentBundle-Fetal Death with Cert Pending |
| [MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert.md) | MaternalLinkageContentBundle-Plural Birth and Fetal Death with and without Certificates |
| [MaternalLinkageBundle-PluralBirthWithCert](Bundle-MaternalLinkageBundle-PluralBirthWithCert.md) | MaternalLinkageContentBundle-Pural Birth with certificate |
| [MaternalLinkageRequestHeaderExample1](MessageHeader-MaternalLinkageRequestHeaderExample1.md) | Header for Maternal Linkage Request - Example |
| [MaternalLinkageRequestMessage-Example1](Bundle-MaternalLinkageRequestMessage-Example1.md) | Maternal Linkage Request Message - Example |
| [MaternalLinkageSubmissionHeaderExample1](MessageHeader-MaternalLinkageSubmissionHeaderExample1.md) | Header for Maternal Linkage Submission - Example |
| [MaternalLinkageSubmissionMessage-Example1](Bundle-MaternalLinkageSubmissionMessage-Example1.md) | Submission mesdage - Example |
| [MaternalLinkageUpdateHeaderExample1](MessageHeader-MaternalLinkageUpdateHeaderExample1.md) | Header for Maternal Linkage Update - Example |
| [MaternalLinkageUpdateMessage-Example1](Bundle-MaternalLinkageUpdateMessage-Example1.md) | Update mesdage - Example |
| [Outcome-Example1](OperationOutcome-Outcome-Example1.md) | Extraction Error Outcome - Example |
| [Outcome-Example2](OperationOutcome-Outcome-Example2.md) | Extraction Warning Outcome - Example |
| [Parameters-Example1](Parameters-Parameters-Example1.md) | Parameters for Submission: Example |
| [ParametersBirth-Example1](Parameters-ParametersBirth-Example1.md) | Parameters for Submission: Example |
| [ParametersDeathExample1](Parameters-ParametersDeathExample1.md) | Parameters for Submission: Example |
| [ParametersFD-Example2](Parameters-ParametersFD-Example2.md) | Parameters for Submission: Example |
| [ParametersLinkage-EctopicPregnancy](Parameters-ParametersLinkage-EctopicPregnancy.md) | RecentPregnancyParameters - EctopicPregnancy |
| [ParametersLinkage-Extensive-PluralBirthAndFetalDeath](Parameters-ParametersLinkage-Extensive-PluralBirthAndFetalDeath.md) | RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert - extensive example |
| [ParametersLinkage-FetalDeathWithCertPending](Parameters-ParametersLinkage-FetalDeathWithCertPending.md) | RecentPregnancyParameters - FetalDeathWithCertificatePending |
| [ParametersLinkage-LiveBirthWithCert](Parameters-ParametersLinkage-LiveBirthWithCert.md) | RecentPregnancyParameters - LiveBirthWithCert |
| [ParametersLinkage-LiveBirthWithPendingCert](Parameters-ParametersLinkage-LiveBirthWithPendingCert.md) | RecentPregnancyParameters - LiveBirthWithPendingCert |
| [ParametersLinkage-LiveBirthWithoutCert](Parameters-ParametersLinkage-LiveBirthWithoutCert.md) | RecentPregnancyParameters - LiveBirthWithOutCert |
| [ParametersLinkage-PluralBirthAndFetalDeath](Parameters-ParametersLinkage-PluralBirthAndFetalDeath.md) | RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert |
| [ParametersLinkage-PluralBirthWithCert](Parameters-ParametersLinkage-PluralBirthWithCert.md) | RecentPregnancyParameters - PluralBirthWithCert |
| [ParentalDemographicsCodingHeader-Example1](MessageHeader-ParentalDemographicsCodingHeader-Example1.md) | Header for Parental Demographics Message - Example |
| [ParentalDemographicsCodingMessage-Example1](Bundle-ParentalDemographicsCodingMessage-Example1.md) | Parental Demographics Message - Example |
| [ParentalDemographicsCodingUpdateHeader-Example1](MessageHeader-ParentalDemographicsCodingUpdateHeader-Example1.md) | Header for Parental Demographics Message Update - Example |
| [ParentalDemographicsCodingUpdateMessage-Example1](Bundle-ParentalDemographicsCodingUpdateMessage-Example1.md) | Parental Demographics Message Update - Example |
| [StatusHeader-Example1](MessageHeader-StatusHeader-Example1.md) | Parameters for Status: Example1 |
| [StatusMessage-Example1](Bundle-StatusMessage-Example1.md) | Status message - Example1 |
| [StatusParameters-Example1](Parameters-StatusParameters-Example1.md) | Parameters for Status: Example |
| [SubmissionHeader-Example1](MessageHeader-SubmissionHeader-Example1.md) | Header for Submission - Example |
| [UpdateHeader-Example1](MessageHeader-UpdateHeader-Example1.md) | Header for Update: Example |
| [UpdateMessage-Example1](Bundle-UpdateMessage-Example1.md) | Update message - example |
| [VoidHeader-Example1](MessageHeader-VoidHeader-Example1.md) | Parameters for Void: Example |
| [VoidMessage-Example1](Bundle-VoidMessage-Example1.md) | Void message - example |
| [VoidParameters-Example1](Parameters-VoidParameters-Example1.md) | Parameters for Void: Example |

