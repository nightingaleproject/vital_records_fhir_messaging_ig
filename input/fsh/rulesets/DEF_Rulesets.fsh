RuleSet: CommonBundleStuff
* ^status = #draft
* type  = #message   // first entry in bundle must be MessageHeader
* id 1..1
* timestamp 1..1
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the type (relatively easy) and then profile of the sliced element"
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"

RuleSet: CommonHeaderStuff
* eventUri 1..1
* destination 1..*
* source 1..1
* focus 1..2
* id 1..1

RuleSet: HeaderResponseID
* response.identifier 1..1
* response.code 1..1
* response.code = #ok (exactly)

RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

RuleSet: ParameterName(name,short,def)
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"
* parameter[{name}].extension 0..0

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0
* parameter[{name}].extension 0..0


RuleSet: ParameterSlicing
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: BaseMessageParameters
* insert ParameterSlicing
* parameter contains
    jurisdiction_id 0..1 and
    cert_no 1..1 and   // cert_no / FILENO
    death_year 0..1 and   // death_year / DOD_YR -- for compabilitility with v1.0.1
    event_year 0..1 and   // DOD_YR, DOB_YR, FDOD_YR -- preferred
    state_auxiliary_id  0..1  and  // state_auxiliary_id / AUXNO
    payload_version_id  0..1    // payload_version_id
* insert ParameterNameType(payload_version_id, string, Payload version identifier, payload version identifier) // * parameter[payload_version_id].name = "payload_version_id"
* parameter[payload_version_id].value[x] from PayloadVersionVS (extensible)
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from ValueSetJurisdictionVitalRecords (required)
* insert ParameterNameType(cert_no, unsignedInt,FILENO death certificate number , death certificate number ) 
* insert ParameterNameType(death_year, unsignedInt, DOD_YR death year, four digit death year)  
* insert ParameterNameType(event_year, unsignedInt, DOD_YR or DOB_YR or FDOD_YR event year, four digit event year) 
* insert ParameterNameType(state_auxiliary_id, string, AUXNO state auxiliary identifier, state auxiliary identifier) 

RuleSet: addentry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

RuleSet: addReference (field, type, id)
* {field}.reference = "http://www.example.org/fhir/{type}/{id}"

RuleSet: addReferenceComposition (field, type, id)
* {field}.reference = "{type}/{id}"

RuleSet: addCompositionEntry (field, type, id)
* entry[{field}][+].reference = "{type}/{id}"

RuleSet: addentryComposition(type, id)
* entry[+].reference = "{type}/{id}"

RuleSet: addNamedEntryComposition(name, type, id)
* entry[{name}][+].reference = "{type}/{id}"

RuleSet: boilerplate
* ^publisher = "Health Level Seven International"



RuleSet: Extension(name, min, max, short, def, class)
* extension contains {name} {min}..{max} MS
* extension[{name}] ^short = "{short}"
* extension[{name}] ^definition = "{def}"
* extension[{name}].value[x] only {class}

RuleSet: CodingExtension(name, min, max, short, def, valueset)
* insert Extension({name},{min},{max},{short},{def}, Coding)
* extension[{name}].value[x] from {valueset} (required)

RuleSet: BundleSlice(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}


RuleSet: SNOMEDCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"


RuleSet: RecordIdentifierObservation (type, code, jurisdiction, jurisdictionCode, year )
* value[x] 0..1
* value[x] only string   // we considered shifting to integer and kept it as string.
* valueString ^short = "{type} Record number.  Six digit number.  Leading zeroes are optional."
* valueString ^maxLength = 6
// * dataAbsentReason 0..1
// * dataAbsentReason from DataAbsentReason (extensible)
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    {jurisdiction} 0..1 and
    {year} 0..1 and 
    index 0..1 and
    cert_available 0..1 
* component[{jurisdiction}] ^short = "Record Jurisdiction"
* component[{jurisdiction}].code 1..1
* component[{jurisdiction}].code = {jurisdictionCode}  // "Jurisdiction Code"
* component[{jurisdiction}].value[x] 1..1
* component[{jurisdiction}].value[x] only string
* component[{jurisdiction}].valueString from ValueSetJurisdictionVitalRecords (required)
* component[{year}] ^short = "Year of {type}"
* component[{year}].code = {code} // "Date of Death/Birth"
* component[{year}].value[x] 1..1
* component[{year}].value[x] only dateTime
* component[{year}].value[x] ^comment = "The record year is expressed using the YYYY portion of date."
* component[index].value[x] 1..1
* component[index].value[x] only integer
* component[index].value[x] ^comment = "The index of this record among birth or fetal death certificates of the same type."
* component[index].code = #index 
* component[cert_available].value[x] 1..1
* component[cert_available].value[x] only CodeableConcept 
* component[cert_available].value[x] from CertAvailableVS (required)
* component[cert_available].value[x] ^comment = "Code for Availability of this certificate."
* component[cert_available].code = #availability 

RuleSet: BundleIdentifiers
* identifier.value ^short = "Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a  record. The NCHS uniquely identifies  records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the  certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier 1..1
* identifier.system = $IJE 
* identifier.extension contains
    CertificateNumber named certificateNumber 0..1 and
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* identifier.extension[auxiliaryStateIdentifier1] ^short = "Auxiliary State Identifier 1.  12 characters."
* identifier.extension[auxiliaryStateIdentifier2] ^short = "Auxiliary State Identifier 2.  12 characters."
* identifier.extension[certificateNumber] ^short = "Certificate Number.  Six digit number.  Leading zeroes are optional."

RuleSet: BundleIdentifiersParam(certname, certdesc, local1name, local1desc, local2name, local2desc)
* identifier.value ^short = "Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a  record. The NCHS uniquely identifies  records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the  certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier.system = Canonical(CodeSystemIJEVitalRecords) (exactly)
* identifier.system ^short = "FHIR requires a codesystem"
* identifier.value 1..1
* identifier.system 1..1
* identifier 1..1
* identifier.extension contains
    CertificateNumber named {certname} 0..1 and
    AuxiliaryStateIdentifier1 named {local1name} 0..1 and
    AuxiliaryStateIdentifier2 named {local2name} 0..1
* identifier.extension[{local1name}] ^short =  "{local1desc}"
* identifier.extension[{local2name}] ^short = "{local2desc}"
* identifier.extension[{certname}] ^short = "{certdesc}"