
Instance: DemographicsCodingMessageParameters-Example1
InstanceOf: DemographicsCodingMessageParameters
Usage: #example
Description: "Parameters for Demographic Coding: Example"
* meta.profile[0] = Canonical(DemographicsCodingMessageParameters)
* parameter[jurisdiction_id].valueString = "NH"
* parameter[race].part[RACE1E].valueCoding = RaceCodeListCS#100
* parameter[race].part[RACE2E].valueCoding = RaceCodeListCS#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = RaceCodeListCS#21
* parameter[ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999

Instance: CauseOfDeathCodingMessageParameters-Example1
InstanceOf: CauseOfDeathCodingMessageParameters
Usage: #example
Description: "Parameters for Cause of Death Coding: Example"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[jurisdiction_id].name = "jurisdiction_id"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[rec_mo].valueUnsignedInt = 12
* parameter[rec_dy].valueUnsignedInt = 1
* parameter[rec_yr].valueUnsignedInt = 2018
* parameter[cs].valueCodeableConcept = $codingstatus#8
* parameter[ship].valueString = "B201901"
* parameter[sys_rej].valueString = "NotRejected"
* parameter[injpl].valueString = "OtherSpecifiedPlace"
* parameter[other_specified_place].valueString = "Unique Location"
* parameter[state_auxiliary_id].valueString = "abcdef10"
//* parameter[underlying_cause_of_death].valueString = "A04.7
* parameter[record_cause_of_death].name = "record_cause_of_death"
* parameter[record_cause_of_death].part[coding][0].valueString = "A047"
* parameter[record_cause_of_death].part[coding][+].valueString = "A419"
* parameter[record_cause_of_death].part[coding][+].valueString = "J189"
* parameter[record_cause_of_death].part[coding][+].valueString = "J960"
* parameter[record_cause_of_death].part[coding][+].valueString = "N19"
* parameter[record_cause_of_death].part[coding][+].valueString = "R579"
* parameter[record_cause_of_death].part[coding][+].valueString = "R688"
* parameter[entity_axis_code][0].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "R688"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "J960"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[coding][+].valueString = "R579"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 3
* parameter[entity_axis_code][=].part[coding][+].valueString = "N19"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 3
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "A419"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 4
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "J189"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 6
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "A047"

Instance: MessageParameters-Example1
InstanceOf: DeathMessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018

Instance: VoidMessageParameters-Example1
InstanceOf: DeathMessageVoidParameters
Usage: #example
Description: "Parameters for Void: Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

Instance: AcknowledgementMessageHeader-Example1
InstanceOf: AcknowledgementMessageHeader
Usage: #example
Description: "Acknowledgement Header: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #ok
* focus = Reference(MessageParameters-Example1)   // Is this needed?  Same parameters as for VoidMessageHeader...

Instance: VoidMessageHeader-Example1
InstanceOf: DeathMessageVoidHeader
Usage: #example
Description: "Parameters for Void: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submissionvoid"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(VoidMessageParameters-Example1)

Instance: UpdateMessageHeader-Example1
InstanceOf: DeathRecordUpdateHeader
Usage: #example
Description: "Header for Update: Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submissionupdate"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: SubmissionMessageHeader-Example1
InstanceOf: DeathMessageSubmissionHeader
Usage: #example
Description: "Header for Submission - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: CodingMessageHeader-Example1
InstanceOf: CodingMessageHeader
Usage: #example
Description: "Header for Cause of Death Coding Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodingMessageParameters-Example1)

Instance: CodingMessageHeader-Example2
InstanceOf: CodingMessageHeader
Usage: #example
Description: "Header for Demographic Coding Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(DemographicsCodingMessageParameters-Example1)

Instance: CodingMessageUpdateHeader-Example1
InstanceOf: CodingMessageUpdateHeader
Usage: #example
Description: "Header for Demographic Coding Update Message - Example"
* eventUri = "http://nchs.cdc.gov/vrdr_codingupdate"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CauseOfDeathCodingMessageParameters-Example1)

Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
Description: "Header for Extraction Error Message - Example"
* eventUri = MessageHeaderURICS#"http://nchs.cdc.gov/vrdr_extractionerror"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #fatal-error
* response.details = Reference(DeathMessageOutcome-Example1)
* focus = Reference(MessageParameters-Example1)

Instance: DeathMessageOutcome-Example1
InstanceOf: DeathMessageOutcome
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
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/ExtractionErrorHeader1"
// Other slices
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"
* entry[2].resource = DeathMessageOutcome-Example1
* entry[=].fullUrl = "http://example.org/fhir/OperationOutcome/DeathMessageOutcome-Example1"

Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AcknowledgementMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/AcknowledgementMessageHeader-Example1"
// Other slices
* entry[+].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"

Instance: CodingMessage-Example1
InstanceOf: CodingMessage
Usage: #example
Description: "Cause of death coding message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CodingMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/CodingHeader-Example1"

* entry[+].resource = CauseOfDeathCodingMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CodingMessageParameters1"

Instance: CodingUpdateMessage1
InstanceOf: CodingUpdateMessage
Usage: #example
Description: "Coding update message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CodingMessageUpdateHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/CodingUpdateHeader1"
* entry[+].resource = CauseOfDeathCodingMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CodingMessageParameters-Example1"


Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Usage: #example
Description: "Void message - example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = VoidMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/VoidMessageHeader-Example1"
// Other slices
* entry[1].resource = VoidMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/VoidMessageParameters-Example1"

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Submission mesage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = SubmissionMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/SubmissionMessageHeader-Example1"
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificateDocument-Example1"

Instance: DeathRecordUpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Update message - example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = UpdateMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/UpdateHeader-Example1"
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificateDocument-Example1"

Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Usage: #example
Description: "Alias Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AliasMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/MessageHeader/AliasMessageHeader-Example1"
// Other slices
* entry[1].resource = AliasMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/AliasMessageParameters-Example1"

Instance: AliasMessageHeader-Example1
InstanceOf: DeathMessageAliasHeader
Usage: #example
Description: "Alias Message Header- Example"
* eventUri = "http://nchs.cdc.gov/vrdr_alias"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(AliasMessageParameters-Example1)

Instance: AliasMessageParameters-Example1
InstanceOf: DeathMessageAliasParameters
Usage: #example
Description:  "Alias Message Parameters- Example"
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Shakespeare-Dostoyevsky"
* parameter[alias_decedent_middle_name].valueString = "X"
