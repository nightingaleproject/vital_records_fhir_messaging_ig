//AcknowledgementHeaders

Instance: AcknowledgementHeader-Example1
InstanceOf: AcknowledgementHeader
Usage: #example
Description: "Acknowledgement Header: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok
* insert addReference(focus, Parameters, Parameters-Example1)

Instance: AcknowledgementHeader-Example2
InstanceOf: AcknowledgementHeader
Usage: #example
Description: "Acknowledgement Header: Example with warnings"
* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok
* insert addReference(response.details, OperationOutcome, Outcome-Example2)
* insert addReference(focus, Parameters, Parameters-Example1)

//VoidHeaders

Instance: VoidHeader-Example1
InstanceOf: VoidHeader
Usage: #example
Description: "Parameters for Void: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submission_void"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(VoidParameters-Example1)
* insert addReference(focus, Parameters, VoidParameters-Example1)

//StatusHeaders

Instance: StatusHeader-Example1
InstanceOf: StatusHeader
Usage: #example
Description: "Parameters for Status: Example1"
* eventUri = "http://nchs.cdc.gov/vrdr_status"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_status"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(StatusParameters-Example1)
* insert addReference(focus, Parameters, StatusParameters-Example1)
// * focus.reference = "http://www.example.org/fhir/Parameters/StatusParameters-Example1"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

//UpdateHeaders

Instance: UpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Update: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submission_update"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus.reference = "http://www.example.org/fhir/Bundle/DummyBundle"
* insert addReference(focus[0], Parameters, Parameters-Example1)
* insert addReference(focus[1], Bundle, DummyBundle)

Instance: FetalDeathReportUpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Fetal Death Report Message Update - Example"
* eventUri = "http://nchs.cdc.gov/fd_submission_update"
* destination.endpoint = "https://nchs.cdc.gov/vitalrecords"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersFD-Example2)

Instance: BirthReportUpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Birth Report Message Update - Example"
* eventUri = "http://nchs.cdc.gov/birth_submission_update"
* destination.endpoint = "https://nchs.cdc.gov/vitalrecords"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersBirth-Example1)

//SubmissionHeaders

Instance: SubmissionHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Submission - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)

Instance: FetalDeathReportHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Fetal Death Report Message - Example"
* eventUri = "http://nchs.cdc.gov/fd_submission"
* destination.endpoint = "https://nchs.cdc.gov/vitalrecords"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersFD-Example2)

Instance: BirthReportHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Birth Report Message - Example"
* eventUri = "http://nchs.cdc.gov/birth_submission"
* destination.endpoint = "https://nchs.cdc.gov/vitalrecords"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersBirth-Example1)

Instance: DeathRecordSubmissionHeaderExample1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Death Record Submission - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Parameters, ParametersDeathExample1)
* insert addReference(focus[1], Bundle, DummyDeathBundle)

//CauseofDeathCodingHeaders

Instance: CauseOfDeathCodingHeader-Example1
InstanceOf: CauseOfDeathCodingHeader
Usage: #example
Description: "Header for Cause of Death Coding Message - Example1- coded content only"
* eventUri = "http://nchs.cdc.gov/vrdr_causeofdeath_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: CauseOfDeathCodingUpdateHeader-Example1
InstanceOf: CauseOfDeathCodingUpdateHeader
Usage: #example
Description: "Header for Cause Of Death Coding Update Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_causeofdeath_coding_update"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: CodedCauseOfFetalDeathHeader-Example1
InstanceOf: CauseOfDeathCodingHeader
Usage: #example
Description: "Header for Coded Cause of Fetal Death Message - Example"
* eventUri = "http://nchs.cdc.gov/fd_causeofdeath_coding"
* destination.endpoint = "https://nchs.cdc.gov/vitalrecords"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersFD-Example2)
* response.identifier = "FetalDeathReportHeader-Example1"
* response.code = #ok

Instance: CodedCauseOfFetalDeathUpdateHeader-Example1
InstanceOf: CauseOfDeathCodingUpdateHeader
Usage: #example
Description: "Header for Coded Cause of Fetal Death Message Update - Example"
* eventUri = "http://nchs.cdc.gov/fd_causeofdeath_coding_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersFD-Example2)
* response.identifier = "FetalDeathReportHeader-Example1"
* response.code = #ok

//DemographicsCodingHeaders

Instance: DemographicsCodingHeader-Example1
InstanceOf: DemographicsCodingHeader
Usage: #example
Description: "Header for Demographic Coding Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_demographics_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: DemographicsCodingUpdateHeader-Example1
InstanceOf: DemographicsCodingUpdateHeader
Usage: #example
Description: "Header for Demographic Coding Update Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_demographics_coding_update"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: ParentalDemographicsCodingHeader-Example1
InstanceOf: DemographicsCodingHeader
Usage: #example
Description: "Header for Parental Demographics Message - Example"
* eventUri = "http://nchs.cdc.gov/birth_demographics_coding"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersBirth-Example1)
* response.identifier = "BirthReportHeader-Example1"
* response.code = #ok

Instance: ParentalDemographicsCodingUpdateHeader-Example1
InstanceOf: DemographicsCodingUpdateHeader
Usage: #example
Description: "Header for Parental Demographics Message Update - Example"
* eventUri = "http://nchs.cdc.gov/birth_demographics_coding_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, ParametersBirth-Example1)
* response.identifier = "BirthReportHeader-Example1"
* response.code = #ok

//ExtractionErrorHeaders

Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
Description: "Header for Extraction Error Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_extraction_error"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * response.details = Reference(Outcome-Example1)
* insert addReference(response.details, OperationOutcome, Outcome-Example1)
// * focus = Reference(Parameters-Example1)
* insert addReference(focus, Parameters, Parameters-Example1)

//IndustryOccupationCodingHeader

Instance: IndustryOccupationCodingHeader-Example1
InstanceOf: IndustryOccupationCodingHeader
Usage: #example
Description: "Header for Industry Occupation Coding Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_industryoccupation_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: IndustryOccupationCodingUpdateHeader-Example1
InstanceOf: IndustryOccupationCodingUpdateHeader
Usage: #example
Description: "Header for Industry Occupation Coding Update Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_industryoccupation_coding_update"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * focus = Reference(DummyBundle)
* insert addReference(focus[0], Bundle, DummyBundle)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

//AliasHeaders

Instance: AliasHeader-Example1
InstanceOf: AliasHeader
Usage: #example
Description: "Alias Message Header- Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_alias"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(AliasParameters-Example1)
* insert addReference(focus, Parameters, AliasParameters-Example1)
