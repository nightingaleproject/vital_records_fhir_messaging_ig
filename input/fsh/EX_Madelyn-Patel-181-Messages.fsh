Instance: Madelyn-Patel-181-Example
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
Description: "Message for Record Submission: Madelyn Patel (181)"
* type = #message
* timestamp = "2020-11-17T16:39:48.847917-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/Header/Madelyn-Patel-181-Header-Example"
* entry[=].resource = Madelyn-Patel-181-Header-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Madelyn-Patel-181-Parameters-Example"
* entry[=].resource = Madelyn-Patel-181-Parameters-Example
* entry[+].fullUrl = "http://examples.org/fhir/Bundle/Madelyn-Patel-181-Death-Certificate-Document-Example"
* entry[=].resource = Madelyn-Patel-181-Death-Certificate-Document-Example

Instance: Madelyn-Patel-181-Header-Example
InstanceOf: SubmissionHeader
Description: "Header for Record Submission: Madelyn Patel (181)"
Usage: #inline
//* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Madelyn-Patel-181-Death-Certificate-Document-Example)

Instance: Madelyn-Patel-181-Parameters-Example
InstanceOf: Parameters
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
* entry[0].fullUrl = "http://example.org/Header/Header-MA20323-TRX-000181-Example"
* entry[=].resource = Header-MA20323-TRX-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-TRX-000181-Example"
* entry[=].resource = Parameters-MA20323-TRX-000181-Example

Instance: Header-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingHeader
Usage: #inline
Description: "Header for Cause of Death Coding: Madelyn Patel (181)"
//* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-TRX-000181-Example)

Instance: Parameters-MA20323-TRX-000181-Example
InstanceOf: CauseOfDeathCodingParameters
Usage: #inline
Description: "Parameters for Cause of Death Coding: Madelyn Patel (181)"
* meta.profile[0] = Canonical(CauseOfDeathCodingParameters)
* parameter[FILENO].valueUnsignedInt = 181
* parameter[DOD_YR].valueUnsignedInt = 2020
* parameter[jurisdiction_id].valueString = "MA"
* parameter[MAN_UC].valueString = "X42"
* parameter[ACME_UC].valueString = "X42"
* parameter[RAC][0].valueString = "X42"
* parameter[RAC][+].valueString = "I119"
* parameter[RAC][+].valueString = "T405"
* parameter[RAC][+].valueString = "T509"
* parameter[EAC][0].part[lineNumber].valueUnsignedInt = 1
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "T405"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 1
* parameter[EAC][=].part[position].valueUnsignedInt = 2
* parameter[EAC][=].part[coding].valueString = "X42"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 6
* parameter[EAC][=].part[position].valueUnsignedInt = 1
* parameter[EAC][=].part[coding].valueString = "I119"
* parameter[EAC][+].part[lineNumber].valueUnsignedInt = 6
* parameter[EAC][=].part[position].valueUnsignedInt = 2
* parameter[EAC][=].part[coding].valueString = "T509"
* parameter[EAC][=].part[e_code_indicator].valueString = "&"

Instance: Message-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Message for Demographic Coding: Madelyn Patel (181)"
* type = #message
* timestamp = "2020-11-18T09:42:02.452214-05:00"
* entry[0].fullUrl = "http://example.org/Header/Header-MA20323-MRE-000181-Example"
* entry[=].resource = Header-MA20323-MRE-000181-Example
* entry[+].fullUrl = "http://example.org/Parameters/Parameters-MA20323-MRE-000181-Example"
* entry[=].resource = Parameters-MA20323-MRE-000181-Example

Instance: Header-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingHeader
Description: "Header for Demographic Coding: Madelyn Patel (181)"
Usage: #inline
//* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000181-Example)

Instance: Parameters-MA20323-MRE-000181-Example
InstanceOf: DemographicsCodingParameters
Usage: #inline
Description: "Parameters for Demographic Coding: Madelyn Patel (181)"
* meta.profile[0] = Canonical(DemographicsCodingParameters)
* parameter[FILENO].valueUnsignedInt = 181
* parameter[jurisdiction_id].valueString = "MA"
* parameter[DOD_YR].valueUnsignedInt = 2020
* parameter[coded_race].part[RACE1E].valueCoding = RaceCodeCS#400
* parameter[coded_ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999
