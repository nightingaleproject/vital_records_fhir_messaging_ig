Instance: composition-coded-cause-of-fetal-death-example1
InstanceOf: CompositionCodedCauseOfFetalDeath
Title: "Composition - Coded Cause of Fetal Death - Fetus"
Description: "Composition - Coded Cause of Fetal Death: Fetus example"
Usage: #example
* extension[Extension-fetal-death-report-number]
  * valueIdentifier
    * type = $v2-0203#FDR
    * value = "1234"
// * identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#86804-2 "Cause of death classification and related information Document"
* subject.display  = "Patient - Decedent Fetus"
* date = "2021-05-20"
* author.display = "National Center for Health Statistics"
* title = "Coded Cause of Fetal Death"
* section[codedCauseOfFetalDeath]
  * title = "Coded Initiating Cause of Fetal Death"
  *  insert addNamedEntryComposition(codedInitiatingFetalDeathCauseOrCondition, Observation, observation-coded-initiating-fetal-death-cause-or-condition)