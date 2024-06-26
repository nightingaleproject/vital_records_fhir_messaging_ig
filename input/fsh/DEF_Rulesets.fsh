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
// * focus ^slicing.discriminator.type = #type
// * focus ^slicing.discriminator.path = reference 
// * focus ^slicing.rules = #open
// * focus ^slicing.description = "Slicing based on the profile"

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

RuleSet: ParameterNameTypeLength(name, type, short, def, length)
* insert ParameterNameType({name}, {type}, {short}, {def})
* parameter[{name}].value[x] ^maxLength = {length}

RuleSet: BaseMessageParameterSlices
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from ValueSetJurisdictionVitalRecords (required)
* insert ParameterNameType(FILENO, unsignedInt,FILENO death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(DOD_YR, unsignedInt, DOD_YR death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(AUXNO, string, AUXNO state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"
* insert ParameterNameType(SSN, string, SSN Social Security Number, Social Security Number) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"
//* insert ParameterNameType(block_count, unsignedInt, number of records voided, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of 1 is assumed meaning only a single record will be voided. )

RuleSet: ParameterPartSliceByName(slice)
* parameter[{slice}].part ^slicing.discriminator.type = #value
* parameter[{slice}].part ^slicing.discriminator.path = "name"
* parameter[{slice}].part ^slicing.rules = #closed
* parameter[{slice}].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: ParameterPartPartSliceByName(slice,partslice)
* parameter[{slice}].part[{partslice}].part ^slicing.discriminator.type = #value
* parameter[{slice}].part[{partslice}].part ^slicing.discriminator.path = "name"
* parameter[{slice}].part[{partslice}].part ^slicing.rules = #closed
* parameter[{slice}].part[{partslice}].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: ParameterPartSlice(slice, partslice, type, short, def )
* parameter[{slice}].part[{partslice}].name = "{partslice}"
* parameter[{slice}].part[{partslice}].value[x] only {type}
* parameter[{slice}].part[{partslice}] ^short = "{short}"
* parameter[{slice}].part[{partslice}] ^definition = "{def}"
* parameter[{slice}].part[{partslice}].extension 0..0

RuleSet: ParameterPartPartSlice(slice, partslice, partpartslice, type, short, def )
* parameter[{slice}].part[{partslice}].part[{partpartslice}].name = "{partpartslice}"
* parameter[{slice}].part[{partslice}].part[{partpartslice}].value[x] only {type}
* parameter[{slice}].part[{partslice}].part[{partpartslice}] ^short = "{short}"
* parameter[{slice}].part[{partslice}].part[{partpartslice}] ^definition = "{def}"
* parameter[{slice}].part[{partslice}].part[{partpartslice}].extension 0..0

RuleSet: ParameterPartSliceLength(slice, partslice, type, short, def, length)
* insert ParameterPartSlice({slice}, {partslice}, {type}, {short}, {def})
* parameter[{slice}].part[{partslice}].value[x] ^maxLength = {length}

RuleSet: ParameterPartPartSliceLength(slice, partslice, partpartslice,type, short, def, length)
* insert ParameterPartPartSlice({slice}, {partslice}, {partpartslice}, {type}, {short}, {def})
* parameter[{slice}].part[{partslice}].part[{partpartslice}].value[x] ^maxLength = {length}

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
    death_year 0..1 and   // death_year / DOD_YR
    state_auxiliary_id  0..1  and  // state_auxiliary_id / AUXNO
    payload_version_id  0..1    // payload_version_id
* insert ParameterNameType(payload_version_id, string, Payload version identifier, payload version identifier) // * parameter[payload_version_id].name = "payload_version_id"
* parameter[payload_version_id].value[x] from PayloadVersionVS (extensible)
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from ValueSetJurisdictionVitalRecords (required)
* insert ParameterNameType(cert_no, unsignedInt,FILENO death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, DOD_YR death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, AUXNO state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"


RuleSet: BaseMessageParametersFetalDeath
* insert ParameterSlicing
* parameter contains
    jurisdiction_id 0..1 and
    cert_no 0..1 and   // cert_no / FILENO
    death_year 0..1 and   // death_year / DOD_YR
    state_auxiliary_id  0..1 and   // state_auxiliary_id / AUXNO
    payload_version_id  0..1    // payload_version_id
* insert ParameterNameType(payload_version_id, string, Payload version identifier, payload version identifier) // * parameter[payload_version_id].name = "payload_version_id"
* parameter[payload_version_id].value[x] from PayloadVersionVS (extensible)
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from ValueSetJurisdictionVitalRecords (required)
* insert ParameterNameType(cert_no, unsignedInt,FILENO death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, FDOD_YR death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, AUXNO state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"

RuleSet: BaseMessageParametersBirth
* insert ParameterSlicing
* parameter contains
    jurisdiction_id 0..1 and
    cert_no 0..1 and  
    birth_year 0..1 and 
    state_auxiliary_id  0..1  and
    payload_version_id  0..1    // payload_version_id
* insert ParameterNameType(payload_version_id, string, Payload version identifier, payload version identifier) // * parameter[payload_version_id].name = "payload_version_id"
* parameter[payload_version_id].value[x] from PayloadVersionVS (extensible)
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from ValueSetJurisdictionVitalRecords (required)
* insert ParameterNameType(cert_no, unsignedInt, FILENO birth certificate number , birth certificate number ) 
* insert ParameterNameType(birth_year, unsignedInt, IDOB_YR birth year, four digit birth year) 
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
// * ^status = #draft
// * ^experimental = false
// * ^date = "2022-02-08"
* ^publisher = "Health Level Seven International"
// * ^contact[0].name = "HL7 International - Public Health"
// * ^contact[=].telecom.system = #url
// * ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/pher"
// * ^contact[+].name = "Cynthia Bush, Health Scientist (Informatics), CDC/National Center for Health Statistics"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "pdz1@cdc.gov"
// * ^contact[+].name = "AbdulMalik Shakir, FHL7, President and Chief Informatics Scientist Hi3 Solutions"
// * ^contact[=].telecom.system = #email
// * ^contact[=].telecom.value = "abdulmalik.shakir@hi3solutions.com"
// * ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
// * ^jurisdiction.text = "US Realm"


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
//* entry[{name}].resource.meta.profile = Canonical({class})

RuleSet: RequireMetaProfile(profile)
// * meta 1..1
// * meta.profile 1..*
// * meta.profile ^slicing.discriminator.type = #pattern
// * meta.profile ^slicing.discriminator.path = "$this"
// * meta.profile ^slicing.rules = #open
// * meta.profile ^slicing.ordered = false
// * meta.profile ^slicing.description = "Slice based on value"
// * meta.profile contains supportedProfile 1..1
// * meta.profile[supportedProfile] = Canonical({profile})
// this now does nothing
* hello

RuleSet: AddMetaProfile(profile)
//* meta.profile = Canonical({profile})
// this does nothing
* hello

RuleSet: SNOMEDCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"
