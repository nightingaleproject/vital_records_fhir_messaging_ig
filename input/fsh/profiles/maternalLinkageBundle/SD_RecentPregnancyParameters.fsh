Profile:  RecentPregnancyParameters
Parent: Parameters
Id: VRM-RecentPregnancyParameters
Description:   "Parameter for most recent pregnancy during year before decease."
Title:  "Recent Pregnancy Parameters"
* id MS
* insert ParameterSlicing
* parameter contains
    notes 1..1 and
    coded_outcome 1..1 and   
    birth_plurality 1..1 and 
    fetal_death_plurality 1..1 and
    preg_status_is_correct 1..1 and
    corrected_pregnancy_status 0..1    // only if needed
* insert ParameterNameType(notes, string, Notes, Notes) 
* insert ParameterNameType(coded_outcome, CodeableConcept, coded outcome, coded_outcome) 
* parameter[coded_outcome].value[x] from PregnancyOutcomesVS (extensible)
* insert ParameterNameType(preg_status_is_correct, boolean, Pregnancy Status on Death Record is Correct, Pregnancy Status on Death Record is Correct) 
* insert ParameterNameType(corrected_pregnancy_status, CodeableConcept, Corrected Pregnancy Status, Corrected Pregnancy Status) 
* parameter[corrected_pregnancy_status].value[x] from DeathPregnancyStatusVS (extensible)
* insert ParameterNameType(birth_plurality, integer, Birth Plurality, Birth Plurality) 
* insert ParameterNameType(fetal_death_plurality, integer, Fetal Death Plurality, Fetal Death Plurality) 

ValueSet: PregnancyOutcomesVS
Id: VRM-PregnancyOutcomes-vs
Title: "Pregnancy Outcome Values"
Description: "Pregnancy Outcome Values"
// The following have >= 1 certificate
* $sct#276507005 "Fetal Death" // 0 birth, >=1 fd
* $sct#281050002 "Live Birth" // >=1 birth, 0 fd
* CodedPregnancyStatusCS#plural-fetal-death-and-birth "Plural fetal death and birth" // >=1 birth + >=1 fd
// The following have no associated certificate
* $sct#17369002 "Spontaneous Abortion"
* $sct#57797005 "Induced Abortion"
* $sct#34801009 "Ectopic Pregnancy"
* $sct#44782008 "Molar Pregnancy"
* $v3-NullFlavor#UNK "Unknown"
* $v3-NullFlavor#OTH "Other"

CodeSystem: CodedPregnancyStatusCS
Id: VRM-coded-pregnancy-status-cs
Title: "Local Coded Pregnancy Status"
Description: "Codesystem for pregnancy status for cases not covered by SNOMEDCT."
* ^caseSensitive = true
* #plural-fetal-death-and-birth  "Plural Fetal Death and Birth" "Plural Fetal Death and Birth"
* #plural-fetal-death  "Plural Fetal Death" "Plural Fetal Death"
* ^experimental = false

ValueSet: CertAvailableVS
Id: VRM-CertAvailable-vs
Title: "Certificate Available Values"
Description: "Certificate Available Values"
* $v2-0136#Y "Yes"
* $v2-0136#N "No"
* $v3-NullFlavor#UNK "Unknown"
* $v3-NullFlavor#NAV "Temporarily unavailable"
* ^experimental = false
