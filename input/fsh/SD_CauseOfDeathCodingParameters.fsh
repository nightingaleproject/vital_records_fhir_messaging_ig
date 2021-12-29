Profile:  CauseOfDeathCodingMessageParameters
Parent: DeathMessageParameters
Id: VRM-CauseOfDeathCodingMessageParameters
Title:  "Cause of Death Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(CauseOfDeathCodingMessageParameters)
* insert BasicParameters
* parameter contains
    input_causes_of_death 0..1 and
    input_misc_fields 0..1 and
    manual_underlying_cause_of_death 0..1 and // icd10
    acme_underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..20 and // part contains list of codeable concepts
    entity_axis_code 0..20  // multiple parameters, each contains - part contains linenumber, codeable


* insert ParameterNameType(acme_underlying_cause_of_death, string, ACME_UC ACME Underlying Cause of Death, Underlying Cause of Death)
* insert ParameterNameType(manual_underlying_cause_of_death, string, MAN_UC Manual Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterNameType(record_cause_of_death, string, RAC Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, EAC entity axis code, entity axis code)
* insert ParameterName(input_causes_of_death, input causes of death: COD1A-D + INTERVAL1A-D + OTHERCONDITION, input causes of death)

* insert ParameterName(input_causes_of_death, input causes of death: COD1A-D + INTERVAL1A-D + OTHERCONDITION, input causes of death)
* insert ParameterPartSliceByName(input_causes_of_death)
* parameter[input_causes_of_death].part contains
      COD1A 1..1 and
      COD1B 1..1 and
      COD1C 1..1 and
      COD1D 1..1 and
      INTERVAL1A 1..1 and
      INTERVAL1B 1..1 and
      INTERVAL1C 1..1 and
      INTERVAL1D 1..1 and
      OTHERCONDITION 1..1
* insert ParameterPartSlice(input_causes_of_death, COD1A, string, COD1A, COD1A )
* insert ParameterPartSlice(input_causes_of_death, COD1B, string, COD1B, COD1B )
* insert ParameterPartSlice(input_causes_of_death, COD1C, string, COD1C, COD1C )
* insert ParameterPartSlice(input_causes_of_death, COD1D, string, COD1D, COD1D )
* insert ParameterPartSlice(input_causes_of_death, OTHERCONDITION, string, OTHERCONDITION, OTHERCONDITION )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1A, string, INTERVAL1A, INTERVAL1A )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1B, string, INTERVAL1B, INTERVAL1B )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1C, string, INTERVAL1C, INTERVAL1C )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1D, string, INTERVAL1D, INTERVAL1D )

* insert ParameterPartSliceByName(entity_axis_code)
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      position 1..1 and
      coding 1..1 and
      e_code_indicator 0..1       //
* insert ParameterPartSlice(entity_axis_code, lineNumber, unsignedInt, line number between 1 and 6, line number between 1 and 6 )
* insert ParameterPartSlice(entity_axis_code, position, unsignedInt, position of code in the line, position of code in the line )
* insert ParameterPartSlice(entity_axis_code, coding, string, Coding of the cause of death in TRANSAX dialect of ICD10, Coding of the cause of death in TRANSAX dialect of ICD10 )
* insert ParameterPartSliceLength(entity_axis_code, e_code_indicator, string, Holdover flag from ICD9 coding, Holdover flag from ICD9 coding, 1 )
* parameter[entity_axis_code].part[e_code_indicator].value[x] = "&"

* parameter[input_causes_of_death].value[x] 0..0
* parameter[input_causes_of_death].resource 0..0

* insert ParameterName(input_misc_fields, input misc fields, input misc fields)
* insert ParameterPartSliceByName(input_misc_fields)
* insert ParameterPartSliceLength(entity_axis_code, e_code_indicator, string, Holdover flag from ICD9 coding, Holdover flag from ICD9 coding, 1 )


* insert ParameterPartSliceByName(input_misc_fields)
* parameter[input_misc_fields].part contains
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
* insert ParameterPartSliceLength(input_misc_fields,manner, string, MANNER Manner of Death-1, Manner of Death,1)
* insert ParameterPartSliceLength(input_misc_fields,injpl, string, INJPL Injury Place-1, Injury Place,1)
* insert ParameterPartSliceLength(input_misc_fields,trx_flg, string, TRX_FLG Transax Conversion Flag-1, Transax Conversion Flag, 1)
* insert ParameterPartSliceLength(input_misc_fields,autop, string, AUTOP Was Autopsy performed?-1, Was Autopsy performed?,1)
* insert ParameterPartSliceLength(input_misc_fields,autopf, string, AUTOPF Were Autopsy Findings Available to Complete the Cause of Death?-1, Were Autopsy Findings Available to Complete the Cause of Death?,1)
* insert ParameterPartSliceLength(input_misc_fields,tobac, string, TOBAC Did Tobacco Use Contribute to Death?-1,Did Tobacco Use Contribute to Death? ,1)
* insert ParameterPartSliceLength(input_misc_fields,preg, string, PREG Pregnancy-1, Pregnancy,1)
* insert ParameterPartSliceLength(input_misc_fields,preg_bypass, string, PREG_BYPASS If Female--Edit Flag-1, If Female--Edit Flag, 1)
* insert ParameterPartSlice(input_misc_fields,doi_mo, unsignedInt, DOI_MO Date of Injury--month , Date of Injury--month)
* insert ParameterPartSlice(input_misc_fields,doi_dy, unsignedInt, DOI_DY Date of Injury--day , Date of Injury--day)
* insert ParameterPartSlice(input_misc_fields,doi_yr, unsignedInt, DOI_YR Date of Injury--year , Date of Injury--year)
* insert ParameterPartSlice(input_misc_fields,toi_hr, unsignedInt, TOI_HR Time of Injury-4, Time of Injury)
* insert ParameterPartSliceLength(input_misc_fields,workinj, string, WORKINJ Injury at Work-1, Injury at Work,1)
* insert ParameterPartSlice(input_misc_fields,certl, string, CERTL Title of Certifier, Title of Certifier)
* insert ParameterPartSlice(input_misc_fields,inact, unsignedInt, INACT Activity at time of death -computer generated, Activity at time of death - computer generated)
* insert ParameterPartSlice(input_misc_fields,auxno2, unsignedInt, AUXNO2 Auxiliary State file number, Auxiliary State file number)
* insert ParameterPartSlice(input_misc_fields,statesp, string, STATESP State Specific Data, State Specific Data)
* insert ParameterPartSlice(input_misc_fields,sur_mo, unsignedInt, SUR_MO Surgery Date --month, Surgery Date --month)
* insert ParameterPartSlice(input_misc_fields,sur_dy, unsignedInt, SUR_MO Surgery Date --day, Surgery Date --day)
* insert ParameterPartSlice(input_misc_fields,sur_yr, unsignedInt, SUR_MO Surgery Date --year, Surgery Date --year)
* insert ParameterPartSlice(input_misc_fields,toi_unit, string, TOI_UNIT Time of Injury Unit-1, Time of Injury Unit)
