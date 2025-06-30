Profile:  RecentPregnancyParameters
Parent: Parameters
Id: VRM-RecentPregnancyParameters
Description:   "Parameter for most recent pregnancy during year before decease."
Title:  "Recent Pregnancy Parameters"
* id MS
* insert ParameterSlicing
* parameter contains
    notes 0..1 and  //only if needed
    coded_outcome 1..1 and   
    birth_plurality 0..1 and 
    fetal_death_plurality 1..1 and
    preg_status_is_correct 0..1 and
    corrected_pregnancy_status 0..1    // only if needed
* insert ParameterNameType(notes, string, Notes, Notes) 
* insert ParameterNameType(coded_outcome, CodeableConcept, coded outcome, coded_outcome) 
* parameter[coded_outcome].value[x] from PregnancyOutcomesVS (extensible)
* insert ParameterNameType(preg_status_is_correct, boolean, Pregnancy Status on Death Record is Correct, Pregnancy Status on Death Record is Correct) 
* insert ParameterNameType(corrected_pregnancy_status, CodeableConcept, Corrected Pregnancy Status, Corrected Pregnancy Status) 
* parameter[corrected_pregnancy_status].value[x] from DeathPregnancyStatusVS (extensible)
* insert ParameterNameType(birth_plurality, integer, Birth Plurality, Birth Plurality) 
* insert ParameterNameType(fetal_death_plurality, integer, Fetal Death Plurality, Fetal Death Plurality) 





