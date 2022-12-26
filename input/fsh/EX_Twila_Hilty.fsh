Instance: Twila_Hilty_Submission_Message
InstanceOf: DeathRecordSubmissionMessage
Usage: #example
* type = #message
* timestamp = "2022-12-23T19:55:56.5686754+00:00"
* entry[0].fullUrl = "urn:uuid:893224a4-8424-4926-96c3-b2b31623fb62"
* entry[=].resource = Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-1
* entry[+].fullUrl = "urn:uuid:9f1b8154-b488-41ee-a96c-a36fc2907b31"
* entry[=].resource = Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-2
* entry[+].fullUrl = "urn:uuid:9d7ba484-935c-404f-b1c3-ba0e90342764"
* entry[=].resource = Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-3

Instance: Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-1
InstanceOf: SubmissionHeader
Usage: #inline
* id = "893224a4-8424-4926-96c3-b2b31623fb62"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://example.com/jurisdiction/message/endpoint"
* focus = Reference(urn:uuid:9d7ba484-935c-404f-b1c3-ba0e90342764)

Instance: Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-2
InstanceOf: MessageParameters
Usage: #inline
* id = "9f1b8154-b488-41ee-a96c-a36fc2907b31"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 200
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2022
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MI"

Instance: Inline-Instance-for-6f2349f8-6f9f-476c-b733-242ccd0a3fb1-3
InstanceOf: Bundle
Usage: #inline
* id = "9d7ba484-935c-404f-b1c3-ba0e90342764"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* identifier.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
* identifier.extension.valueString = "200"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2022MI000200"
* type = #document
* timestamp = "2022-12-23T19:55:16.4587968+00:00"
* entry[0].fullUrl = "urn:uuid:62087584-daa0-45f4-8992-2dbdd18f473b"
* entry[=].resource.resourceType = "Composition"
* entry[=].resource.id = "62087584-daa0-45f4-8992-2dbdd18f473b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* entry[=].resource.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-filing-format-cs#electronic "Electronic"
* entry[=].resource.status = #final
* entry[=].resource.type = http://loinc.org#64297-5 "Death certificate"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.author.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.title = "Death Certificate"
* entry[=].resource.attester.mode = #legal
* entry[=].resource.attester.party.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.event.code = http://snomed.info/sct#103693007 "Diagnostic procedure (procedure)"
* entry[=].resource.event.detail.reference = "urn:uuid:40fd899e-b2d9-4a57-9b38-3d12f0a2b0ed"
* entry[=].resource.section[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDemographics
* entry[=].resource.section[=].entry[0].reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:79f8f442-601a-4b8d-ad71-45e17e987768"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:9b414675-bdb5-42b9-906f-f4641cac656b"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:b0c258bb-3f51-45cf-bf7d-210c99ea8ed3"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:45445425-d382-40a5-9d73-7db09f285e7b"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:b5d159c6-7161-4a2a-92f6-28655c9084e2"
* entry[=].resource.section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathCertification
* entry[=].resource.section[=].entry[0].reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:40fd899e-b2d9-4a57-9b38-3d12f0a2b0ed"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:d82318d1-3287-4a5b-9d18-ca8714546fc3"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:ee8af26d-f565-4f55-b1f9-67e0425d969d"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:847ae166-2f97-4f31-a691-11584a2a0270"
* entry[=].resource.section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathInvestigation
* entry[=].resource.section[=].entry[0].reference = "urn:uuid:a06dc671-f09d-4a3f-ab7e-900173e96110"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:916919d1-62ba-413b-9c14-81976f757a49"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:076b528b-23b8-4bdf-8601-1de0c68f55d8"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:bed09af5-5d66-4f80-8a3a-c62d62f95627"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:4403c134-481f-4464-8875-d54485a08c73"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:89e04c24-47a6-4b15-b4ac-a1eea3a43a03"
* entry[=].resource.section[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDisposition
* entry[=].resource.section[=].entry.reference = "urn:uuid:c82ad457-c64c-4406-8fac-a611681a03fa"
* entry[+].fullUrl = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* entry[=].resource.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* entry[=].resource.extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* entry[=].resource.extension[=].valueAddress.state = "CT"
* entry[=].resource.extension[=].valueAddress.country = "US"
* entry[=].resource.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "531869507"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Hilty"
* entry[=].resource.name.given[0] = "Twila"
* entry[=].resource.name.given[+] = "Roxanne"
* entry[=].resource.birthDate.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 2002
* entry[=].resource.birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 1
* entry[=].resource.birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 1
* entry[=].resource.birthDate.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
* entry[=].resource.address.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber"
* entry[=].resource.address.extension[=].valueString = "4437"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional"
* entry[=].resource.address.extension[=].valueString = "North"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
* entry[=].resource.address.extension[=].valueString = "Charles"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator"
* entry[=].resource.address.extension[=].valueString = "Avenue"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional"
* entry[=].resource.address.extension[=].valueString = "Southeast"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber"
* entry[=].resource.address.extension[=].valueString = "Apt 2B"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
* entry[=].resource.address.extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* entry[=].resource.address.line = "4437 North Charles Avenue Southeast Apt 2B"
* entry[=].resource.address.city = "Hartford"
* entry[=].resource.address.city.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
* entry[=].resource.address.city.extension.valuePositiveInt = 37000
* entry[=].resource.address.district = "Hartford"
* entry[=].resource.address.district.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
* entry[=].resource.address.district.extension.valuePositiveInt = 3
* entry[=].resource.address.state = "CT"
* entry[=].resource.address.state.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
* entry[=].resource.address.state.extension.valueString = "CT"
* entry[=].resource.address.postalCode = "06107"
* entry[=].resource.address.country = "US"
* entry[=].resource.maritalStatus.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.maritalStatus.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[=].resource.maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#S "Never Married"
* entry[+].fullUrl = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* entry[+].fullUrl = "urn:uuid:40fd899e-b2d9-4a57-9b38-3d12f0a2b0ed"
* entry[=].resource.resourceType = "Procedure"
* entry[=].resource.id = "40fd899e-b2d9-4a57-9b38-3d12f0a2b0ed"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* entry[=].resource.status = #completed
* entry[=].resource.category = http://snomed.info/sct#103693007 "Diagnostic procedure"
* entry[=].resource.code = http://snomed.info/sct#308646001 "Death certification"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.performer.function = http://snomed.info/sct#434651000124107 "Certifying physician-To the best of my knowledge, death occurred due to the cause(s) and manner stated."
* entry[=].resource.performer.actor.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[+].fullUrl = "urn:uuid:a06dc671-f09d-4a3f-ab7e-900173e96110"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "a06dc671-f09d-4a3f-ab7e-900173e96110"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#81956-5 "Date+time of death"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 2022
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 1
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 10
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
* entry[=].resource.valueDateTime.extension.extension[=].valueTime = "10:00:00"
* entry[=].resource.valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
* entry[=].resource.component.code = http://loinc.org#58332-8 "Place of death"
* entry[=].resource.component.valueCodeableConcept = http://snomed.info/sct#16983000 "Death in hospital"
* entry[+].fullUrl = "urn:uuid:916919d1-62ba-413b-9c14-81976f757a49"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "916919d1-62ba-413b-9c14-81976f757a49"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-location"
* entry[=].resource.name = "BLANK"
* entry[=].resource.type = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-location-type-cs#death "death location"
* entry[=].resource.address.district.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
* entry[=].resource.address.district.extension.valuePositiveInt = 1
* entry[=].resource.address.state = "MI"
* entry[=].resource.address.state.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Location-Jurisdiction-Id"
* entry[=].resource.address.state.extension.valueString = "MI"
* entry[+].fullUrl = "urn:uuid:79f8f442-601a-4b8d-ad71-45e17e987768"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "79f8f442-601a-4b8d-ad71-45e17e987768"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* entry[=].resource.active = true
* entry[=].resource.patient.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Brown"
* entry[+].fullUrl = "urn:uuid:9b414675-bdb5-42b9-906f-f4641cac656b"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "9b414675-bdb5-42b9-906f-f4641cac656b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#39016-1 "Age at death"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueQuantity.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueQuantity.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[=].resource.valueQuantity = 20 'a' "Years"
* entry[+].fullUrl = "urn:uuid:c82ad457-c64c-4406-8fac-a611681a03fa"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "c82ad457-c64c-4406-8fac-a611681a03fa"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#80905-3 "Body disposition method"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept = http://snomed.info/sct#449971000124106 "Burial"
* entry[+].fullUrl = "urn:uuid:85e4b589-fffa-4f82-b41c-a6a905fba515"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "85e4b589-fffa-4f82-b41c-a6a905fba515"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-education-level"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#80913-7 "Highest level of education [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueCodeableConcept.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#POSTG "Doctoral or post graduate education"
* entry[+].fullUrl = "urn:uuid:b0c258bb-3f51-45cf-bf7d-210c99ea8ed3"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "b0c258bb-3f51-45cf-bf7d-210c99ea8ed3"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-input-race-and-ethnicity"
* entry[=].resource.status = #final
* entry[=].resource.code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs#inputraceandethnicity "Input Race and Ethnicity"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicMexican "HispanicMexican"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicPuertoRican "HispanicPuertoRican"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicCuban "HispanicCuban"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicOther "HispanicOther"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#White "White"
* entry[=].resource.component[=].valueBoolean = true
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#BlackOrAfricanAmerican "BlackOrAfricanAmerican"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#AmericanIndianOrAlaskanNative "AmericanIndianOrAlaskanNative"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#AsianIndian "AsianIndian"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Chinese "Chinese"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Filipino "Filipino"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Japanese "Japanese"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Korean "Korean"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Vietnamese "Vietnamese"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherAsian "OtherAsian"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#NativeHawaiian "NativeHawaiian"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#GuamanianOrChamorro "GuamanianOrChamorro"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Samoan "Samoan"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherPacificIslander "OtherPacificIslander"
* entry[=].resource.component[=].valueBoolean = false
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherRace "OtherRace"
* entry[=].resource.component[=].valueBoolean = false
* entry[+].fullUrl = "urn:uuid:45445425-d382-40a5-9d73-7db09f285e7b"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "45445425-d382-40a5-9d73-7db09f285e7b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* entry[=].resource.status = #final
* entry[=].resource.category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* entry[=].resource.code = http://loinc.org#21843-8 "History of Usual occupation"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"
* entry[=].resource.valueCodeableConcept.text = "Teacher"
* entry[=].resource.component.code = http://loinc.org#21844-6 "History of Usual industry"
* entry[=].resource.component.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"
* entry[=].resource.component.valueCodeableConcept.text = "Education"
* entry[+].fullUrl = "urn:uuid:d82318d1-3287-4a5b-9d18-ca8714546fc3"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "d82318d1-3287-4a5b-9d18-ca8714546fc3"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#69449-7 "Manner of death"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.performer.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.valueCodeableConcept = http://snomed.info/sct#38605008 "Natural death"
* entry[+].fullUrl = "urn:uuid:076b528b-23b8-4bdf-8601-1de0c68f55d8"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "076b528b-23b8-4bdf-8601-1de0c68f55d8"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#85699-7 "Autopsy was performed"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component.code = http://loinc.org#69436-4 "Autopsy results available"
* entry[=].resource.component.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NA "not applicable"
* entry[+].fullUrl = "urn:uuid:bed09af5-5d66-4f80-8a3a-c62d62f95627"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "bed09af5-5d66-4f80-8a3a-c62d62f95627"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-tobacco-use-contributed-to-death"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#69443-0 "Did tobacco use contribute to death"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "Unknown"
* entry[+].fullUrl = "urn:uuid:4403c134-481f-4464-8875-d54485a08c73"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "4403c134-481f-4464-8875-d54485a08c73"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#69442-2 "Timing of recent pregnancy in relation to death"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueCodeableConcept.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueCodeableConcept.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[=].resource.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-pregnancy-status-cs#2 "Pregnant at time of death"
* entry[+].fullUrl = "urn:uuid:89e04c24-47a6-4b15-b4ac-a1eea3a43a03"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "89e04c24-47a6-4b15-b4ac-a1eea3a43a03"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-surgery-date"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#80992-1 "Date and time of surgery"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 2022
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 1
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 10
* entry[=].resource.valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
* entry[+].fullUrl = "urn:uuid:ee8af26d-f565-4f55-b1f9-67e0425d969d"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "ee8af26d-f565-4f55-b1f9-67e0425d969d"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.performer.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.valueCodeableConcept.text = "Cardiopulmonary arrest"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 1
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "4 Hours"
* entry[+].fullUrl = "urn:uuid:847ae166-2f97-4f31-a691-11584a2a0270"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "847ae166-2f97-4f31-a691-11584a2a0270"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.status = #final
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.performer.reference = "urn:uuid:913e9260-bf2d-4344-895d-2252c426e2eb"
* entry[=].resource.valueCodeableConcept.text = "Eclampsia"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 2
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "3 Months"
* entry[+].fullUrl = "urn:uuid:b5d159c6-7161-4a2a-92f6-28655c9084e2"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "b5d159c6-7161-4a2a-92f6-28655c9084e2"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-emerging-issues"
* entry[=].resource.status = #final
* entry[=].resource.code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs#emergingissues "NCHS-required Parameter Slots for Emerging Issues"
* entry[=].resource.subject.reference = "urn:uuid:4246ad39-25e4-4eee-82b7-1d11829a7eff"
* entry[=].resource.component.code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#EmergingIssue1_1
* entry[=].resource.component.valueString = "Y"
