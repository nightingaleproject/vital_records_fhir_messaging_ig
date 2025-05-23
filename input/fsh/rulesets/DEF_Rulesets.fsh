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
    cert_no 0..1 and   // cert_no / FILENO
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
