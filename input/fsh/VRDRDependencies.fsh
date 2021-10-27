Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10-cm
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0136 = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $list-order = http://terminology.hl7.org/CodeSystem/list-order
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $v3-NullFlavor = http://terminology.hl7.org/CodeSystem/v3-NullFlavor
Alias: $ViewValueSet.action = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7385
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $ViewCodeSystem.action = http://phinvads.cdc.gov/vads/ViewCodeSystem.action?id=2.16.840.1.114222.4.5.314
Alias: $ViewCodeSystem.action_1 = http://phinvads.cdc.gov/vads/ViewCodeSystem.action?id=2.16.840.1.113883.12.136
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $security = https://trifolia-fhir.lantanagroup.com/security
Alias: $v3-ObservationValue = http://terminology.hl7.org/CodeSystem/v3-ObservationValue
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $VRDR_Mortician = http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR_Mortician
Alias: $VRDR_FuneralHome = http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR_FuneralHome
Alias: $ViewValueSet.action_1 = http://phinvads.cdc.gov/vads/ViewValueSet.action?id=282D4DD8-39EA-4C5B-B8A9-B2C3E5878A15#
Alias: $PHVS_DecedentEducationLevel_NCHS = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7385
Alias: $PH_PHINVS_CDC = urn:oid:2.16.840.1.114222.4.5.274
Alias: $HL7_EducationLevelCS = 	http://terminology.hl7.org/CodeSystem/v3-EducationLevel
Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender
Alias: $statesVS = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $statesCS = https://www.usps.com/
Alias: $provinces = http://canadapost.ca/CodeSystem/ProvinceCodes
Alias: $maritalStatus = http://hl7.org/fhir/ValueSet/marital-status
Alias: $roleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


ValueSet: USStatesAndTerritoriesVS
Id: USStates-Territories-VS
Title: "US States, Territories Value Set"
Description: "2 Letter States and Territories Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset $statesVS
* exclude $statesCS#FM
* exclude $statesCS#MH
* exclude $statesCS#PW
* exclude $statesCS#AP
* exclude $statesCS#AE
* exclude $statesCS#AA

ValueSet: StatesTerritoriesAndProvincesVS
Id: States-TerritoriesProvinces-VS
Title: "States, Territories and Provinces Value Set"
Description: "2 Letter States and Provinces Value Set"
* ^status = #active
* ^version = "1.0.0"
* include codes from valueset USStatesAndTerritoriesVS
* include codes from valueset CanadaProvincesVS
* $v3-NullFlavor#UNK

ValueSet: CanadaProvincesVS
Id: Canada-Provinces-VS
Title: "Canadian Provinces Value Set"
Description: "2 Letter Candadian Provinces Value Set"
* $provinces#AB	"Alberta"
* $provinces#BC	"British Columbia"
* $provinces#MB	"Manitoba"
* $provinces#NB	"New Brunswick"
* $provinces#NL	"Newfoundland and Labrador"
* $provinces#NS	"Nova Scotia"
* $provinces#NT	"Northwest Territories"
* $provinces#NU	"Nunavut"
* $provinces#ON	"Ontario"
* $provinces#PE	"Prince Edward Island"
* $provinces#QC	"Quebec"
* $provinces#SK	"Saskatchewan"
* $provinces#YT	"Yukon"


CodeSystem: VRDRJurisdictionsCS
Id: VRDR-Jurisdictions
Title: "VRDR Jurisdictions"
Description: "VRDR Jurisdictions that are not US States or Territories"
* #YC "New York City" "New York City"

ValueSet: VRDRJurisdictionVS
Id: Jurisdictions-VS
Title: "VRDR Jurisdictions Value Set"
Description: "2 Letter States and Provinces Value Set"
* include codes from valueset USStatesAndTerritoriesVS
* VRDRJurisdictionsCS#YC "New York City"

Alias: $v2-0532 = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $admingender = http://hl7.org/fhir/administrative-gender

ValueSet: YesNoUnknownVS
Id: vrdr-YesNoUnknown
Title: "Yes No Unknown  Value Set"
Description: "Yes No Unknown Valueset built HL7 Expanded Yes/No Codesystem"
* ^status = #active
* ^version = "1.0.0"
* $v2-0532#Y "Yes"
* $v2-0532#N "No"
* $v2-0532#UNK "Unknown"

ValueSet: YesNoNotApplicableVS
Id: vrdr-YesNoNotApplicable
Title: "Yes No Not Applicable  Value Set"
Description: "Yes No Not Applicable Valueset built HL7 Expanded Yes/No Codesystem"
* ^status = #active
* ^version = "1.0.0"
* $v2-0532#Y "Yes"
* $v2-0532#N "No"
* $v2-0532#NA "Not Applicable"

