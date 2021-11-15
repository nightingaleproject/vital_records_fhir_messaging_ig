
Instance: CodingMessageParameters-Example1
InstanceOf: CodingMessageParameters
Usage: #example
* parameter[jurisdiction_id].name = "jurisdiction_id"
* parameter[jurisdiction_id].valueString = "NH"
//* parameter[cert_no].name = "cert_no"
* parameter[cert_no].valueUnsignedInt = 123456
//* parameter[death_year].name = "death_year"
* parameter[death_year].valueUnsignedInt = 2018
//* parameter[rec_mo].name = "rec_mo"
* parameter[rec_mo].valueUnsignedInt = 12
//* parameter[rec_dy].name = "rec_dy"
* parameter[rec_dy].valueUnsignedInt = 1
//* parameter[rec_yr].name = "rec_yr"
* parameter[rec_yr].valueUnsignedInt = 2018
//* parameter[cs].name = "cs"
* parameter[cs].valueCodeableConcept = $codingstatus#8
//* parameter[ship].name = "ship"
* parameter[ship].valueString = "B201901"
//* parameter[sys_rej].name = "sys_rej"
* parameter[sys_rej].valueString = "NotRejected"
//* parameter[injpl].name = "injpl"
* parameter[injpl].valueString = "OtherSpecifiedPlace"
//* parameter[other_specified_place].name = "other_specified_place"
* parameter[other_specified_place].valueString = "Unique Location"
//* parameter[state_auxiliary_id].name = "state_auxiliary_id"
* parameter[state_auxiliary_id].valueString = "abcdef10"
//* parameter[underlying_cause_of_death].name = "underlying_cause_of_death"
//* parameter[underlying_cause_of_death].valueCodeableConcept = $icd-10#A04.7
* parameter[record_cause_of_death].name = "record_cause_of_death"
* parameter[record_cause_of_death].part[coding][0].name = "coding"
* parameter[record_cause_of_death].part[coding][0].valueCodeableConcept = $icd-10#A04.7
//* parameter[record_cause_of_death].part[+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#A41.9
//* parameter[record_cause_of_death].part[+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#J18.9
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#J96.0
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#N19
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#R57.9
* parameter[record_cause_of_death].part[coding][+].name = "coding"
* parameter[record_cause_of_death].part[coding][=].valueCodeableConcept = $icd-10#R68.8
* parameter[entity_axis_code][0].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "1"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].valueCodeableConcept = $icd-10#R68.8
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "2"
* parameter[entity_axis_code][=].part[coding][0].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].valueCodeableConcept = $icd-10#J96.0
* parameter[entity_axis_code][=].part[coding][+].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].valueCodeableConcept = $icd-10#R57.9
* parameter[entity_axis_code][=].part[coding][+].name = "coding"
* parameter[entity_axis_code][=].part[coding][=].valueCodeableConcept = $icd-10#N19
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "3"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].valueCodeableConcept = $icd-10#A41.9
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "4"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].valueCodeableConcept = $icd-10#J18.9
* parameter[entity_axis_code][+].name = "entity_axis_code"
* parameter[entity_axis_code][=].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code][=].part[lineNumber].valueString = "6"
* parameter[entity_axis_code][=].part[coding].name = "coding"
* parameter[entity_axis_code][=].part[coding].valueCodeableConcept = $icd-10#A04.7
Instance: MessageParameters-Example1
InstanceOf: DeathMessageParameters
Usage: #example
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018

Instance: VoidMessageParameters-Example1
InstanceOf: DeathMessageVoidParameters
Usage: #example
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

Instance: AcknowledgementMessageHeader-Example1
InstanceOf: AcknowledgementMessageHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdracknowledgement"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdracknowledgement"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #ok
* focus = Reference(MessageParameters-Example1)   // Is this needed?  Same parameters as for VoidMessageHeader...

Instance: VoidMessageHeader-Example1
InstanceOf: DeathMessageVoidHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrsubmissionvoid"
* destination.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(VoidMessageParameters-Example1)

