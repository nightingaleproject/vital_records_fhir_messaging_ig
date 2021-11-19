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

Instance: Janet-Page-180-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Need a description"
* type = #message
* timestamp = "2020-11-17T16:39:40.54055-05:00"
* entry[0].fullUrl = "urn:uuid:5a1bfcd1-de16-4d63-802a-38fcf19b9c08"
* entry[=].resource = Inline-Instance-for-8285c9fe-0ff3-4a79-82f1-29fe82c4dd8c-1
* entry[+].fullUrl = "urn:uuid:f12c77ee-c72b-4b69-bb17-93b2227185d3"
* entry[=].resource = f12c77ee-c72b-4b69-bb17-93b2227185d3
* entry[+].fullUrl = "http://example/org/Bundle/Janet-Page-180-Death-Certificate-Document-Example"
* entry[=].resource = Janet-Page-180-Death-Certificate-Document-Example

Instance: Inline-Instance-for-8285c9fe-0ff3-4a79-82f1-29fe82c4dd8c-1
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* id = "5a1bfcd1-de16-4d63-802a-38fcf19b9c08"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(urn:uuid:f2db4a81-f817-4cc7-b677-19410ce8d13f)

Instance: f12c77ee-c72b-4b69-bb17-93b2227185d3
InstanceOf: Parameters
Usage: #inline
Description: "Need a description"
* parameter[0].name = "cert_no"
* parameter[=].valueUnsignedInt = 180
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2020
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "MA"

