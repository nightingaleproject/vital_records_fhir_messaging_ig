
Instance: DemographicsCodingParameters-Example1
InstanceOf: DemographicsCodingParameters
Usage: #example
Description: "Parameters for Demographic Coding: Example"
* meta.profile[0] = Canonical(DemographicsCodingParameters)
* parameter[jurisdiction_id].valueString = "NH"
* parameter[coded_race].part[RACE1E].valueCoding = RaceCodeCS#100
* parameter[coded_race].part[RACE2E].valueCoding = RaceCodeCS#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = RaceCodeCS#21
* parameter[coded_ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999

Instance: CauseOfDeathCodingParameters-Example1
InstanceOf: CauseOfDeathCodingParameters
Usage: #example
Description: "Parameters for Cause of Death Coding: Example"
* meta.profile[0] = Canonical(CauseOfDeathCodingParameters)
// * parameter[jurisdiction_id].valueString = "NH"
// * parameter[FILENO].valueUnsignedInt = 123456
// * parameter[DOD_YR].valueUnsignedInt = 2018
// * parameter[AUXNO].valueString = "abcdef10"
* parameter[R_MO].valueUnsignedInt = 12
* parameter[R_DY].valueUnsignedInt = 1
* parameter[R_YR].valueUnsignedInt = 2018
* parameter[CS].valueUnsignedInt = 8
* parameter[SHIP].valueString = "191"
* parameter[SYS_REJ].valueUnsignedInt = 0
* parameter[input_misc_fields].part[INJPL].valueString = "8"
* parameter[MAN_UC].valueString = "A047"
* parameter[ACME_UC].valueString = "A047"
* parameter[RAC][0].valueString = "A047"
* parameter[RAC][+].valueString = "A419"
* parameter[RAC][+].valueString = "J189"
* parameter[RAC][+].valueString = "J960"
* parameter[RAC][+].valueString = "N19"
* parameter[RAC][+].valueString = "R579"
* parameter[RAC][+].valueString = "R688"
* parameter[EAC][0].part[lineNumber].valueUnsignedInt = 1
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "R688"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 2
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "J960"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 2
* parameter[EAC][=].part[position].valueUnsignedInt = 2
* parameter[EAC][=].part[coding][+].valueString = "R579"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 2
* parameter[EAC][=].part[position].valueUnsignedInt = 3
* parameter[EAC][=].part[coding][+].valueString = "N19"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 3
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "A419"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 4
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "J189"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 6
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "A047"

Instance: Parameters-Example1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018

Instance: VoidParameters-Example1
InstanceOf: VoidParameters
Usage: #example
Description: "Parameters for Void: Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

Instance: AcknowledgementHeader-Example1
InstanceOf: AcknowledgementHeader
Usage: #example
Description: "Acknowledgement Header: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #ok
* focus = Reference(Parameters-Example1)   // Is this needed?  Same parameters as for VoidHeader...

Instance: VoidHeader-Example1
InstanceOf: VoidHeader
Usage: #example
Description: "Parameters for Void: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_submission_void"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(VoidParameters-Example1)

Instance: UpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Update: Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission_update"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: SubmissionHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Submission - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: CauseOfDeathCodingHeader-Example1
InstanceOf: CauseOfDeathCodingHeader
Usage: #example
Description: "Header for Cause of Death Coding Message - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodingParameters-Example1)

Instance: DemographicsCodingHeader-Example2
InstanceOf: DemographicsCodingHeader
Usage: #example
Description: "Header for Demographic Coding Message - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(DemographicsCodingParameters-Example1)

Instance: CauseOfDeathCodingUpdateHeader-Example1
InstanceOf: CauseOfDeathCodingUpdateHeader
Usage: #example
Description: "Header for Cause Of Death Coding Update Message - Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_coding_update"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodingParameters-Example1)

Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
Description: "Header for Extraction Error Message - Example"
// * eventUri = HeaderURICS#"http://nchs.cdc.gov/vrdr_extraction_error"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #fatal-error
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
* entry[0].resource = ExtractionErrorHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/ExtractionErrorHeader1"
// Other slices
* entry[1].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[2].resource = Outcome-Example1
* entry[=].fullUrl = "http://example.org/fhir/OperationOutcome/Outcome-Example1"

Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AcknowledgementHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/AcknowledgementHeader-Example1"
// Other slices
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"

Instance: CauseOfDeathCodingMessage-Example1
InstanceOf: CauseOfDeathCodingMessage
Usage: #example
Description: "Cause of death coding message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CauseOfDeathCodingHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/CauseOfDeathCodingHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = CauseOfDeathCodingParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CauseOfDeathCodingParameters1"

Instance: CauseOfDeathCodingUpdateMessage1
InstanceOf: CauseOfDeathCodingUpdateMessage
Usage: #example
Description: "Cause of Death Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CauseOfDeathCodingUpdateHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/CauseOfDeathCodingUpdateHeader1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = CauseOfDeathCodingParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CauseOfDeathCodingParameters-Example1"


Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Usage: #example
Description: "Void message - example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = VoidHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/VoidHeader-Example1"
// Other slices
* entry[1].resource = VoidParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/VoidParameters-Example1"

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Submission mesage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = SubmissionHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/SubmissionHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificateDocument-Example1"

Instance: UpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Update message - example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = UpdateHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/UpdateHeader-Example1"
* entry[1].resource = Parameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificateDocument-Example1"

Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Usage: #example
Description: "Alias Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AliasHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Header/AliasHeader-Example1"
// Other slices
* entry[1].resource = AliasParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/AliasParameters-Example1"

Instance: AliasHeader-Example1
InstanceOf: AliasHeader
Usage: #example
Description: "Alias Message Header- Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_alias"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(AliasParameters-Example1)

Instance: AliasParameters-Example1
InstanceOf: AliasParameters
Usage: #example
Description:  "Alias Message Parameters- Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Shakespeare-Dostoyevsky"
* parameter[alias_decedent_middle_name].valueString = "X"
