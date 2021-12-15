Instance: Vivienne-Wright-182-Example
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Message for Record Submission: Vivienne Write (182)"
* type = #message
* timestamp = "2020-11-17T16:39:54.658923-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Vivienne-Wright-182-Header-Example"
* entry[=].resource = Vivienne-Wright-182-Header-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Vivienne-Wright-182-Parameters-Example"
* entry[=].resource = Vivienne-Wright-182-Parameters-Example
* entry[+].fullUrl = "http://examples.org/fhir/Bundle/Vivienne-Wright-182-Death-Certificate-Document-Example"
* entry[=].resource = Vivienne-Wright-182-Death-Certificate-Document-Example

Instance: Vivienne-Wright-182-Header-Example
InstanceOf: DeathMessageSubmissionHeader
Usage: #inline
Description: "Header for Record Submission: Vivienne Write (182)"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Vivienne-Wright-182-Death-Certificate-Document-Example)

Instance: Vivienne-Wright-182-Parameters-Example
InstanceOf: DeathMessageParameters
Usage: #inline
Description: "Parameters for Record Submission: Vivienne Write (182)"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000182-Example
InstanceOf: CodingMessage
Description: "Message for Cause of Death Coding: Vivienne Write (182)"
Usage: #example
* type = #message
* timestamp = "2020-11-19T11:40:14.3128405-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Header-for-MA20323-TRX-000182-Example"
* entry[=].resource = Header-for-MA20323-TRX-000182-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Parameters-for-MA20323-TRX-000182-Example"
* entry[=].resource = Parameters-for-MA20323-TRX-000182-Example

Instance: Header-for-MA20323-TRX-000182-Example
InstanceOf: CodingMessageHeader
// Usage: #inline
Description: "Need a description"
* meta.profile[0] = Canonical(CodingMessageHeader)
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-for-MA20323-TRX-000182-Example)

Instance: Parameters-for-MA20323-TRX-000182-Example
InstanceOf: CauseOfDeathCodingMessageParameters
//Usage: #inline
Description: "Parameters for Cause of Death Coding: Vivienne Write (182)"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 182
* parameter[death_year].valueUnsignedInt = 2020
* parameter[jurisdiction_id].valueString = "MA"
* parameter[underlying_cause_of_death].valueString = "O159"
* parameter[entity_axis_code][0].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "I469"
* parameter[entity_axis_code][=].part[e-code-indicator].valueBoolean = false
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[coding].valueString = "O159"
* parameter[entity_axis_code][=].part[e-code-indicator].valueBoolean = false
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 6
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "O95"
* parameter[entity_axis_code][=].part[e-code-indicator].valueBoolean = false

Instance: Message-MA20323-MRE-000182-Example
InstanceOf: CodingMessage
Usage: #example
Description: "Message for Demographic Coding: Vivienne Write (182)"
* type = #message
* timestamp = "2020-11-18T09:42:02.4365922-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Header-MA20323-MRE-000182-Example"
* entry[=].resource = Header-MA20323-MRE-000182-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Parameters-MA20323-MRE-000182-Example"
* entry[=].resource = Parameters-MA20323-MRE-000182-Example

Instance: Header-MA20323-MRE-000182-Example
InstanceOf: CodingMessageHeader
Usage: #inline
Description: "Header for Demographic Coding: Vivienne Write (182)"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000182-Example)

Instance: Parameters-MA20323-MRE-000182-Example
InstanceOf: DemographicsCodingMessageParameters
Usage: #inline
Description: "Demographic Coding Parameters:Vivienne Write (182)"
* meta.profile[0] = Canonical(DemographicsCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 182
* parameter[jurisdiction_id].valueString = "MA"
* parameter[death_year].valueUnsignedInt = 2020
* parameter[race].part[RACE1E].valueCoding = RaceCodeListCS#100
* parameter[race].part[RACE2E].valueCoding = RaceCodeListCS#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = RaceCodeListCS#21
* parameter[ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999
