CodeSystem: StatusCS
Id: VRM-Status-cs
Title: "Status Codes Values"
Description: "Status Codes Values"
* ^caseSensitive = true
* #manualCauseOfDeathCoding "Manual Cause of Death Coding" "The death record has been sent for manual cause of death coding."
* #manualDemographicCoding "Manual Demographic  Coding" "The death record has been sent for manual demographic (race/ethnicity) coding."
// * #terminatedCauseOfDeathCoding "Terminated Cause of Death Coding" "Cause of death coding for this submission has been terminated"
// * #terminatedDemographicCoding "Terminated Demographic  Coding" "Demographic (race/ethnicity) coding for this submission has been terminated."
* #noCodingNeeded_Duplicate "No Coding Needed - Duplicate" "The death record is a duplicate of a previously submitted record, no coding will be performed."
* #manualCodingCanceled_Update "Manual Coding Canceled - Update" "An update has been submitted for a death record that is queued for manual coding.  The manual coding
has been canceled for the original record."
* #manualCodingCanceled_Void "Manual Coding Canceled - Void" "A void request has been received for a death record that is queued for manual coding.  The manual coding
has been canceled for the original record."
* #nonCodeable "Non Codeable" "The fetal death record does not meet the criteria for fetal cause of death coding."
* ^experimental = false