Instance: Janet-Page-180-Death-Certificate-Document-Example
InstanceOf: Bundle
Usage: #inline
Description: "Need a description"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certificate-Document"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2020MA000180"
* type = #document
* timestamp = "2020-10-20T14:45:58.54523-04:00"
* entry[0].fullUrl = "urn:uuid:1d38654a-20da-4e80-a86b-470c00dc1412"
* entry[=].resource.resourceType = "Composition"
* entry[=].resource.id = "1d38654a-20da-4e80-a86b-470c00dc1412"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certificate"
* entry[=].resource.status = #final
* entry[=].resource.type = $loinc#64297-5 "Death certificate"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.date = "2020-11-15T16:39:40-05:00"
* entry[=].resource.author.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.title = "Death Certificate"
* entry[=].resource.attester.mode = #legal
* entry[=].resource.attester.time = "2020-11-14T16:39:40-05:00"
* entry[=].resource.attester.party.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* entry[=].resource.event.detail.reference = "urn:uuid:ec3a959d-f093-4347-aa06-863ca745807b"
* entry[=].resource.section.entry[0].reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.section.entry[+].reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.section.entry[+].reference = "urn:uuid:04735e44-4296-4d66-ace9-7d58ca5d43f2"
* entry[=].resource.section.entry[+].reference = "urn:uuid:d4241521-b9b6-4ebf-a936-370a976ca5a7"
* entry[=].resource.section.entry[+].reference = "urn:uuid:ec3a959d-f093-4347-aa06-863ca745807b"
* entry[=].resource.section.entry[+].reference = "urn:uuid:bcf300ca-621d-40e1-804b-1fed75100cbf"
* entry[=].resource.section.entry[+].reference = "urn:uuid:5ce4c096-70b9-4d64-834e-01c7ddd5a898"
* entry[=].resource.section.entry[+].reference = "urn:uuid:8f58fd25-39c3-4b78-a234-437ee6927c74"
* entry[=].resource.section.entry[+].reference = "urn:uuid:9c3130c0-c90e-4151-929a-36329702e236"
* entry[=].resource.section.entry[+].reference = "urn:uuid:acea4992-3a84-464b-95af-fbdfb0c32361"
* entry[=].resource.section.entry[+].reference = "urn:uuid:2f77ab25-3c60-4406-8092-58e5de958ae8"
* entry[=].resource.section.entry[+].reference = "urn:uuid:9e4b6dac-ed5e-4232-b15a-62ef66d3b8bd"
* entry[=].resource.section.entry[+].reference = "urn:uuid:f68e25c9-d5f3-4f56-9501-399c316b3339"
* entry[=].resource.section.entry[+].reference = "urn:uuid:8d5c37e4-d853-441a-ab21-45e5eb3a8437"
* entry[=].resource.section.entry[+].reference = "urn:uuid:dff58a4b-c600-43b9-bc45-3f8ed52f424e"
* entry[=].resource.section.entry[+].reference = "urn:uuid:9a9b3786-d83e-4583-ac85-5982ebd33509"
* entry[=].resource.section.entry[+].reference = "urn:uuid:cc31bf83-70a5-4ead-a533-58d2780a08b0"
* entry[=].resource.section.entry[+].reference = "urn:uuid:d53657ac-ee2c-4912-b804-ec5c3e3caaa5"
* entry[=].resource.section.entry[+].reference = "urn:uuid:602043ca-35a8-48b3-b4fa-42a80d44748f"
* entry[=].resource.section.entry[+].reference = "urn:uuid:73648df6-17a5-49fa-b9a0-6e9ea06a2ecf"
* entry[=].resource.section.entry[+].reference = "urn:uuid:78fd788a-5e55-4478-b929-1eb47a55b0ed"
* entry[=].resource.section.entry[+].reference = "urn:uuid:ca58c000-92a3-4ab4-8bb6-d8cc0fc1ae80"
* entry[=].resource.section.entry[+].reference = "urn:uuid:3c69cdaf-41cf-47ae-af63-84ab970a190b"
* entry[=].resource.section.entry[+].reference = "urn:uuid:177ae0a2-ac6b-4949-bbfe-baa2911133a3"
* entry[=].resource.section.entry[+].reference = "urn:uuid:bf237cdc-03ce-4d49-8cdc-db01fed06ef7"
* entry[=].resource.section.entry[+].reference = "urn:uuid:9078a217-a2bc-4756-856c-7191f09627dc"
* entry[+].fullUrl = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent"
* entry[=].resource.extension[0].extension[0].url = "ombCategory"
* entry[=].resource.extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* entry[=].resource.extension[=].extension[+].url = "text"
* entry[=].resource.extension[=].extension[=].valueString = "White"
* entry[=].resource.extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* entry[=].resource.extension[+].extension[0].url = "detailed"
* entry[=].resource.extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2180-8 "Puerto Rican"
* entry[=].resource.extension[=].extension[+].url = "text"
* entry[=].resource.extension[=].extension[=].valueString = "Puerto Rican"
* entry[=].resource.extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* entry[=].resource.extension[=].valueCode = #F
// * entry[=].resource.extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
// * entry[=].resource.extension[=].valueAddress.city = "Atlanta"
// * entry[=].resource.extension[=].valueAddress.state = "GA"
// * entry[=].resource.extension[=].valueAddress.country = "United States"
* entry[=].resource.identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "555111234"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Page"
* entry[=].resource.name.given = "Janet"
* entry[=].resource.birthDate = "1949-01-15"
* entry[=].resource.address.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* entry[=].resource.address.extension.valueCoding = $v2-0136#Y "Yes"
* entry[=].resource.address.line = "25 Hope Street"
* entry[=].resource.address.city = "Atlanta"
* entry[=].resource.address.district = "Fulton"
* entry[=].resource.address.state = "GA"
* entry[=].resource.address.country = "United States"
* entry[=].resource.maritalStatus = $v3-MaritalStatus#D "Divorced"
* entry[+].fullUrl = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Certifier"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Jones"
* entry[=].resource.name.given = "Sam"
* entry[=].resource.address.line = "1 Main Street"
* entry[=].resource.address.city = "Atlanta"
* entry[=].resource.address.state = "GA"
* entry[=].resource.address.postalCode = "30303"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:04735e44-4296-4d66-ace9-7d58ca5d43f2"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "04735e44-4296-4d66-ace9-7d58ca5d43f2"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Pronouncement-Performer"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Jones"
* entry[=].resource.name.given = "Sam"
* entry[+].fullUrl = "urn:uuid:d4241521-b9b6-4ebf-a936-370a976ca5a7"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "d4241521-b9b6-4ebf-a936-370a976ca5a7"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Mortician"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* entry[=].resource.identifier.value = "111111AB"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Winston"
* entry[=].resource.name.given[0] = "Maureen"
* entry[=].resource.name.given[+] = "P"
* entry[+].fullUrl = "urn:uuid:ec3a959d-f093-4347-aa06-863ca745807b"
* entry[=].resource.resourceType = "Procedure"
* entry[=].resource.id = "ec3a959d-f093-4347-aa06-863ca745807b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certification"
* entry[=].resource.identifier.value = "180"
* entry[=].resource.status = #completed
* entry[=].resource.category = $sct#103693007 "Diagnostic procedure"
* entry[=].resource.code = $sct#308646001 "Death certification"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.performedDateTime = "2020-11-14T16:39:40-05:00"
* entry[=].resource.performer.function = $sct#434641000124105 "Death certification and verification by physician"
* entry[=].resource.performer.actor.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[+].fullUrl = "urn:uuid:bcf300ca-621d-40e1-804b-1fed75100cbf"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.id = "bcf300ca-621d-40e1-804b-1fed75100cbf"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Interested-Party"
* entry[=].resource.active = true
* entry[+].fullUrl = "urn:uuid:5ce4c096-70b9-4d64-834e-01c7ddd5a898"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.id = "5ce4c096-70b9-4d64-834e-01c7ddd5a898"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Funeral-Home"
* entry[=].resource.active = true
* entry[=].resource.type = $organization-type#bus "Non-Healthcare Business or Corporation"
* entry[=].resource.name = "Pecan Street Funeral Home and Crematory"
* entry[=].resource.address.line = "15 Pecan Street"
* entry[=].resource.address.city = "Atlanta"
* entry[=].resource.address.state = "GA"
* entry[=].resource.address.postalCode = "30301"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:8f58fd25-39c3-4b78-a234-437ee6927c74"
* entry[=].resource.resourceType = "PractitionerRole"
* entry[=].resource.id = "8f58fd25-39c3-4b78-a234-437ee6927c74"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Funeral-Service-Licensee"
* entry[=].resource.practitioner.reference = "urn:uuid:d4241521-b9b6-4ebf-a936-370a976ca5a7"
* entry[=].resource.organization.reference = "urn:uuid:5ce4c096-70b9-4d64-834e-01c7ddd5a898"
* entry[+].fullUrl = "urn:uuid:9c3130c0-c90e-4151-929a-36329702e236"
* entry[=].resource.resourceType = "List"
* entry[=].resource.id = "9c3130c0-c90e-4151-929a-36329702e236"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-of-Death-Pathway"
* entry[=].resource.status = #current
* entry[=].resource.mode = #snapshot
* entry[=].resource.source.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.orderedBy = $list-order#priority "Sorted by Priority"
* entry[=].resource.entry[0].item.reference = "urn:uuid:602043ca-35a8-48b3-b4fa-42a80d44748f"
* entry[=].resource.entry[+].item.reference = "urn:uuid:73648df6-17a5-49fa-b9a0-6e9ea06a2ecf"
* entry[+].fullUrl = "urn:uuid:acea4992-3a84-464b-95af-fbdfb0c32361"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "acea4992-3a84-464b-95af-fbdfb0c32361"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Disposition-Location"
* entry[=].resource.name = "Pecan Street Funeral Home and Crematory"
* entry[=].resource.address.line = "15 Pecan Street"
* entry[=].resource.address.city = "Atlanta"
* entry[=].resource.address.state = "GA"
* entry[=].resource.address.postalCode = "30301"
* entry[=].resource.address.country = "United States"
* entry[=].resource.physicalType = $location-physical-type#si "Site"
* entry[+].fullUrl = "urn:uuid:2f77ab25-3c60-4406-8092-58e5de958ae8"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "2f77ab25-3c60-4406-8092-58e5de958ae8"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Age"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#30525-0 "Age"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.effectiveDateTime = "2020-11-12T16:39:40-05:00"
* entry[=].resource.valueQuantity.value = 71
* entry[=].resource.valueQuantity.unit = "a"
* entry[+].fullUrl = "urn:uuid:9e4b6dac-ed5e-4232-b15a-62ef66d3b8bd"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "9e4b6dac-ed5e-4232-b15a-62ef66d3b8bd"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-BirthRecordIdentifier"
* entry[=].resource.status = #final
* entry[=].resource.code = $v2-0203#BR "Birth registry number"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueString = "515151"
* entry[+].fullUrl = "urn:uuid:f68e25c9-d5f3-4f56-9501-399c316b3339"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "f68e25c9-d5f3-4f56-9501-399c316b3339"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Mother"
* entry[=].resource.patient.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.relationship = $v3-RoleCode#MTH "mother"
* entry[=].resource.name.family = "Shay"
* entry[=].resource.name.given = "Linda"
* entry[+].fullUrl = "urn:uuid:8d5c37e4-d853-441a-ab21-45e5eb3a8437"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "8d5c37e4-d853-441a-ab21-45e5eb3a8437"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Father"
* entry[=].resource.patient.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.relationship = $v3-RoleCode#FTH "father"
* entry[=].resource.name.family = "Page"
* entry[+].fullUrl = "urn:uuid:dff58a4b-c600-43b9-bc45-3f8ed52f424e"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "dff58a4b-c600-43b9-bc45-3f8ed52f424e"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Education-Level"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1455 "Doctorate Degree or Professional Degree"
* entry[=].resource.valueCodeableConcept.text = "Doctorate"
* entry[+].fullUrl = "urn:uuid:9a9b3786-d83e-4583-ac85-5982ebd33509"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "9a9b3786-d83e-4583-ac85-5982ebd33509"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Usual-Work"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#21843-8 "History of Usual occupation"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.314#1010 "Computer Programmers"
* entry[=].resource.valueCodeableConcept.text = "Programmer"
* entry[=].resource.component.code = $loinc#21844-6 "History of Usual industry"
* entry[=].resource.component.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.315#6990 "Insurance carriers and related activities"
* entry[=].resource.component.valueCodeableConcept.text = "Health Insurance"
* entry[+].fullUrl = "urn:uuid:cc31bf83-70a5-4ead-a533-58d2780a08b0"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "cc31bf83-70a5-4ead-a533-58d2780a08b0"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Date"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* entry[=].resource.extension.valueReference.reference = "urn:uuid:d53657ac-ee2c-4912-b804-ec5c3e3caaa5"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#81956-5 "Date+time of death"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.effectiveDateTime = "2020-11-12T16:39:40-05:00"
* entry[=].resource.performer.reference = "urn:uuid:04735e44-4296-4d66-ace9-7d58ca5d43f2"
* entry[=].resource.valueDateTime = "2020-11-12T16:39:40-05:00"
* entry[=].resource.component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* entry[=].resource.component.valueDateTime = "2020-11-13T16:39:40-05:00"
* entry[+].fullUrl = "urn:uuid:d53657ac-ee2c-4912-b804-ec5c3e3caaa5"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "d53657ac-ee2c-4912-b804-ec5c3e3caaa5"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Location"
* entry[=].resource.name = "Pecan Grove Nursing Home"
* entry[=].resource.description = "nursing home"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:602043ca-35a8-48b3-b4fa-42a80d44748f"
* entry[=].resource.resourceType = "Condition"
* entry[=].resource.id = "602043ca-35a8-48b3-b4fa-42a80d44748f"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-Of-Death-Condition"
* entry[=].resource.code.text = "Congestive heart failure"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.onsetString = "1 hour"
* entry[=].resource.asserter.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[+].fullUrl = "urn:uuid:73648df6-17a5-49fa-b9a0-6e9ea06a2ecf"
* entry[=].resource.resourceType = "Condition"
* entry[=].resource.id = "73648df6-17a5-49fa-b9a0-6e9ea06a2ecf"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-Of-Death-Condition"
* entry[=].resource.code.text = "breast cancer"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.onsetString = "20 years"
* entry[=].resource.asserter.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[+].fullUrl = "urn:uuid:78fd788a-5e55-4478-b929-1eb47a55b0ed"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "78fd788a-5e55-4478-b929-1eb47a55b0ed"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Examiner-Contacted"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = $v2-0136#N "No"
* entry[+].fullUrl = "urn:uuid:ca58c000-92a3-4ab4-8bb6-d8cc0fc1ae80"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "ca58c000-92a3-4ab4-8bb6-d8cc0fc1ae80"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Manner-of-Death"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69449-7 "Manner of death"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.performer.reference = "urn:uuid:736c716b-d05d-48bd-ad16-eec4a0bdb5bc"
* entry[=].resource.valueCodeableConcept = $sct#38605008 "Natural death"
* entry[+].fullUrl = "urn:uuid:3c69cdaf-41cf-47ae-af63-84ab970a190b"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "3c69cdaf-41cf-47ae-af63-84ab970a190b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Autopsy-Performed-Indicator"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#85699-7 "Autopsy was performed"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = $v2-0136#N "No"
* entry[+].fullUrl = "urn:uuid:177ae0a2-ac6b-4949-bbfe-baa2911133a3"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "177ae0a2-ac6b-4949-bbfe-baa2911133a3"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Disposition-Method"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* entry[=].resource.extension.valueReference.reference = "urn:uuid:acea4992-3a84-464b-95af-fbdfb0c32361"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#80905-3 "Body disposition method"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.performer.reference = "urn:uuid:d4241521-b9b6-4ebf-a936-370a976ca5a7"
* entry[=].resource.valueCodeableConcept = $sct#449961000124104 "Patient status determination, deceased and cremated"
* entry[+].fullUrl = "urn:uuid:bf237cdc-03ce-4d49-8cdc-db01fed06ef7"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "bf237cdc-03ce-4d49-8cdc-db01fed06ef7"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Pregnancy"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = $v3-NullFlavor#NA "not applicable"
* entry[+].fullUrl = "urn:uuid:9078a217-a2bc-4756-856c-7191f09627dc"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "9078a217-a2bc-4756-856c-7191f09627dc"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Tobacco-Use-Contributed-To-Death"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69443-0 "Did tobacco use contribute to death"
* entry[=].resource.subject.reference = "urn:uuid:8c08f9d5-2f14-4b19-83f0-3ac495fd2e8d"
* entry[=].resource.valueCodeableConcept = $v3-NullFlavor#UNK "unknown"









