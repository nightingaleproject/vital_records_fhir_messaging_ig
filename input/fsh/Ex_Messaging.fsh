Instance: Outcome-Example1
InstanceOf: Outcome
Usage: #example
Description: "Extraction Error Outcome - Example"
* issue.severity = #error
* issue.code = #structure
* issue.diagnostics = "Expected 1 or more Cause of Death Condition resources, received 0."

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

Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message - Example"
* timestamp = "2021-05-20T00:00:00Z"
//* insert addentry(Header, AcknowledgementHeader-Example1)
//* insert addentry(Parameters, Parameters-Example1)
* entry[+].resource = AcknowledgementHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/AcknowledgementHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"

Instance: StatusMessage-Example1
InstanceOf: StatusMessage
Usage: #example
Description: "Status message - Example1"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, StatusHeader-Example1)
* insert addentry(Parameters, StatusParameters-Example1)

Instance: CauseOfDeathCodingMessage-Example1
InstanceOf: CauseOfDeathCodingMessage
Usage: #example
Description: "Cause of death coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CauseOfDeathCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)


Instance: CauseOfDeathCodingUpdateMessage1
InstanceOf: CauseOfDeathCodingUpdateMessage
Usage: #example
Description: "Cause of Death Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CauseOfDeathCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)


Instance: DemographicsCodingMessage-Example1
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Cause of death coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)


Instance: DemographicsCodingUpdateMessage1
InstanceOf: DemographicsCodingUpdateMessage
Usage: #example
Description: "Demographic Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: IndustryOccupationCodingMessage-Example1
InstanceOf: IndustryOccupationCodingMessage
Usage: #example
Description: "Industry Occupation coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, IndustryOccupationCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)


Instance: IndustryOccupationCodingUpdateMessage1
InstanceOf: IndustryOccupationCodingUpdateMessage
Usage: #example
Description: "Industry Occupation Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, IndustryOccupationCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Usage: #example
Description: "Void message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, VoidHeader-Example1)
* insert addentry(Parameters,VoidParameters-Example1)

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Submission mesage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, SubmissionHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: UpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Update message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, UpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Usage: #example
Description: "Alias Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, AliasHeader-Example1)
* insert addentry(Parameters, AliasParameters-Example1)

Instance: AliasHeader-Example1
InstanceOf: AliasHeader
Usage: #example
Description: "Alias Message Header- Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_alias"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(AliasParameters-Example1)
* insert addReference(focus, Parameters, AliasParameters-Example1)


Instance: FetalDeathReportMessage-Example1
InstanceOf: FetalDeathReportMessage
Usage: #example
Description: "Fetal Death Report Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, FetalDeathReportHeader-Example1)
* insert addentry(Parameters, Parameters-Example2)
* insert addentry(Bundle, DummyBundle)

Instance: FetalDeathReportUpdateMessage-Example1
InstanceOf: FetalDeathReportUpdateMessage
Usage: #example
Description: "Fetal Death Report Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, FetalDeathReportUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example2)
* insert addentry(Bundle, DummyBundle)


Instance: BirthReportMessage-Example1
InstanceOf: BirthReportMessage
Usage: #example
Description: "Live Birth Report Message - Example"
* timestamp = "2022-08-20T00:00:00Z"
* insert addentry(Header, BirthReportHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: BirthReportUpdateMessage-Example1
InstanceOf: BirthReportUpdateMessage
Usage: #example
Description: "Live Birth Report Message Update - Example"
* timestamp = "2022-08-20T00:00:00Z"
* insert addentry(Header, BirthReportUpdateHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: CodedCauseOfFetalDeathMessage-Example1
InstanceOf: CodedCauseOfFetalDeathMessage
Usage: #example
Description: "Coded Cause of Fetal Death Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CodedCauseOfFetalDeathHeader-Example1)
* insert addentry(Parameters, Parameters-Example2)
* insert addentry(Bundle, DummyBundle)

Instance: CodedCauseOfFetalDeathUpdateMessage-Example1
InstanceOf: CodedCauseOfFetalDeathUpdateMessage
Usage: #example
Description: "Coded Cause of Fetal Death Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CodedCauseOfFetalDeathUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example2)
* insert addentry(Bundle, DummyBundle)

Instance: ParentalDemographicsCodingMessage-Example1
InstanceOf: ParentalDemographicsCodingMessage
Usage: #example
Description: "Parental Demographics Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, ParentalDemographicsCodingHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: ParentalDemographicsCodingUpdateMessage-Example1
InstanceOf: ParentalDemographicsCodingUpdateMessage
Usage: #example
Description: "Parental Demographics Message Update - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, ParentalDemographicsCodingUpdateHeader-Example1)
* insert addentry(Parameters, ParametersBirth-Example1)
* insert addentry(Bundle, DummyBundle)

Instance: DummyBundle
InstanceOf: MessageBundle
Usage: #example 
Description:  "Placeholder for all content sent in messages"
* type = #collection 
* insert addentry(Parameters, ParametersBirth-Example1)
