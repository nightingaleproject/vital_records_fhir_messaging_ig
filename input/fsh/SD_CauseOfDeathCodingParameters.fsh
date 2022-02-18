Profile:  CauseOfDeathCodingParameters
Parent: Parameters
Id: VRM-CauseOfDeathCodingParameters
Title:  "Cause of Death Coding Message Parameters"
Description:   "Parameters for a Cause of Death Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(CauseOfDeathCodingParameters)
* insert ParameterSlicing
* insert BasicParameters
* parameter contains
    input_causes_of_death 0..1 and
    input_misc_fields 0..1 and
     MAN_UC 0..1 and // manual_underlying_cause_of_death icd10
     ACME_UC 0..1 and // acme_underlying_cause_of_death icd10
     RAC 0..20 and // record_cause_of_death, part contains list of codeable concepts
     EAC 0..20  // entity_axis_code multiple parameters, each contains - part contains linenumber, codeable


* insert ParameterNameType(ACME_UC, string, ACME_UC ACME Underlying Cause of Death, Underlying Cause of Death)
* insert ParameterNameType(MAN_UC, string, MAN_UC Manual Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterNameType(RAC, string, RAC Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(EAC, EAC entity axis code, entity axis code)
* insert ParameterName(input_causes_of_death, input causes of death: COD1A-D + INTERVAL1A-D + OTHERCONDITION, input causes of death)
* insert ParameterPartSliceByName(input_causes_of_death)
* parameter[input_causes_of_death].part contains
      COD1A 0..1 and
      COD1B 0..1 and
      COD1C 0..1 and
      COD1D 0..1 and
      INTERVAL1A 0..1 and
      INTERVAL1B 0..1 and
      INTERVAL1C 0..1 and
      INTERVAL1D 0..1 and
      OTHERCONDITION 0..1
* insert ParameterPartSlice(input_causes_of_death, COD1A, string, COD1A, COD1A )
* insert ParameterPartSlice(input_causes_of_death, COD1B, string, COD1B, COD1B )
* insert ParameterPartSlice(input_causes_of_death, COD1C, string, COD1C, COD1C )
* insert ParameterPartSlice(input_causes_of_death, COD1D, string, COD1D, COD1D )
* insert ParameterPartSlice(input_causes_of_death, OTHERCONDITION, string, OTHERCONDITION, OTHERCONDITION )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1A, string, INTERVAL1A, INTERVAL1A )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1B, string, INTERVAL1B, INTERVAL1B )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1C, string, INTERVAL1C, INTERVAL1C )
* insert ParameterPartSlice(input_causes_of_death, INTERVAL1D, string, INTERVAL1D, INTERVAL1D )

* insert ParameterPartSliceByName(EAC)
* parameter[EAC].part contains
      lineNumber 1..1 and
      position 1..1 and
      coding 1..1 and
      e_code_indicator 0..1       //
* insert ParameterPartSlice(EAC, lineNumber, unsignedInt, line number between 1 and 6, line number between 1 and 6 )
* insert ParameterPartSlice(EAC, position, unsignedInt, position of code in the line, position of code in the line )
* insert ParameterPartSlice(EAC, coding, string, Coding of the cause of death in TRANSAX dialect of ICD10, Coding of the cause of death in TRANSAX dialect of ICD10 )
* insert ParameterPartSliceLength(EAC, e_code_indicator, string, Holdover flag from ICD9 coding, Holdover flag from ICD9 coding, 1 )
* parameter[EAC].part[e_code_indicator].value[x] = "&"

* parameter[input_causes_of_death].value[x] 0..0
* parameter[input_causes_of_death].resource 0..0

