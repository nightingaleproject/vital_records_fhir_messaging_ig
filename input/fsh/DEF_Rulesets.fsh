RuleSet: CommonBundleStuff
* ^status = #draft
* type  = #message
* id 1..1
* timestamp 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: CommonHeaderStuff
* eventUri 1..1
* destination 1..1
* source 1..1
* focus 1..1
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

RuleSet: ParameterNameTypeLength(name, type, short, def, length)
* insert ParameterNameType({name}, {type}, {short}, {def})
* parameter[{name}].value[x] ^maxLength = {length}

RuleSet: BaseMessageParameterSlices
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
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
    state_auxiliary_id  0..1    // state_auxiliary_id / AUXNO
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from $VRDRJurisdictionVS (required)
* insert ParameterNameType(cert_no, unsignedInt,FILENO death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, DOD_YR death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, AUXNO state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"