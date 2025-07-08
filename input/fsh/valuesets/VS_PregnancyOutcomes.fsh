ValueSet: PregnancyOutcomesVS
Id: VRM-PregnancyOutcomes-vs
Title: "Pregnancy Outcome Values"
Description: "Pregnancy Outcome Values"
// The following have >= 1 certificate
* $sct#276507005 "Fetal Death" // 0 birth, >=1 fd
* $sct#281050002 "Live Birth" // >=1 birth, 0 fd
* CodedPregnancyStatusCS#live-birth-and-fetal-death "Live birth(s) and fetal death(s)" // >=1 birth + >=1 fd
// The following have no associated certificate
* $sct#17369002 "Spontaneous Abortion"
* $sct#57797005 "Induced Abortion"
* $sct#34801009 "Ectopic Pregnancy"
* $sct#44782008 "Molar Pregnancy"
* $v3-NullFlavor#UNK "Unknown"
* $v3-NullFlavor#OTH "Other"