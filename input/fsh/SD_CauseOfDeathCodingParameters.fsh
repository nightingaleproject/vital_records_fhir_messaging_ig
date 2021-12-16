Profile:  CauseOfDeathCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CauseOfDeathCodingMessageParameters
Title:  "Cause of Death Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(CauseOfDeathCodingMessageParameters)
* insert BasicParameters
* parameter contains
    manual_underlying_cause_of_death 0..1 and // icd10
    acme_underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..20 and // part contains list of codeable concepts
    entity_axis_code 0..20 and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string -- one character.   Value Set? Should it be an integer 0-9?
    trx_flg 0..1 and   // string -- one character.   Value Set? Should it be an integer 0-9?
    autop 0..1 and // string -- one character. Was Autopsy performed?
    autopf 0..1 and // string -- one character. Were Autopsy Findings Available to Complete the Cause of Death?
    tobac 0..1 and // string -- Did Tobacco Use Contribute to Death?
    preg 0..1 and  // string -- Pregnancy
    preg_bypass 0..1 and  // string -- If Female--Edit Flag
    doi_mo 0..1 and // string -- Date of Injury--month
    doi_dy 0..1 and // string -- Date of Injury--day
    doi_yr 0..1 and // string -- Date of Injury--year
    toi_hr 0..1 and // string -- Time of injury
    workinj 0..1 and // string -- Injury at work
    certl 0..1 and // string -- Title of Certifier
    inact 0..1 and // string -- Activity at time of death (computer generated)
    auxno2 0..1 and // string -- Auxiliary State file number
    statesp 0..1 and // string -- State Specific Data
    sur_mo 0..1 and // string -- Surgery Date --month
    sur_dy 0..1 and // string -- Surgery Date --day
    sur_yr 0..1 and // string -- Surgery Date --year
    toi_unit 0..1 // string -- Time of Injury Unit
    // other_specified_place 0..1 // string -- WHAT IS THIS?   What field is this???

* insert ParameterNameType(acme_underlying_cause_of_death, string, ACME_UC ACME Underlying Cause of Death, Underlying Cause of Death)
* insert ParameterNameType(manual_underlying_cause_of_death, string, MAN_UC Manual Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterNameType(record_cause_of_death, string, RAC Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, EAC entity axis code, entity axis code)
* insert ParameterNameType(manner, string, MANNER Manner of Death-1, Manner of Death)
* insert ParameterNameType(injpl, string, INJPL Injury Place-1, Injury Place)
* insert ParameterNameType(trx_flg, string, TRX_FLG Transax Conversion Flag-1, Transax Conversion Flag)
* insert ParameterNameType(autop, string, AUTOP Was Autopsy performed?-1, Was Autopsy performed?)
* insert ParameterNameType(autopf, string, AUTOPF Were Autopsy Findings Available to Complete the Cause of Death?-1, Were Autopsy Findings Available to Complete the Cause of Death?)
* insert ParameterNameType(tobac, string, TOBAC Did Tobacco Use Contribute to Death?-1,Did Tobacco Use Contribute to Death? )
* insert ParameterNameType(preg, string, PREG Pregnancy-1, Pregnancy)
* insert ParameterNameType(preg_bypass, string, PREG_BYPASS If Female--Edit Flag-1, If Female--Edit Flag)
* insert ParameterNameType(doi_mo, unsignedInt, DOI_MO Date of Injury--month , Date of Injury--month)
* insert ParameterNameType(doi_dy, unsignedInt, DOI_DY Date of Injury--day , Date of Injury--day)
* insert ParameterNameType(doi_yr, unsignedInt, DOI_YR Date of Injury--year , Date of Injury--year)
* insert ParameterNameType(toi_hr, unsignedInt, TOI_HR Time of Injury-4, Time of Injury)
* insert ParameterNameType(workinj, string, WORKINJ Injury at Work-1, Injury at Work)
* insert ParameterNameType(certl, string, CERTL Title of Certifier, Title of Certifier)
* insert ParameterNameType(inact, unsignedInt, INACT Activity at time of death -computer generated, Activity at time of death - computer generated)
* insert ParameterNameType(auxno2, unsignedInt, AUXNO2 Auxiliary State file number, Auxiliary State file number)
* insert ParameterNameType(statesp, string, STATESP State Specific Data, State Specific Data)
* insert ParameterNameType(sur_mo, unsignedInt, SUR_MO Surgery Date --month, Surgery Date --month)
* insert ParameterNameType(sur_dy, unsignedInt, SUR_MO Surgery Date --day, Surgery Date --day)
* insert ParameterNameType(sur_yr, unsignedInt, SUR_MO Surgery Date --year, Surgery Date --year)
* insert ParameterNameType(toi_unit, string, TOI_UNIT Time of Injury Unit-1, Time of Injury Unit)
* parameter[manner].valueString ^maxLength = 1
* parameter[injpl].valueString ^maxLength = 1
* parameter[workinj].valueString ^maxLength = 1
* parameter[toi_unit].valueString ^maxLength = 1
* parameter[preg_bypass].valueString ^maxLength = 1
* parameter[autop].valueString ^maxLength = 1
* parameter[autopf].valueString ^maxLength = 1
* parameter[trx_flg].valueString ^maxLength = 1
* parameter[entity_axis_code].part ^slicing.discriminator.type = #value
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #closed
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      position 1..1 and
      coding 1..1 and
      e-code-indicator 0..1       //
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
* parameter[entity_axis_code].part[e-code-indicator].value[x] only string
* parameter[entity_axis_code].part[e-code-indicator].valueString = "&"

* parameter[entity_axis_code].value[x] 0..0
* parameter[entity_axis_code].resource 0..0
