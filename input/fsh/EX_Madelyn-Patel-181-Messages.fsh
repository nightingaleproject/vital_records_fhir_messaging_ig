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
* parameter[cert_no].valueUnsignedInt = 181
* parameter[death_year].valueUnsignedInt = 2020
* parameter[jurisdiction_id].valueString = "MA"
//* parameter[+].name = "underlying_cause_of_death"
//* parameter[=].valueString = "X42"
* parameter[record_cause_of_death].part[coding][0].valueString = "X42"
* parameter[record_cause_of_death].part[coding][+].valueString = "I119"
* parameter[record_cause_of_death].part[coding][+].valueString = "T405"
* parameter[record_cause_of_death].part[coding][+].valueString = "T509"
* parameter[entity_axis_code][0].part[lineNumber].valueString = "1"
* parameter[entity_axis_code][=].part[coding][0].valueString = "T405"
* parameter[entity_axis_code][=].part[coding][+].valueString = "X42"
* parameter[entity_axis_code][+].part[lineNumber].valueString = "6"
* parameter[entity_axis_code][=].part[coding][+].valueString = "I119"
* parameter[entity_axis_code][=].part[coding][+].valueString = "T509"


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
InstanceOf: DemographicsCodingMessageParameters
Usage: #inline
* meta.profile[0] = Canonical(DemographicsCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 181
* parameter[jurisdiction_id].valueString = "MA"
* parameter[death_year].valueUnsignedInt = 2020
* parameter[race].part[RACE1E].valueCoding = RaceCodeListCS#400
* parameter[ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999
