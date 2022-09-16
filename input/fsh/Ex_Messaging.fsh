
Instance: Parameters-Example1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"

Instance: VoidParameters-Example1
InstanceOf: VoidParameters
Usage: #example
Description: "Parameters for Void: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

Instance: StatusParameters-Example1
InstanceOf: StatusParameters
Usage: #example
Description: "Parameters for Status: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[status].valueString = "manualCauseOfDeathCoding"

Instance: AcknowledgementHeader-Example1
InstanceOf: AcknowledgementHeader
Usage: #example
Description: "Acknowledgement Header: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok
* focus = Reference(Parameters-Example1)   // Is this needed?  Same parameters as for VoidHeader...

Instance: VoidHeader-Example1
InstanceOf: VoidHeader
Usage: #example
Description: "Parameters for Void: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_submission_void"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* focus = Reference(VoidParameters-Example1)

Instance: StatusHeader-Example1
InstanceOf: StatusHeader
Usage: #example
Description: "Parameters for Status: Example1"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_status"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* focus = Reference(StatusParameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: UpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Update: Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission_update"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* focus.reference = "Bundle/DeathCertificateDocument-Example1"

Instance: SubmissionHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Submission - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* focus.reference = "Bundle/DeathCertificateDocument-Example1"

Instance: CauseOfDeathCodingHeader-Example1
InstanceOf: CauseOfDeathCodingHeader
Usage: #example
Description: "Header for Cause of Death Coding Message - Example1- coded content only"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodedContentBundle-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: DemographicsCodingHeader-Example1
InstanceOf: DemographicsCodingHeader
Usage: #example
Description: "Header for Demographic Coding Message - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(DemographicCodedContentBundle-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: CauseOfDeathCodingUpdateHeader-Example1
InstanceOf: CauseOfDeathCodingUpdateHeader
Usage: #example
Description: "Header for Cause Of Death Coding Update Message - Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_coding_update"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodedContentBundle-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: DemographicsCodingUpdateHeader-Example1
InstanceOf: DemographicsCodingUpdateHeader
Usage: #example
Description: "Header for Demographic Coding Update Message - Example"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(DemographicCodedContentBundle-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
Description: "Header for Extraction Error Message - Example"
// * eventUri = HeaderURICS#"http://nchs.cdc.gov/vrdr_extraction_error"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.details = Reference(Outcome-Example1)
* focus = Reference(Parameters-Example1)

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


Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, AcknowledgementHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)

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
* insert addentry(Bundle, CauseOfDeathCodedContentBundle-Example1)


Instance: CauseOfDeathCodingUpdateMessage1
InstanceOf: CauseOfDeathCodingUpdateMessage
Usage: #example
Description: "Cause of Death Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, CauseOfDeathCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, CauseOfDeathCodedContentBundle-Example1)


Instance: DemographicsCodingMessage-Example1
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Cause of death coding message - Example1 -- coded content only"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DemographicCodedContentBundle-Example1)


Instance: DemographicsCodingUpdateMessage1
InstanceOf: DemographicsCodingUpdateMessage
Usage: #example
Description: "Demographic Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, DemographicsCodingUpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DemographicCodedContentBundle-Example1)

Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Usage: #example
Description: "Void message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, VoidHeader-Example1)
* insert addentry(Parameters,VoidParameters-Example1 )

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Submission mesage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, SubmissionHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DeathCertificateDocument-Example1)

Instance: UpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Update message - example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, UpdateHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Bundle, DeathCertificateDocument-Example1)

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
* focus = Reference(AliasParameters-Example1)

Instance: AliasParameters-Example1
InstanceOf: AliasParameters
Usage: #example
Description:  "Alias Message Parameters- Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Jingleheimer"
* parameter[alias_decedent_first_name].valueString = "John"
* parameter[alias_decedent_middle_name].valueString = "Jacob"
* parameter[alias_decedent_last_name].valueString = "Schmidt"
* parameter[alias_decedent_name_suffix].valueString = "III"
* parameter[alias_social_security_number].valueString = "123-45-6789"