ValueSet: AdministrativeGenderVS
Id: vrdr-administrative-gender
Title: "Administrative Gender"
Description: "Gender Valueset built HL7 Administrative Gender Codesystem.  If the 'other' value were included, this could use the standard valuesystem used by USCore http://hl7.org/fhir/R4/valueset-administrative-gender.html#4.4.1.369"
* ^status = #active
* ^version = "1.0.0"
* $admingender#male "male"
* $admingender#female "female"
* $admingender#unknown "unknown"


ValueSet: PlaceOfDeathVS
Id: vrdr-PlaceOfDeath
Title: "Place of Death VS -- PHVS_PlaceOfDeath_NCHS"
Description: "PHVS_PlaceOfDeath_NCHS"
* $sct#63238001 "Hospital Dead on Arrival"
* $sct#440081000124100 "Decedent's Home"
* $sct#440071000124103 "Hospice"
* $sct#16983000 "Hospital Inpatient"
* $sct#450391000124102  "Death in emergency Room/Outpatient"
* $sct#450381000124100 "Death in nursing home/Long term care facility"
* $v3-NullFlavor#OTH "other"
* $v3-NullFlavor#UNK "unknown"

ValueSet: MaritalStatusVS
Id: vrdr-MaritalStatus
Title: "Marital Status VS -- PHVS_MaritalStatus_NCHS"
Description: "PHVS_MaritalStatus_NCHS"
* include codes from system $v3-MaritalStatus
* exclude $v3-MaritalStatus#I
* exclude $v3-MaritalStatus#L
* exclude $v3-MaritalStatus#P
* exclude $v3-MaritalStatus#T
* exclude $v3-NullFlavor#UNK

ValueSet: RelatedPersonRelationshipTypeVS
Id: vrdr-RelatedPersonRelationshipType
Title: "RelatedPerson Relationship type VS -- RelatedPersonRelationshipType"
Description: "RelatedPersonRelationshipType"
* $roleCode#CHLDADOPT	"adopted child"
* $roleCode#DAUADOPT	"adopted daughter"
* $roleCode#SONADOPT "adopted son"
* $roleCode#ADOPTF "adoptive father"
* $roleCode#ADOPTM "adoptive mother"
* $roleCode#ADOPTP "adoptive parent"
* $roleCode#AUNT "aunt"
* $roleCode#BRO "brother"
* $roleCode#BROINLAW "brother-in-law"
* $roleCode#CHILD "child"
* $roleCode#CHLDINLAW "child-in-law"
* $roleCode#COUSN "cousin"
* $roleCode#DAUC "daughter"
* $roleCode#DAUINLAW "daughter in-law"
* $roleCode#DOMPART "domestic partner"

ValueSet: DecedentEducationLevelVS
Id: vrdr-EducationLevel
Title: "Education Level VS "
Description: "EducationLevel"
* include codes from system $HL7_EducationLevelCS
* exclude $HL7_EducationLevelCS#PB
* $v3-NullFlavor#UNK "unknown"


Profile: DeathCertificateDocument
Parent: Bundle
Id: VRDR-Death-Certificate-Document
Title: "VRDR Death Certificate Document"
Description: "The Death Certificate Document profile is a bundle of resources comprising the death certificate composition. The Death Certificate Document builds upon the FHIR Document resource."
* ^meta.versionId = "14"
* ^meta.lastUpdated = "2020-08-18T06:29:51.027+00:00"
* ^meta.source = "#TRof2eLh1VCPPrNl"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-05-09"
* ^publisher = "Health Level Seven"
* ^contact.name = "AbdulMalik Shakir"
* ^contact.telecom[0].system = #phone
* ^contact.telecom[=].value = "6266444491"
* ^contact.telecom[=].use = #work
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "abdulmalik.shakir@hi3solutions.com"
* ^contact.telecom[=].use = #work
* identifier 1..1
* identifier ^short = "identifier"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier ^comment = "NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). These concepts can be pulled directly from existing elements of the VRDR IG: the year of death comes from the observation value in the DeathDate resource, the jurisdiction of death come from the location alias in the NationalReportingJurisdiction resource, and the death certificate number assigned by the jurisdiction comes from the identifier specified in the DeathCertification resource."
* type 1..1
* type only code
* type = #document (exactly)
* type ^short = "type"
* entry 0..*
* entry only BackboneElement
* entry ^short = "entry"
* entry.resource 1..1
* entry.resource ^short = "resource"
* entry.resource ^definition = "This entry SHALL contain exactly one [1..1] resource=\"VRDR Death Certificate\" (CONF:4393-360)."

Instance: DeathCertificateDocument1
InstanceOf: DeathCertificateDocument
Title: "Death Certificate Document Example - Empty"
Description: "An instance example of the VRDR-Death-Certificate-Document resource profile. Empty"
Usage: #example
* meta.versionId = "39"
* type = #document
* timestamp = "2017-12-11T14:30:00+01:00"
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "7a4613cc-b306-49b2-a428-9f8e67e67a85"