Instance: Message-MA20323-TRX-000182-Example-old
InstanceOf: Bundle
Usage: #example
Description: "Need a description"
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
Description: "Need a description"
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
Description: "Need a description"
* type = #message
* timestamp = "2020-11-19T11:40:18.1152444-05:00"
* entry[0].fullUrl = "http://example.org/fhir/MessageHeader/Header-MA20323-TRX-000182-Header-old"
* entry[=].resource = Header-MA20323-TRX-000181-Example-old
* entry[+].fullUrl = "http://example.org/fhir/Parameters/Parameters-MA20323-TRX-000182-Parameters-old"
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
Description: "Need a description"
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
* focus = Reference(Message-MA20323-MRE-000181-Example-old)

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
Description: "Need a description"
* type = #message
* timestamp = "2020-11-17T16:39:54.658923-05:00"
* entry[0].fullUrl = "urn:uuid:ce3a298c-4254-4cd3-890f-15864a6688c1"
* entry[=].resource = ce3a298c-4254-4cd3-890f-15864a6688c1
* entry[+].fullUrl = "urn:uuid:7e9fe93f-c9ea-484a-a98b-11ef21edd48a"
* entry[=].resource = Inline-Instance-for-7df11989-9720-4ec4-ba87-0bb9abc8610e-1
* entry[+].fullUrl = "urn:uuid:19361ad2-fc61-4eef-9332-6bd31acedca7"
* entry[=].resource = Inline-Instance-for-7df11989-9720-4ec4-ba87-0bb9abc8610e-2

