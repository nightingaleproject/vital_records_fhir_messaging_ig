Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $list-order = http://terminology.hl7.org/CodeSystem/list-order
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor

// Instance: Janet-Page-180-Example-old
// InstanceOf: Bundle
// Usage: #example
// Description: "Need a description"
// * type = #message
// * timestamp = "2020-11-17T16:39:40.54055-05:00"
// * entry[0].fullUrl = "urn:uuid:5a1bfcd1-de16-4d63-802a-38fcf19b9c08"
// * entry[=].resource = Inline-Instance-for-8285c9fe-0ff3-4a79-82f1-29fe82c4dd8c-1
// * entry[+].fullUrl = "urn:uuid:f12c77ee-c72b-4b69-bb17-93b2227185d3"
// * entry[=].resource = f12c77ee-c72b-4b69-bb17-93b2227185d3
// * entry[+].fullUrl = "http://example/org/Bundle/Janet-Page-180-Death-Certificate-Document-Example"
// * entry[=].resource = Janet-Page-180-Death-Certificate-Document-Example

// Instance: Inline-Instance-for-8285c9fe-0ff3-4a79-82f1-29fe82c4dd8c-1
// InstanceOf: MessageHeader
// Usage: #inline
// Description: "Need a description"
// * id = "5a1bfcd1-de16-4d63-802a-38fcf19b9c08"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission"
// * destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * source.endpoint = "http://mitre.org/vrdr"
// * focus = Reference(Janet-Page-180-Death-Certificate-Document-Example)

// Instance: f12c77ee-c72b-4b69-bb17-93b2227185d3
// InstanceOf: Parameters
// Usage: #inline
// Description: "Need a description"
// * parameter[0].name = "cert_no"
// * parameter[=].valueUnsignedInt = 180
// * parameter[+].name = "death_year"
// * parameter[=].valueUnsignedInt = 2020
// * parameter[+].name = "jurisdiction_id"
// * parameter[=].valueString = "MA"

Instance: Message-MA20323-TRX-000182-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Message for Cause of Death Coding: Vivienne Wright (182)-old"
* type = #message
* timestamp = "2020-11-19T11:40:14.3128405-05:00"
* entry[0].fullUrl = "urn:uuid:d570c223-492f-47c5-b030-0d52bbc70655"
* entry[=].resource = Header-for-MA20323-TRX-000182-Example-old
* entry[+].fullUrl = "urn:uuid:2230a510-a5b9-474d-bf05-326d963aec34"
* entry[=].resource = Parameters-for-MA20323-TRX-000182-Example-old

Instance: Header-for-MA20323-TRX-000182-Example-old
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-for-MA20323-TRX-000182-Example-old)

Instance: Parameters-for-MA20323-TRX-000182-Example-old
InstanceOf: Parameters
Usage: #inline
Description: "Need a description"
* id = "2230a510-a5b9-474d-bf05-326d963aec34"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "underlying_cause_of_death"
* parameter[=].valueCoding = $icd-10#O159
* parameter[+].name = "record_cause_of_death"
* parameter[=].part[0].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#O159
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#I469
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueInteger = 1
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#I469
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueInteger = 2
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#O159
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueInteger = 6
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#O95

Alias: $RaceCodeList.pdf = https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf
Alias: $HispanicCodeTitles.pdf = https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf

Instance: Message-MA20323-MRE-000182-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Message for Demographic Coding: Vivienne Wright (182)-old"
* type = #message
* timestamp = "2020-11-18T09:42:02.4365922-05:00"
* entry[0].fullUrl = "Header-MA20323-MRE-000182-Header-old"
* entry[=].resource = Header-MA20323-MRE-000182-Example-old
* entry[+].fullUrl = "Header-MA20323-MRE-000182-Parameters-old"
* entry[=].resource = Parameters-MA20323-MRE-000182-Example-old

Instance: Header-MA20323-MRE-000182-Example-old
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000182-Example-old)

