
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
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "underlying_cause_of_death"
* parameter[=].valueString = "O159"
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

Alias: $RaceCodeList.pdf = https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf
Alias: $HispanicCodeTitles.pdf = https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf

Instance: Message-MA20323-MRE-000182-Example
InstanceOf: CodingMessage
Usage: #example
Description: "Need a description"
* type = #message
* timestamp = "2020-11-18T09:42:02.4365922-05:00"
* entry[0].fullUrl = "urn:uuid:cdbe3891-d434-40a1-9328-ee8b352d70f2"
* entry[=].resource = Header-MA20323-MRE-000182-Example
* entry[+].fullUrl = "urn:uuid:2cabb753-8eaf-4e28-ac70-5b1431da63c9"
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
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "race"
* parameter[=].part[0].name = "RACE1E"
* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#100
* parameter[=].part[+].name = "RACE2E"
* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#21
* parameter[+].name = "ethnicity"
* parameter[=].part.name = "DETHNICE"
* parameter[=].part.valueCoding = $HispanicCodeTitles.pdf#999

/* Instance: Message-MA20323-TRX-000181-Example
InstanceOf: Bundle
Usage: #example
* type = #message
* timestamp = "2020-11-19T11:40:18.1152444-05:00"
* entry[0].fullUrl = "urn:uuid:68c694a4-7649-4f7b-9a54-b826712987b2"
* entry[=].resource = Header-MA20323-TRX-000181-Example
* entry[+].fullUrl = "urn:uuid:bd303372-79c9-44cd-965e-96fe3b1024ad"
* entry[=].resource = Parameters-MA20323-TRX-000181-Example

Instance: Header-MA20323-TRX-000181-Example
InstanceOf: MessageHeader
Usage: #inline
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Message-MA20323-TRX-000181-Example)

Instance: Parameters-MA20323-TRX-000181-Example
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "underlying_cause_of_death"
* parameter[=].valueString = "X42
* parameter[+].name = "record_cause_of_death"
* parameter[=].part[0].name = "coding"
* parameter[=].part[=].valueString = "X42
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I119
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T405
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T509
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueId = "1"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T405
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "X42
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueId = "6"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I119
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T509


Instance: Message-MA20323-MRE-000181-Example
InstanceOf: Bundle
Usage: #example
* type = #message
* timestamp = "2020-11-18T09:42:02.452214-05:00"
* entry[0].fullUrl = "urn:uuid:1972f3a9-e6bd-4c95-a686-6bef277e40d2"
* entry[=].resource = Header-MA20323-MRE-000181-Example
* entry[+].fullUrl = "urn:uuid:ca694432-35a9-4295-b1e3-87c55f05d53f"
* entry[=].resource = Parameters-MA20323-MRE-000181-Example

Instance: Header-MA20323-MRE-000181-Example
InstanceOf: MessageHeader
Usage: #inline
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Message-MA20323-MRE-000181-Example)

Instance: Parameters-MA20323-MRE-000181-Example
InstanceOf: Parameters
Usage: #inline
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "race"
* parameter[=].part[0].name = "RACE1E"
* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#400
* parameter[=].part[+].name = "RACEBRG"
* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#04
* parameter[+].name = "ethnicity"
* parameter[=].part.name = "DETHNICE"
* parameter[=].part.valueCoding = $HispanicCodeTitles.pdf#999
*/