* insert ParameterName(input_misc_fields, input misc fields, input misc fields)
* insert ParameterPartSliceByName(input_misc_fields)
* insert ParameterPartSliceByName(input_misc_fields)
* parameter[input_misc_fields].part contains
    MANNER 0..1 and // string
    INJPL 0..1 and   // string -- one character.   Value Set? Should it be an integer 0-9?
    TRX_FLG 0..1 and   // string -- one character.   Value Set? Should it be an integer 0-9?
    AUTOP 0..1 and // string -- one character. Was Autopsy performed?
    AUTOPF 0..1 and // string -- one character. Were Autopsy Findings Available to Complete the Cause of Death?
    TOBAC 0..1 and // string -- Did Tobacco Use Contribute to Death?
    PREG 0..1 and  // string -- Pregnancy
    PREG_BYPASS 0..1 and  // string -- If Female--Edit Flag
    DOI_MO 0..1 and // string -- Date of Injury--month
    DOI_DY 0..1 and // string -- Date of Injury--day
    DOI_YR 0..1 and // string -- Date of Injury--year
    TOI_HR 0..1 and // string -- Time of injury
    WORKINJ 0..1 and // string -- Injury at work
    CERTL 0..1 and // string -- Title of Certifier
    INACT 0..1 and // string -- Activity at time of death (computer generated)
    AUXNO2 0..1 and // string -- Auxiliary State file number
    STATESP 0..1 and // string -- State Specific Data
    SUR_MO 0..1 and // string -- Surgery Date --month
    SUR_DY 0..1 and // string -- Surgery Date --day
    SUR_YR 0..1 and // string -- Surgery Date --year
    TOI_UNIT 0..1 // string -- Time of Injury Unit
* insert ParameterPartSliceLength(input_misc_fields,MANNER, string, MANNER Manner of Death-1, Manner of Death,1)
* insert ParameterPartSliceLength(input_misc_fields,INJPL, string, INJPL Injury Place-1, Injury Place,1)
* insert ParameterPartSliceLength(input_misc_fields,TRX_FLG, string, TRX_FLG Transax Conversion Flag-1, Transax Conversion Flag, 1)
* insert ParameterPartSliceLength(input_misc_fields,AUTOP, string, AUTOP Was Autopsy performed?-1, Was Autopsy performed?,1)
* insert ParameterPartSliceLength(input_misc_fields,AUTOPF, string, AUTOPF Were Autopsy Findings Available to Complete the Cause of Death?-1, Were Autopsy Findings Available to Complete the Cause of Death?,1)
* insert ParameterPartSliceLength(input_misc_fields,TOBAC, string, TOBAC Did Tobacco Use Contribute to Death?-1,Did Tobacco Use Contribute to Death? ,1)
* insert ParameterPartSliceLength(input_misc_fields,PREG, string, PREG Pregnancy-1, Pregnancy,1)
* insert ParameterPartSliceLength(input_misc_fields,PREG_BYPASS, string, PREG_BYPASS If Female--Edit Flag-1, If Female--Edit Flag, 1)
* insert ParameterPartSlice(input_misc_fields,DOI_MO, unsignedInt, DOI_MO Date of Injury--month , Date of Injury--month)
* insert ParameterPartSlice(input_misc_fields,DOI_DY, unsignedInt, DOI_DY Date of Injury--day , Date of Injury--day)
* insert ParameterPartSlice(input_misc_fields,DOI_YR, unsignedInt, DOI_YR Date of Injury--year , Date of Injury--year)
* insert ParameterPartSlice(input_misc_fields,TOI_HR, unsignedInt, TOI_HR Time of Injury-4, Time of Injury)
* insert ParameterPartSliceLength(input_misc_fields,WORKINJ, string, WORKINJ Injury at Work-1, Injury at Work,1)
* insert ParameterPartSlice(input_misc_fields,CERTL, string, CERTL Title of Certifier, Title of Certifier)
* insert ParameterPartSlice(input_misc_fields,INACT, unsignedInt, INACT Activity at time of death -computer generated, Activity at time of death - computer generated)
* insert ParameterPartSlice(input_misc_fields,AUXNO2, unsignedInt, AUXNO2 Auxiliary State file number, Auxiliary State file number)
* insert ParameterPartSlice(input_misc_fields,STATESP, string, STATESP State Specific Data, State Specific Data)
* insert ParameterPartSlice(input_misc_fields,SUR_MO, unsignedInt, SUR_MO Surgery Date --month, Surgery Date --month)
* insert ParameterPartSlice(input_misc_fields,SUR_DY, unsignedInt, SUR_MO Surgery Date --day, Surgery Date --day)
* insert ParameterPartSlice(input_misc_fields,SUR_YR, unsignedInt, SUR_YR Surgery Date --year, Surgery Date --year)
* insert ParameterPartSlice(input_misc_fields,TOI_UNIT, string, TOI_UNIT Time of Injury Unit-1, Time of Injury Unit)
