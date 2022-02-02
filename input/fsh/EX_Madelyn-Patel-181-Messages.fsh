Instance: Madelyn-Patel-181-Example
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Message for Record Submission: Madelyn Patel (181)"
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
Description: "Header for Record Submission: Madelyn Patel (181)"
Usage: #inline
//* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Madelyn-Patel-181-Death-Certificate-Document-Example)

Instance: Madelyn-Patel-181-Parameters-Example
InstanceOf: DeathMessageParameters
Description: "Parameters for Record Submission: Madelyn Patel (181)"
Usage: #inline
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingMessage
Usage: #example
Description: "Message for Cause of Death Coding: Madelyn Patel (181)"
* type = #message
* timestamp = "2020-11-19T11:40:18.1152444-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Header-MA20323-TRX-000181-Example"
* entry[=].resource = Header-MA20323-TRX-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-TRX-000181-Example"
* entry[=].resource = Parameters-MA20323-TRX-000181-Example

Instance: Header-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingMessageHeader
Usage: #inline
Description: "Header for Cause of Death Coding: Madelyn Patel (181)"
//* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-TRX-000181-Example)

Instance: Parameters-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingMessageParameters
Usage: #inline
Description: "Parameters for Cause of Death Coding: Madelyn Patel (181)"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 181
* parameter[death_year].valueUnsignedInt = 2020
* parameter[jurisdiction_id].valueString = "MA"
* parameter[manual_underlying_cause_of_death].valueString = "X42"
* parameter[acme_underlying_cause_of_death].valueString = "X42"
* parameter[record_cause_of_death][0].valueString = "X42"
* parameter[record_cause_of_death][+].valueString = "I119"
* parameter[record_cause_of_death][+].valueString = "T405"
* parameter[record_cause_of_death][+].valueString = "T509"
* parameter[entity_axis_code][0].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "T405"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[coding].valueString = "X42"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 6
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "I119"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 6
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[coding].valueString = "T509"
* parameter[entity_axis_code][=].part[e_code_indicator].valueString = "&"

Instance: Message-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Message for Demographic Coding: Madelyn Patel (181)"
* type = #message
* timestamp = "2020-11-18T09:42:02.452214-05:00"
* entry[0].fullUrl = "http://example.org/MessageHeader/Header-MA20323-MRE-000181-Example"
* entry[=].resource = Header-MA20323-MRE-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-MRE-000181-Example"
* entry[=].resource = Parameters-MA20323-MRE-000181-Example

Instance: Header-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingMessageHeader
Description: "Header for Demographic Coding: Madelyn Patel (181)"
Usage: #inline
//* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000181-Example)

Instance: Parameters-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingMessageParameters
Usage: #inline
Description: "Parameters for Demographic Coding: Madelyn Patel (181)"
* meta.profile[0] = Canonical(DemographicsCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 181
* parameter[jurisdiction_id].valueString = "MA"
* parameter[death_year].valueUnsignedInt = 2020
* parameter[coded_race].part[RACE1E].valueCoding = RaceCodeListCS#400
* parameter[coded_ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999