Instance: UpdateMessageHeader-Example1
InstanceOf: DeathRecordUpdateHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrupdate"
* destination.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: SubmissionMessageHeader-Example1
InstanceOf: DeathMessageSubmissionHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrsubmission"
* destination.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(DeathCertificateDocument-Example1)

Instance: CodingMessageHeader-Example1
InstanceOf: CodingMessageHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrcoding"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CodingMessageParameters-Example1)

Instance: CodingMessageUpdateHeader-Example1
InstanceOf: CodingMessageUpdateHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrcodingupdate"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* focus = Reference(CodingMessageParameters-Example1)

Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdrextractionerror"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.code = #fatal-error
* response.details = Reference(DeathMessageOutcome-Example1)
* focus = Reference(MessageParameters-Example1)

Instance: DeathMessageOutcome-Example1
InstanceOf: DeathMessageOutcome
Usage: #example
* issue.severity = #error
* issue.code = #structure
* issue.diagnostics = "Expected 1 or more Cause of Death Condition resources, received 0."

Instance: ExtractionErrorMessage-Example1
InstanceOf: ExtractionErrorMessage
Usage: #example
Description: "Example of extraction error message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = ExtractionErrorHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/ExtractionErrorHeader1"
// Other slices
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"
* entry[2].resource = DeathMessageOutcome-Example1
* entry[=].fullUrl = "http://example.org/fhir/OperationOutcome/DeathMessageOutcome-Example1"

Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Example of acknowledgement message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AcknowledgementMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/AcknowledgementMessageHeader-Example1"
// Other slices
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"

Instance: CodingMessage-Example1
InstanceOf: CodingMessage
Usage: #example
Description: "Example of coding message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CodingMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/CodingHeader-Example1"
// Other slices
* entry[1].resource = CodingMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CodingMessageParameters1"

Instance: CodingUpdateMessage1
InstanceOf: CodingUpdateMessage
Usage: #example
Description: "Example of coding update message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CodingMessageUpdateHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/CodingUpdateHeader1"
// Other slices
* entry[1].resource = CodingMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/CodingMessageParameters-Example1"


Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Usage: #example
Description: "Example of void message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = VoidMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/VoidMessageHeader-Example1"
// Other slices
* entry[1].resource = VoidMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/VoidMessageParameters-Example1"

Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Example of death record submission mesage"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = SubmissionMessageHeader-Example1
* entry[=].fullUrl = "urn:oid:SubmissionHeader-Example1"
// Other slices
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/MessageParameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "http://example.org/fhir/Bundle/DeathCertificateDocument-Example1"

Instance: DeathRecordUpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Usage: #example
Description: "Example of death record submission mesage"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = UpdateMessageHeader-Example1
* entry[=].fullUrl = "urn:oid:UpdateHeader-Example1"
// Other slices
* entry[1].resource = MessageParameters-Example1
* entry[=].fullUrl = "urn:oid:MessageParameters-Example1"
* entry[+].resource = DeathCertificateDocument-Example1
* entry[=].fullUrl = "urn:oid:7a4613cc-b306-49b2-a428-9f8e67e67a85"

Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Usage: #example
Description: "Example of void message"
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AliasMessageHeader-Example1
* entry[=].fullUrl = "http://example.org/fhir/Message/AliasMessageHeader-Example1"
// Other slices
* entry[1].resource = AliasMessageParameters-Example1
* entry[=].fullUrl = "http://example.org/fhir/Parameters/AliasMessageParameters-Example1"

Instance: AliasMessageHeader-Example1
InstanceOf: DeathMessageAliasHeader
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdralias"
* destination.endpoint = "http://nchs.cdc.gov/vrdrsubmission"
* source.endpoint = "https://sos.nh.gov/vitalrecords"
* focus = Reference(AliasMessageParameters-Example1)

Instance: AliasMessageParameters-Example1
InstanceOf: DeathMessageAliasParameters
Usage: #example
* parameter[jurisdiction_id].valueString = "NH"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Shakespeare-Dostoyevsky"
* parameter[alias_decedent_middle_name].valueString = "X"
