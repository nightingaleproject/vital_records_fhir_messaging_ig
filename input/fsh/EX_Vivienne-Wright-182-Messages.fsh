Instance: Vivienne-Wright-182-Example
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Need a description"
* type = #message
* timestamp = "2020-11-17T16:39:54.658923-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Vivienne-Wright-182-Header-Example"
* entry[=].resource = Vivienne-Wright-182-Header-Example
* entry[+].fullUrl = "http://example.org/Parameters/Vivienne-Wright-182-Parameters-Example"
* entry[=].resource = Vivienne-Wright-182-Parameters-Example
* entry[+].fullUrl = "http://example.org/Bundle/Vivienne-Wright-182-Death-Certificate-Document-Example"
* entry[=].resource = Vivienne-Wright-182-Death-Certificate-Document-Example

Instance: Vivienne-Wright-182-Header-Example
InstanceOf: DeathMessageSubmissionHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(urn:uuid:19361ad2-fc61-4eef-9332-6bd31acedca7)

Instance: Vivienne-Wright-182-Parameters-Example
InstanceOf: DeathMessageParameters
Usage: #inline
Description: "Need a description"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000182-Example
InstanceOf: CodingMessage
Description: "Need a description"
Usage: #example
* type = #message
* timestamp = "2020-11-19T11:40:14.3128405-05:00"
* entry[0].fullUrl = "urn:uuid:d570c223-492f-47c5-b030-0d52bbc70655"
* entry[=].resource = Header-for-MA20323-TRX-000182-Example
* entry[+].fullUrl = "urn:uuid:2230a510-a5b9-474d-bf05-326d963aec34"
* entry[=].resource = Parameters-for-MA20323-TRX-000182-Example

Instance: Header-for-MA20323-TRX-000182-Example
InstanceOf: CodingMessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-for-MA20323-TRX-000182-Example)

Instance: Parameters-for-MA20323-TRX-000182-Example
InstanceOf: CauseOfDeathCodingMessageParameters
Usage: #inline
Description: "Need a description"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
//* parameter[+].name = "underlying_cause_of_death"
//* parameter[=].valueString = "O159"
* parameter[+].name = "record_cause_of_death"
* parameter[=].part[0].name = "coding"
* parameter[=].part[=].valueString = "O159"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I469"
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I469"
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueString = "2"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "O159"
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueString = "6"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "O95"


Instance: Message-MA20323-MRE-000182-Example
InstanceOf: CodingMessage
Usage: #example
Description: "Need a description"
* type = #message
* timestamp = "2020-11-18T09:42:02.4365922-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Header-MA20323-MRE-000182-Example"
* entry[=].resource = Header-MA20323-MRE-000182-Example
* entry[+].fullUrl = "http://example.org/Parameters/Header-MA20323-MRE-000182-Parameters"
* entry[=].resource = Parameters-MA20323-MRE-000182-Example

Instance: Header-MA20323-MRE-000182-Example
InstanceOf: CodingMessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000182-Example)

Instance: Parameters-MA20323-MRE-000182-Example
InstanceOf: DemographicCodingMessageParameters
Usage: #inline
Description: "Need a description"
* meta.profile[0] = Canonical(DemographicCodingMessageParameters)
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "race"
* parameter[=].part[0].name = "RACE1E"
* parameter[=].part[=].valueCoding = RaceCodeListCS#100
* parameter[=].part[+].name = "RACE2E"
* parameter[=].part[=].valueCoding = RaceCodeListCS#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = RaceCodeListCS#21
* parameter[+].name = "ethnicity"
* parameter[=].part.name = "DETHNICE"
* parameter[=].part.valueCoding = HispanicOriginCS#999