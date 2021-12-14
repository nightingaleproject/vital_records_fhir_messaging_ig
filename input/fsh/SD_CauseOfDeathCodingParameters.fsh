Profile:  CauseOfDeathCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CauseOfDeathCodingMessageParameters
Title:  "Cause of Death Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(CauseOfDeathCodingMessageParameters)
* insert BasicParameters
* parameter contains
    underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..20 and // part contains list of codeable concepts
    entity_axis_code 0..20 and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    other_specified_place 0..1 // string -- WHAT IS THIS?   What field is this???
* insert ParameterNameType(underlying_cause_of_death, string, ACME_UC Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterName(record_cause_of_death, RAC Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, EAC entity axis code, entity axis code)
* insert ParameterNameType(manner, string, MANNER Manner of Death, Manner of Death)
* insert ParameterNameType(injpl, string, INJPL Injury Place, Injury Place)
* insert ParameterNameType(other_specified_place, string, ???? Other specified place, Other specified place)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[record_cause_of_death].part ^slicing.discriminator.type = #value
* parameter[record_cause_of_death].part ^slicing.discriminator.path = "name"
* parameter[record_cause_of_death].part ^slicing.rules = #closed
* parameter[record_cause_of_death].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[record_cause_of_death].part contains
      coding 1..20
// * parameter[record_cause_of_death].part[coding].value[x] only CodeableConcept // bind to value set
// * parameter[record_cause_of_death].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].part[coding].name = "coding"
* parameter[record_cause_of_death].part[coding].value[x] only string
* parameter[record_cause_of_death] ^short = "Coding of the record axis cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part ^slicing.discriminator.type = #value
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #closed
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      position 1..1 and
      coding 1..1 and
      e-code-indicator 1..1       //
* parameter[entity_axis_code].part[lineNumber] ^definition = "containing a value between 1 and 6 that codes the line number of the death certificate that corresponds to the axis entry"
* parameter[entity_axis_code].part[lineNumber] ^short = "line number"
* parameter[entity_axis_code].part[coding] ^definition = "Coding of the cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part[coding] ^short = "Coding of the cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part[position] ^definition = "position of code in the line"
* parameter[entity_axis_code].part[position] ^short = "position of code in the line"
* parameter[entity_axis_code].part[e-code-indicator] ^definition = "Holdover flag from ICD9 coding"
* parameter[entity_axis_code].part[e-code-indicator] ^short = "Holdover flag from ICD9 coding"
* parameter[entity_axis_code].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code].part[lineNumber].value[x] only unsignedInt
* parameter[entity_axis_code].part[coding].name = "coding"
* parameter[entity_axis_code].part[coding].value[x] only string
* parameter[entity_axis_code].part[position].name = "position"
* parameter[entity_axis_code].part[position].value[x] only unsignedInt
* parameter[entity_axis_code].part[e-code-indicator].name = "e-code-indicator"
* parameter[entity_axis_code].part[e-code-indicator].value[x] only boolean
// * parameter[entity_axis_code].part[coding].value[x] only CodeableConcept
// * parameter[entity_axis_code].part[coding].valueCodeableConcept.text 0..0
// * parameter[entity_axis_code].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].value[x] 0..0
* parameter[record_cause_of_death].resource 0..0
* parameter[entity_axis_code].value[x] 0..0
* parameter[entity_axis_code].resource 0..0