Instance: ce3a298c-4254-4cd3-890f-15864a6688c1
InstanceOf: MessageHeader
Usage: #inline
Description: "Need a description"
* eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "http://mitre.org/vrdr"
* focus = Reference(urn:uuid:19361ad2-fc61-4eef-9332-6bd31acedca7)

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

Instance: Inline-Instance-for-7df11989-9720-4ec4-ba87-0bb9abc8610e-2
InstanceOf: Bundle
Usage: #inline
Description: "Need a description"
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certificate-Document"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2020MA000182"
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* entry[0].fullUrl = "urn:uuid:8427bb2c-c9ab-47ea-b870-1632730be71e"
* entry[=].resource.resourceType = "Composition"
* entry[=].resource.id = "8427bb2c-c9ab-47ea-b870-1632730be71e"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certificate"
* entry[=].resource.status = #final
* entry[=].resource.type = $loinc#64297-5 "Death certificate"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.date = "2020-11-15T16:39:54-05:00"
* entry[=].resource.author.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.title = "Death Certificate"
* entry[=].resource.attester.mode = #legal
* entry[=].resource.attester.time = "2020-11-14T16:39:54-05:00"
* entry[=].resource.attester.party.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.event.code = $sct#103693007 "Diagnostic procedure (procedure)"
* entry[=].resource.event.detail.reference = "urn:uuid:d8a3303b-9e40-4524-bf2b-e95bad38bb7d"
* entry[=].resource.section.entry[0].reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.section.entry[+].reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.section.entry[+].reference = "urn:uuid:985cad08-e274-4a86-8d32-9c63c70360d8"
* entry[=].resource.section.entry[+].reference = "urn:uuid:b7a0e476-e685-4513-88ec-1edca2c340b8"
* entry[=].resource.section.entry[+].reference = "urn:uuid:d8a3303b-9e40-4524-bf2b-e95bad38bb7d"
* entry[=].resource.section.entry[+].reference = "urn:uuid:f4a06c91-b5a4-4a44-9152-c1d7505aeb44"
* entry[=].resource.section.entry[+].reference = "urn:uuid:b7246bd9-cbeb-4f5b-9ee6-d9adcbbcc100"
* entry[=].resource.section.entry[+].reference = "urn:uuid:c6df388b-9d1f-40b1-89c9-fb94ec846398"
* entry[=].resource.section.entry[+].reference = "urn:uuid:765b77e6-c2b2-40c9-86dd-e130fa6b2b7a"
* entry[=].resource.section.entry[+].reference = "urn:uuid:a1ec1cf8-1ab5-4a5a-991d-705809d5d285"
* entry[=].resource.section.entry[+].reference = "urn:uuid:9b12b928-082a-4487-afdd-965a54be2f02"
* entry[=].resource.section.entry[+].reference = "urn:uuid:8990ad4f-36fa-45fb-a5b4-4aaab85aa4f5"
* entry[=].resource.section.entry[+].reference = "urn:uuid:d795dacc-e12a-491e-a0bc-fd85a47d7aaa"
* entry[=].resource.section.entry[+].reference = "urn:uuid:b2342444-ed56-4f4b-9a30-0cbff6e1a4aa"
* entry[=].resource.section.entry[+].reference = "urn:uuid:c82b3dc9-dce7-417d-aff5-e4c5877ec089"
* entry[=].resource.section.entry[+].reference = "urn:uuid:3336a62a-3669-4672-b979-c400d0628562"
* entry[=].resource.section.entry[+].reference = "urn:uuid:954fbeb0-b8d0-4dad-a280-4e1a82327e6e"
* entry[=].resource.section.entry[+].reference = "urn:uuid:cee1aa60-9daf-490e-ab6a-5afe8f86d500"
* entry[=].resource.section.entry[+].reference = "urn:uuid:d6b8c87c-f826-4b37-bc8a-0cafc8ac63b6"
* entry[=].resource.section.entry[+].reference = "urn:uuid:29cf36fc-c304-45a9-9360-6a10757ed25f"
* entry[=].resource.section.entry[+].reference = "urn:uuid:ba181280-6b57-4b1f-8387-452b8fbe8501"
* entry[=].resource.section.entry[+].reference = "urn:uuid:7941b95e-cc13-4317-a325-79fcb9981afe"
* entry[=].resource.section.entry[+].reference = "urn:uuid:74437110-26e7-419f-85d6-888be08ae729"
* entry[=].resource.section.entry[+].reference = "urn:uuid:e1a364d3-ad31-4399-8910-ea4f746bd5dc"
* entry[=].resource.section.entry[+].reference = "urn:uuid:be384af5-ab34-439d-92b8-5468f77d756a"
* entry[=].resource.section.entry[+].reference = "urn:uuid:647b7945-6f23-460a-929a-e86c4fc15c54"
* entry[+].fullUrl = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent"
* entry[=].resource.extension[0].extension[0].url = "ombCategory"
* entry[=].resource.extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* entry[=].resource.extension[=].extension[+].url = "ombCategory"
* entry[=].resource.extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* entry[=].resource.extension[=].extension[+].url = "text"
* entry[=].resource.extension[=].extension[=].valueString = "White, American Indian or Alaska Native"
* entry[=].resource.extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* entry[=].resource.extension[+].extension[0].url = "ombCategory"
* entry[=].resource.extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* entry[=].resource.extension[=].extension[+].url = "text"
* entry[=].resource.extension[=].extension[=].valueString = "Not Hispanic or Latino"
* entry[=].resource.extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* entry[=].resource.extension[=].valueCode = #F
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* entry[=].resource.extension[=].valueAddress.city = "Hinsdale"
* entry[=].resource.extension[=].valueAddress.state = "IL"
* entry[=].resource.extension[=].valueAddress.country = "United States"
* entry[=].resource.identifier.type = $v2-0203#SB "Social Beneficiary Identifier"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "789456123"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Wright"
* entry[=].resource.name.given[0] = "Vivienne"
* entry[=].resource.name.given[+] = "Lee"
* entry[=].resource.birthDate = "2001-04-11"
* entry[=].resource.address.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator"
* entry[=].resource.address.extension.valueCoding = $v2-0136#Y "Yes"
* entry[=].resource.address.line = "101 Liberty Lane"
* entry[=].resource.address.city = "Harrisburg"
* entry[=].resource.address.state = "PA"
* entry[=].resource.address.country = "United States"
* entry[=].resource.maritalStatus = $v3-MaritalStatus#M "Married"
* entry[+].fullUrl = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Certifier"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Black"
* entry[=].resource.name.given = "Jim"
* entry[=].resource.address.line = "44 South Street"
* entry[=].resource.address.city = "Bird in Hand"
* entry[=].resource.address.state = "PA"
* entry[=].resource.address.postalCode = "17505"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:985cad08-e274-4a86-8d32-9c63c70360d8"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "985cad08-e274-4a86-8d32-9c63c70360d8"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Pronouncement-Performer"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Black"
* entry[=].resource.name.given = "Jim"
* entry[+].fullUrl = "urn:uuid:b7a0e476-e685-4513-88ec-1edca2c340b8"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "b7a0e476-e685-4513-88ec-1edca2c340b8"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Mortician"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-npi"
* entry[=].resource.identifier.value = "414444AB"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Clark"
* entry[=].resource.name.given[0] = "Joseph"
* entry[=].resource.name.given[+] = "M"
* entry[+].fullUrl = "urn:uuid:d8a3303b-9e40-4524-bf2b-e95bad38bb7d"
* entry[=].resource.resourceType = "Procedure"
* entry[=].resource.id = "d8a3303b-9e40-4524-bf2b-e95bad38bb7d"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Certification"
* entry[=].resource.identifier.value = "182"
* entry[=].resource.status = #completed
* entry[=].resource.category = $sct#103693007 "Diagnostic procedure"
* entry[=].resource.code = $sct#308646001 "Death certification"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.performedDateTime = "2020-11-14T16:39:54-05:00"
* entry[=].resource.performer.function = $sct#310193003 "Coroner"
* entry[=].resource.performer.actor.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[+].fullUrl = "urn:uuid:f4a06c91-b5a4-4a44-9152-c1d7505aeb44"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.id = "f4a06c91-b5a4-4a44-9152-c1d7505aeb44"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Interested-Party"
* entry[=].resource.active = true
* entry[+].fullUrl = "urn:uuid:b7246bd9-cbeb-4f5b-9ee6-d9adcbbcc100"
* entry[=].resource.resourceType = "Organization"
* entry[=].resource.id = "b7246bd9-cbeb-4f5b-9ee6-d9adcbbcc100"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Funeral-Home"
* entry[=].resource.active = true
* entry[=].resource.type = $organization-type#bus "Non-Healthcare Business or Corporation"
* entry[=].resource.name = "Lancaster Funeral Home and Crematory"
* entry[=].resource.address.line = "211 High Street"
* entry[=].resource.address.city = "Lancaster"
* entry[=].resource.address.state = "PA"
* entry[=].resource.address.postalCode = "17573"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:c6df388b-9d1f-40b1-89c9-fb94ec846398"
* entry[=].resource.resourceType = "PractitionerRole"
* entry[=].resource.id = "c6df388b-9d1f-40b1-89c9-fb94ec846398"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Funeral-Service-Licensee"
* entry[=].resource.practitioner.reference = "urn:uuid:b7a0e476-e685-4513-88ec-1edca2c340b8"
* entry[=].resource.organization.reference = "urn:uuid:b7246bd9-cbeb-4f5b-9ee6-d9adcbbcc100"
* entry[+].fullUrl = "urn:uuid:765b77e6-c2b2-40c9-86dd-e130fa6b2b7a"
* entry[=].resource.resourceType = "List"
* entry[=].resource.id = "765b77e6-c2b2-40c9-86dd-e130fa6b2b7a"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-of-Death-Pathway"
* entry[=].resource.status = #current
* entry[=].resource.mode = #snapshot
* entry[=].resource.source.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.orderedBy = $list-order#priority "Sorted by Priority"
* entry[=].resource.entry[0].item.reference = "urn:uuid:d6b8c87c-f826-4b37-bc8a-0cafc8ac63b6"
* entry[=].resource.entry[+].item.reference = "urn:uuid:29cf36fc-c304-45a9-9360-6a10757ed25f"
* entry[+].fullUrl = "urn:uuid:a1ec1cf8-1ab5-4a5a-991d-705809d5d285"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "a1ec1cf8-1ab5-4a5a-991d-705809d5d285"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Disposition-Location"
* entry[=].resource.name = "Lancaster Funeral Home and Crematory"
* entry[=].resource.address.line = "211 High Street"
* entry[=].resource.address.city = "Lancaster"
* entry[=].resource.address.state = "PA"
* entry[=].resource.address.postalCode = "17573"
* entry[=].resource.address.country = "United States"
* entry[=].resource.physicalType = $location-physical-type#si "Site"
* entry[+].fullUrl = "urn:uuid:9b12b928-082a-4487-afdd-965a54be2f02"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "9b12b928-082a-4487-afdd-965a54be2f02"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Age"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#30525-0 "Age"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.effectiveDateTime = "2020-11-12T16:39:54-05:00"
* entry[=].resource.valueQuantity.value = 19
* entry[=].resource.valueQuantity.unit = "a"
* entry[+].fullUrl = "urn:uuid:8990ad4f-36fa-45fb-a5b4-4aaab85aa4f5"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "8990ad4f-36fa-45fb-a5b4-4aaab85aa4f5"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-BirthRecordIdentifier"
* entry[=].resource.status = #final
* entry[=].resource.code = $v2-0203#BR "Birth registry number"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueString = "717171"
* entry[+].fullUrl = "urn:uuid:d795dacc-e12a-491e-a0bc-fd85a47d7aaa"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "d795dacc-e12a-491e-a0bc-fd85a47d7aaa"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Mother"
* entry[=].resource.patient.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.relationship = $v3-RoleCode#MTH "mother"
* entry[=].resource.name.family = "White"
* entry[=].resource.name.given = "Martha"
* entry[+].fullUrl = "urn:uuid:b2342444-ed56-4f4b-9a30-0cbff6e1a4aa"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "b2342444-ed56-4f4b-9a30-0cbff6e1a4aa"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Father"
* entry[=].resource.patient.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.relationship = $v3-RoleCode#FTH "father"
* entry[=].resource.name.family = "Wright"
* entry[+].fullUrl = "urn:uuid:c82b3dc9-dce7-417d-aff5-e4c5877ec089"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "c82b3dc9-dce7-417d-aff5-e4c5877ec089"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Education-Level"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#80913-7 "Highest level of education [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1449 "9th through 12th grade; no diploma"
* entry[=].resource.valueCodeableConcept.text = "11th grade"
* entry[+].fullUrl = "urn:uuid:3336a62a-3669-4672-b979-c400d0628562"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "3336a62a-3669-4672-b979-c400d0628562"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Usual-Work"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#21843-8 "History of Usual occupation"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.314#5700 "Secretaries and administrative assistants"
* entry[=].resource.valueCodeableConcept.text = "secretary"
* entry[=].resource.component.code = $loinc#21844-6 "History of Usual industry"
* entry[=].resource.component.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.315#9390 "Other general government and support"
* entry[=].resource.component.valueCodeableConcept.text = "State agency"
* entry[+].fullUrl = "urn:uuid:954fbeb0-b8d0-4dad-a280-4e1a82327e6e"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "954fbeb0-b8d0-4dad-a280-4e1a82327e6e"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Date"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* entry[=].resource.extension.valueReference.reference = "urn:uuid:cee1aa60-9daf-490e-ab6a-5afe8f86d500"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#81956-5 "Date+time of death"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.effectiveDateTime = "2020-11-12T16:39:54-05:00"
* entry[=].resource.performer.reference = "urn:uuid:985cad08-e274-4a86-8d32-9c63c70360d8"
* entry[=].resource.valueDateTime = "2020-11-12T16:39:54-05:00"
* entry[=].resource.component.code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]"
* entry[=].resource.component.valueDateTime = "2020-11-13T16:39:54-05:00"
* entry[+].fullUrl = "urn:uuid:cee1aa60-9daf-490e-ab6a-5afe8f86d500"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "cee1aa60-9daf-490e-ab6a-5afe8f86d500"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Death-Location"
* entry[=].resource.name = "Mt. Olive Hospital"
* entry[=].resource.description = "Emergency room"
* entry[=].resource.address.state = "MA"
* entry[=].resource.address.country = "United States"
* entry[+].fullUrl = "urn:uuid:d6b8c87c-f826-4b37-bc8a-0cafc8ac63b6"
* entry[=].resource.resourceType = "Condition"
* entry[=].resource.id = "d6b8c87c-f826-4b37-bc8a-0cafc8ac63b6"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-Of-Death-Condition"
* entry[=].resource.code.text = "Cardiopulmonary arrest"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.onsetString = "4 hours"
* entry[=].resource.asserter.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[+].fullUrl = "urn:uuid:29cf36fc-c304-45a9-9360-6a10757ed25f"
* entry[=].resource.resourceType = "Condition"
* entry[=].resource.id = "29cf36fc-c304-45a9-9360-6a10757ed25f"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Cause-Of-Death-Condition"
* entry[=].resource.code.text = "Eclampsia"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.onsetString = "3 months"
* entry[=].resource.asserter.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[+].fullUrl = "urn:uuid:ba181280-6b57-4b1f-8387-452b8fbe8501"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "ba181280-6b57-4b1f-8387-452b8fbe8501"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Examiner-Contacted"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#74497-9 "Medical examiner or coroner was contacted [US Standard Certificate of Death]"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = $v2-0136#Y "Yes"
* entry[+].fullUrl = "urn:uuid:7941b95e-cc13-4317-a325-79fcb9981afe"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "7941b95e-cc13-4317-a325-79fcb9981afe"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Manner-of-Death"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69449-7 "Manner of death"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.performer.reference = "urn:uuid:f7389797-e106-4707-bd07-e2282e245fab"
* entry[=].resource.valueCodeableConcept = $sct#38605008 "Natural death"
* entry[+].fullUrl = "urn:uuid:74437110-26e7-419f-85d6-888be08ae729"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "74437110-26e7-419f-85d6-888be08ae729"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Autopsy-Performed-Indicator"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#85699-7 "Autopsy was performed"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = $v2-0136#Y "Yes"
* entry[=].resource.component.code = $loinc#69436-4 "Autopsy results available"
* entry[=].resource.component.valueCodeableConcept = $v2-0136#Y "Yes"
* entry[+].fullUrl = "urn:uuid:e1a364d3-ad31-4399-8910-ea4f746bd5dc"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "e1a364d3-ad31-4399-8910-ea4f746bd5dc"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Disposition-Method"
* entry[=].resource.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Observation-Location"
* entry[=].resource.extension.valueReference.reference = "urn:uuid:a1ec1cf8-1ab5-4a5a-991d-705809d5d285"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#80905-3 "Body disposition method"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.performer.reference = "urn:uuid:b7a0e476-e685-4513-88ec-1edca2c340b8"
* entry[=].resource.valueCodeableConcept = $sct#449961000124104 "Patient status determination, deceased and cremated"
* entry[+].fullUrl = "urn:uuid:be384af5-ab34-439d-92b8-5468f77d756a"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "be384af5-ab34-439d-92b8-5468f77d756a"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Decedent-Pregnancy"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69442-2 "Timing of recent pregnancy in relation to death"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#PHC1261 "Pregnant at the time of death"
* entry[+].fullUrl = "urn:uuid:647b7945-6f23-460a-929a-e86c4fc15c54"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "647b7945-6f23-460a-929a-e86c4fc15c54"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Tobacco-Use-Contributed-To-Death"
* entry[=].resource.status = #final
* entry[=].resource.code = $loinc#69443-0 "Did tobacco use contribute to death"
* entry[=].resource.subject.reference = "urn:uuid:1ebcc1ca-3e80-4b24-851f-8c384ac00fc9"
* entry[=].resource.valueCodeableConcept = $sct#373066001 "Yes"