Instance: Parameters-MA20323-MRE-000182-Example-old
InstanceOf: Parameters
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
* parameter[=].part[+].name = "RACEBRG"
* parameter[=].part[=].valueCoding = $RaceCodeList.pdf#21
* parameter[+].name = "ethnicity"
* parameter[=].part.name = "DETHNICE"
* parameter[=].part.valueCoding = $HispanicCodeTitles.pdf#999

Instance: Message-MA20323-TRX-000181-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Message for Cause of Death Coding: Madelyn Patel (181)-old"
* type = #message
* timestamp = "2020-11-19T11:40:18.1152444-05:00"
* entry[0].fullUrl = "http://example.org/fhir/MessageHeader/Header-MA20323-TRX-000181-Header-old"
* entry[=].resource = Header-MA20323-TRX-000181-Example-old
* entry[+].fullUrl = "http://example.org/fhir/Parameters/Parameters-MA20323-TRX-000181-Parameters-old"
* entry[=].resource = Parameters-MA20323-TRX-000181-Example-old

Instance: Header-MA20323-TRX-000181-Example-old
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Message-MA20323-TRX-000181-Example-old)

Instance: Parameters-MA20323-TRX-000181-Example-old
InstanceOf: Parameters
Usage: #inline
Description: "Need a description"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 181
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
* parameter[+].name = "underlying_cause_of_death"
* parameter[=].valueCoding = $icd-10#X42
* parameter[+].name = "record_cause_of_death"
* parameter[=].part[0].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#X42
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#I119
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#T405
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#T509
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueInteger = 1
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#T405
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#X42
* parameter[+].name = "entity_axis_code"
* parameter[=].part[0].name = "lineNumber"
* parameter[=].part[=].valueInteger = 6
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#I119
* parameter[=].part[+].name = "coding"
* parameter[=].part[=].valueCoding = $icd-10#T509


Instance: Message-MA20323-MRE-000181-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Message for Demographic Coding: Madelyn Patel (181)-old"
* type = #message
* timestamp = "2020-11-18T09:42:02.452214-05:00"
* entry[0].fullUrl = "http://example.org/fhir/MessageHeader/Header-MA20323-MRE-000181-Example-old"
* entry[=].resource = Header-MA20323-MRE-000181-Example-old
* entry[+].fullUrl = "http://example.org/fhir/Parameters/Parameters-MA20323-MRE-000181-Example-old"
* entry[=].resource = Parameters-MA20323-MRE-000181-Example-old

Instance: Header-MA20323-MRE-000181-Example-old
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "http://mitre.org/vrdr"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus = Reference(Parameters-MA20323-MRE-000181-Example-old)

Instance: Parameters-MA20323-MRE-000181-Example-old
InstanceOf: Parameters
Usage: #inline
Description: "Need a description"
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


/*
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $list-order = http://terminology.hl7.org/CodeSystem/list-order
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
*/
Instance: Vivienne-Wright-182-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Message for Record Submission: Vivienne Write (182)-old"
* type = #message
* timestamp = "2020-11-17T16:39:54.658923-05:00"
* entry[0].fullUrl = "urn:uuid:ce3a298c-4254-4cd3-890f-15864a6688c1"
* entry[=].resource = ce3a298c-4254-4cd3-890f-15864a6688c1
* entry[+].fullUrl = "urn:uuid:7e9fe93f-c9ea-484a-a98b-11ef21edd48a"
* entry[=].resource = Inline-Instance-for-7df11989-9720-4ec4-ba87-0bb9abc8610e-1
* entry[+].fullUrl = "http://examples/org/Bundle/Vivienne-Wright-182-Death-Certificate-Document-Example"
* entry[=].resource = Vivienne-Wright-182-Death-Certificate-Document-Example

Instance: ce3a298c-4254-4cd3-890f-15864a6688c1
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(Vivienne-Wright-182-Death-Certificate-Document-Example)

Instance: Inline-Instance-for-7df11989-9720-4ec4-ba87-0bb9abc8610e-1
InstanceOf: Parameters
Usage: #inline
Description: "Need a description"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 182
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"
