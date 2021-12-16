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

RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

RuleSet: ParameterName(name,short,def)
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0

RuleSet: BaseMessageParameterSlices
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
* insert ParameterNameType(cert_no, unsignedInt,death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"
* insert ParameterNameType(ssn, string, SSN Social Security Number, Social Security Number) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"
* insert ParameterNameType(block_count, unsignedInt, number of records voided, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of 1 is assumed meaning only a single record will be voided. )
