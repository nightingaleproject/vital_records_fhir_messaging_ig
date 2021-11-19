Instance: Madelyn-Patel-181-Example
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Need a Description"
* type = #message
* timestamp = "2020-11-17T16:39:48.847917-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Madelyn-Patel-181-Header-Example"
* entry[=].resource = Madelyn-Patel-181-Header-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Madelyn-Patel-181-Parameters-Example"
* entry[=].resource = Madelyn-Patel-181-Parameters-Example
* entry[+].fullUrl = "http://examples.org/fhir/Bundle/Madelyn-Patel-181-Death-Certificate-Document-Example"
* entry[=].resource = Madelyn-Patel-181-Death-Certificate-Document-Example

Instance: Madelyn-Patel-181-Header-Example
InstanceOf: DeathMessageSubmissionHeader
Description: "Need a Description"
Usage: #inline
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Madelyn-Patel-181-Death-Certificate-Document-Example)

Instance: Madelyn-Patel-181-Parameters-Example
InstanceOf: DeathMessageParameters
Description: "Need a Description"
Usage: #inline
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000181-Example
InstanceOf: CodingMessage
Usage: #example
* type = #message
* timestamp = "2020-11-19T11:40:18.1152444-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Header-MA20323-TRX-000181-Example"
* entry[=].resource = Header-MA20323-TRX-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-TRX-000181-Example"
* entry[=].resource = Parameters-MA20323-TRX-000181-Example

Instance: Header-MA20323-TRX-000181-Example
InstanceOf: CodingMessageHeader
Usage: #inline
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-TRX-000181-Example)

Instance: Parameters-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingMessageParameters
Usage: #inline
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
//* parameter[+].name = "underlying_cause_of_death"
//* parameter[=].valueString = "X42"
* parameter[+].name = "record_cause_of_death"
* parameter[=].part[0].name = "coding"
* parameter[=].part[=].valueString = "X42"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I119"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T405"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T509"
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueString = "1"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T405"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "X42"
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueString = "6"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "I119"
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueString = "T509"


Instance: Message-MA20323-MRE-000181-Example
InstanceOf: CodingMessage
Usage: #example
* type = #message
* timestamp = "2020-11-18T09:42:02.452214-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Header-MA20323-MRE-000181-Example"
* entry[=].resource = Header-MA20323-MRE-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-MRE-000181-Example"
* entry[=].resource = Parameters-MA20323-MRE-000181-Example

Instance: Header-MA20323-MRE-000181-Example
InstanceOf: CodingMessageHeader
Usage: #inline
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000181-Example)

Instance: Parameters-MA20323-MRE-000181-Example
InstanceOf: DemographicCodingMessageParameters
Usage: #inline
* meta.profile[0] = Canonical(DemographicCodingMessageParameters)
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "race"
* parameter[=].part[0].name = "RACE1E"
* parameter[=].part[=].valueCoding = RaceCodeListCS#400
* parameter[+].name = "ethnicity"
* parameter[=].part.name = "DETHNICE"
* parameter[=].part.valueCoding = HispanicOriginCS#999
