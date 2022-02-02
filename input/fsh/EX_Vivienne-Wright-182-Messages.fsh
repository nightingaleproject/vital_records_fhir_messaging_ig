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
Usage: #example
Description: "Header for Record Submission: Vivienne Write (182)"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Vivienne-Wright-182-Death-Certificate-Document-Example)

Instance: Vivienne-Wright-182-Parameters-Example
InstanceOf: DeathMessageParameters
Usage: #example
Description: "Parameters for Record Submission: Vivienne Write (182)"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000182-Example
InstanceOf: CauseOfDeathCodingMessage
Description: "Message for Cause of Death Coding: Vivienne Write (182)"
Usage: #example
* type = #message
* timestamp = "2020-11-19T11:40:14.3128405-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Header-for-MA20323-TRX-000182-Example"
* entry[=].resource = Header-for-MA20323-TRX-000182-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Parameters-for-MA20323-TRX-000182-Example"
* entry[=].resource = Parameters-for-MA20323-TRX-000182-Example

Instance: Header-for-MA20323-TRX-000182-Example
InstanceOf: CauseOfDeathCodingMessageHeader
Usage: #example
Description: "Need a description"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageHeader)
//* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-for-MA20323-TRX-000182-Example)

Instance: Parameters-for-MA20323-TRX-000182-Example
InstanceOf: CauseOfDeathCodingMessageParameters
Usage: #example
Description: "Parameters for Cause of Death Coding: Vivienne Write (182)"
* meta.profile[0] = Canonical(CauseOfDeathCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 182
* parameter[death_year].valueUnsignedInt = 2020
* parameter[jurisdiction_id].valueString = "MA"
* parameter[acme_underlying_cause_of_death].valueString = "O159"
* parameter[manual_underlying_cause_of_death].valueString = "O159"
* parameter[record_cause_of_death][0].valueString = "0159"
* parameter[record_cause_of_death][+].valueString = "I469"
* parameter[entity_axis_code][0].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "I469"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 2
* parameter[entity_axis_code][=].part[coding].valueString = "O159"
* parameter[entity_axis_code][+].part[lineNumber].valueUnsignedInt = 6
* parameter[entity_axis_code][=].part[position].valueUnsignedInt = 1
* parameter[entity_axis_code][=].part[coding].valueString = "O95"
* parameter[input_causes_of_death].part[COD1A].valueString = "Cardiopulmonary arrest"
* parameter[input_causes_of_death].part[COD1B].valueString = "Eclampsia"
// * parameter[input_causes_of_death].part[COD1C].valueString = ""
// * parameter[input_causes_of_death].part[COD1D].valueString = ""
* parameter[input_causes_of_death].part[INTERVAL1A].valueString = "4 hr"
* parameter[input_causes_of_death].part[INTERVAL1B].valueString = "3 month"
// * parameter[input_causes_of_death].part[INTERVAL1C].valueString = ""
// * parameter[input_causes_of_death].part[INTERVAL1D].valueString = ""
// * parameter[input_causes_of_death].part[OTHERCONDITION].valueString = ""
* parameter[input_misc_fields].part[manner].valueString = "A" //Accidental
* parameter[input_misc_fields].part[injpl].valueString = "0"
* parameter[input_misc_fields].part[autop].valueString = "Y"
* parameter[input_misc_fields].part[autopf].valueString = "Y"
* parameter[input_misc_fields].part[tobac].valueString = "N"
* parameter[input_misc_fields].part[preg].valueString = "1" //not pregnant in past year
* parameter[input_misc_fields].part[doi_mo].valueUnsignedInt = 11
* parameter[input_misc_fields].part[doi_dy].valueUnsignedInt = 02
* parameter[input_misc_fields].part[doi_yr].valueUnsignedInt = 2019
* parameter[input_misc_fields].part[toi_hr].valueUnsignedInt = 1300
* parameter[input_misc_fields].part[toi_unit].valueString = "M" // military
* parameter[input_misc_fields].part[workinj].valueString = "N"
* parameter[input_misc_fields].part[certl].valueString = "M" // ME/Coronor


Instance: Message-MA20323-MRE-000182-Example
InstanceOf: DemographicsCodingMessage
Usage: #example
Description: "Message for Demographic Coding: Vivienne Write (182)"
* type = #message
* timestamp = "2020-11-18T09:42:02.4365922-05:00"
* entry[0].fullUrl = "http://examples.org/fhir/MessageHeader/Header-MA20323-MRE-000182-Example"
* entry[=].resource = Header-MA20323-MRE-000182-Example
* entry[+].fullUrl = "http://examples.org/fhir/Parameters/Parameters-MA20323-MRE-000182-Example"
* entry[=].resource = Parameters-MA20323-MRE-000182-Example

Instance: Header-MA20323-MRE-000182-Example
InstanceOf: DemographicsCodingMessageHeader
Usage: #example
Description: "Header for Demographic Coding: Vivienne Write (182)"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000182-Example)

Instance: Parameters-MA20323-MRE-000182-Example
InstanceOf: DemographicsCodingMessageParameters
Usage: #example
Description: "Demographic Coding Parameters:Vivienne Write (182)"
* meta.profile[0] = Canonical(DemographicsCodingMessageParameters)
* parameter[cert_no].valueUnsignedInt = 182
* parameter[jurisdiction_id].valueString = "MA"
* parameter[death_year].valueUnsignedInt = 2020
* parameter[coded_race].part[RACE1E].valueCoding = RaceCodeListCS#100
* parameter[coded_race].part[RACE2E].valueCoding = RaceCodeListCS#300
//* parameter[=].part[+].name = "RACEBRG"
//* parameter[=].part[=].valueCoding = RaceCodeListCS#21
* parameter[coded_ethnicity].part[DETHNICE].valueCoding = HispanicOriginCS#999
* parameter[input_race_flags].part[RACE1].valueString = "Y" // White
* parameter[input_race_flags].part[RACE2].valueString = "N"
* parameter[input_race_flags].part[RACE3].valueString = "Y"  // American Indian
* parameter[input_race_flags].part[RACE4].valueString = "N"
* parameter[input_race_flags].part[RACE5].valueString = "N"
* parameter[input_race_flags].part[RACE6].valueString = "N"
* parameter[input_race_flags].part[RACE7].valueString = "N"
* parameter[input_race_flags].part[RACE8].valueString = "N"
* parameter[input_race_flags].part[RACE9].valueString = "N"
* parameter[input_race_flags].part[RACE10].valueString = "N"
* parameter[input_race_flags].part[RACE11].valueString = "N"
* parameter[input_race_flags].part[RACE12].valueString = "N"
* parameter[input_race_flags].part[RACE13].valueString = "N"
* parameter[input_race_flags].part[RACE14].valueString = "N"
* parameter[input_race_flags].part[RACE15].valueString = "N"
* parameter[input_race_literals].part[RACE16].valueString = "Fort Sill Apache"
* parameter[input_ethnicity].part[DETHNIC1].valueString = "N"
* parameter[input_ethnicity].part[DETHNIC2].valueString = "N"
* parameter[input_ethnicity].part[DETHNIC3].valueString = "N"
* parameter[input_ethnicity].part[DETHNIC4].valueString = "Y" // Unknown Hispanic Origin