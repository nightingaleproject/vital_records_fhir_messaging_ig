//ExtractionErrorMessages

Instance: ExtractionErrorMessage-Example1
InstanceOf: ExtractionErrorMessage
Usage: #example
Description: "Extraction error message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, ExtractionErrorHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(OperationOutcome, Outcome-Example1)

//RuleSet: addentry(type, id)
//* entry[+].resource = {id}
//* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

//StatusMessages

Instance: StatusMessage-Example1
InstanceOf: StatusMessage
Usage: #example
Description: "Status message - Example1"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, StatusHeader-Example1)
* insert addentry(Parameters, StatusParameters-Example1)

//CauseofDeathCodingMessages

Instance: CauseOfDeathCodingMessage-Example1
InstanceOf: CauseOfDeathCodingMessage
Usage: #example
Description: "Cause of death coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CauseOfDeathCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

//CauseOfDeathCodingUpdateMessages

Instance: CauseOfDeathCodingUpdateMessage1
InstanceOf: CauseOfDeathCodingUpdateMessage
Usage: #example
Description: "Cause of Death Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CauseOfDeathCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

//DemographicsCodingMessage

Instance: DemographicsCodingMessage-Example1
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Cause of death coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: ParentalDemographicsCodingMessage-Example1
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Parental Demographics Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, ParentalDemographicsCodingHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

//DemographicsCodingUpdateMessage

Instance: DemographicsCodingUpdateMessage1
InstanceOf: DemographicsCodingUpdateMessage
Usage: #example
Description: "Demographic Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: ParentalDemographicsCodingUpdateMessage-Example1
InstanceOf: DemographicsCodingUpdateMessage
Usage: #example
Description: "Parental Demographics Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, ParentalDemographicsCodingUpdateHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

//IndustryOccupationCodingMessage

Instance: IndustryOccupationCodingMessage-Example1
InstanceOf: IndustryOccupationCodingMessage
Usage: #example
Description: "Industry Occupation coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, IndustryOccupationCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

//IndustryOccupationCodingUpdateMessage

Instance: IndustryOccupationCodingUpdateMessage1
InstanceOf: IndustryOccupationCodingUpdateMessage
Usage: #example
Description: "Industry Occupation Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, IndustryOccupationCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

//VoidMessages

Instance: VoidMessage-Example1
InstanceOf: VoidMessage
Usage: #example
Description: "Void message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, VoidHeader-Example1)
* insert addentry(Parameters,VoidParameters-Example1)

//DeathRecordSubmissionMessages

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Submission mesage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DeathRecordSubmissionHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
* insert addentry(Bundle, DummyDeathBundle)

//DeathRecordUpdateMessages

Instance: UpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Update message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, UpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

//DeathRecordAliasMessages

Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Usage: #example
Description: "Alias Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, AliasHeader-Example1)
* insert addentry(Parameters, AliasParameters-Example1)

//FetalDeathReportMessages

Instance: FetalDeathReportMessage-Example1
InstanceOf: FetalDeathReportMessage
Usage: #example
Description: "Fetal Death Report Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, FetalDeathReportHeader-Example1)
* insert addentry(Parameters, ParametersFD-Example2)
* insert addentry(Bundle, DummyBundle)

//FetalDeathReportUpdateMessages

Instance: FetalDeathReportUpdateMessage-Example1
InstanceOf: FetalDeathReportUpdateMessage
Usage: #example
Description: "Fetal Death Report Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, FetalDeathReportUpdateHeader-Example1)
* insert addentry(Parameters, ParametersFD-Example2)
* insert addentry(Bundle, DummyBundle)

//BirthReportMessages

Instance: BirthReportMessage-Example1
InstanceOf: BirthReportMessage
Usage: #example
Description: "Live Birth Report Message - Example"
* timestamp = "2022-08-20T00:00:00Z"
* insert addentry(Header, BirthReportHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

//BirthReportUpdateMessages

Instance: BirthReportUpdateMessage-Example1
InstanceOf: BirthReportUpdateMessage
Usage: #example
Description: "Live Birth Report Message Update - Example"
* timestamp = "2022-08-20T00:00:00Z"
* insert addentry(Header, BirthReportUpdateHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

//CodedCauseOfFetalDeathMessages

Instance: CodedCauseOfFetalDeathMessage-Example1
InstanceOf: CodedCauseOfFetalDeathMessage
Usage: #example
Description: "Coded Cause of Fetal Death Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CodedCauseOfFetalDeathHeader-Example1)
* insert addentry(Parameters, ParametersFD-Example2)
* insert addentry(Bundle, DummyBundle)

//CodedCauseOfFetalDeathUpdateMessages

Instance: CodedCauseOfFetalDeathUpdateMessage-Example1
InstanceOf: CodedCauseOfFetalDeathUpdateMessage
Usage: #example
Description: "Coded Cause of Fetal Death Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CodedCauseOfFetalDeathUpdateHeader-Example1)
* insert addentry(Parameters, ParametersFD-Example2)
* insert addentry(Bundle, DummyBundle)

//MaternalLinkageRequestMessages

Instance: MaternalLinkageRequestMessage-Example1
InstanceOf: MaternalLinkageRequestMessage
Usage: #example
Description: "Maternal Linkage Request Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageRequestHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)

//MaternalLinkageSubmissionMessage

Instance: MaternalLinkageSubmissionMessage-Example1
InstanceOf: MaternalLinkageSubmissionMessage
Usage: #example
Description: "Submission mesdage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageSubmissionHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
* insert addentry(Bundle, MaternalLinkageBundle-Birth)

//MaternalLinkageUpdateMessage

Instance: MaternalLinkageUpdateMessage-Example1
InstanceOf: MaternalLinkageUpdateMessage
Usage: #example
Description: "Update mesdage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageUpdateHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
* insert addentry(Bundle, MaternalLinkageBundle-Birth)





