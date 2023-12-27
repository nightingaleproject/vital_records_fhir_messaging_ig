RuleSet: Identifiers2020NY000182
* identifier.value = "2020NY000182"
* identifier.extension[certificateNumber].valueString = "000182"
* identifier.extension[auxiliaryStateIdentifier1].valueString = "000000000001"
* identifier.extension[auxiliaryStateIdentifier2].valueString = "100000000001"

RuleSet:  EmptyTextNarrative
* text.status = #empty 
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Empty</div>"

Instance: DeathCertificateDocument-Example1
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example1"
* insert AddMetaProfile(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Composition, DeathCertificate-Example1)
* insert addentry(Patient, Decedent-Example1)
// * insert addentry(RelatedPerson, DecedentFather-Example1)
// * insert addentry(RelatedPerson, DecedentMother-Example1)
// * insert addentry(RelatedPerson, DecedentSpouse-Example1)
// * insert addentry(Observation, DecedentAge-Example1)
// * insert addentry(Observation, InputRaceAndEthnicity-Example1)
// * insert addentry(Observation, BirthRecordIdentifier-Example1)
// * insert addentry(Observation, DecedentEducationLevel-Example1)
// * insert addentry(Observation, DecedentMilitaryService-Example1)
// * insert addentry(Observation, DecedentUsualWork-Example1)
// * insert addentry(Observation, EmergingIssues-Example1)
// * insert addentry(Observation, DecedentPregnancyStatus-Example1)
// * insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
// * insert addentry(Observation, DeathDate-Example1)
// * insert addentry(Observation, SurgeryDate-Example1)
// * insert addentry(Observation, ExaminerContacted-Example1)
// * insert addentry(Observation, MannerOfDeath-Example1)
// * insert addentry(Location, DeathLocation-Example1)
// * insert addentry(Location, InjuryLocation-Example1)
// * insert addentry(Observation, InjuryIncident-Example1)
// * insert addentry(Practitioner, Certifier-Example1)
// * insert addentry(Procedure, DeathCertification-Example1)
// * insert addentry(Observation, CauseOfDeathPart1-Example1)
// * insert addentry(Observation, CauseOfDeathPart1-Example2)
// * insert addentry(Observation, CauseOfDeathPart2-Example1)
// //* insert addentry(List, CauseOfDeathPathway-Example1)
// * insert addentry(Location, DispositionLocation-Example1)
// * insert addentry(Organization, FuneralHome-Example1)
// * insert addentry(Observation, DecedentDispositionMethod-Example1)
// * insert addentry(Observation, AutopsyPerformedIndicator-Example1)
// * insert addentry(Practitioner, Mortician-Example1)

Instance: DeathCertificate-Example1
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificate-Example1"
* meta.profile = Canonical(DeathCertificate)
* status = #final
*  type = $loinc#64297-5 "Death certificate"
// * insert addReferenceComposition(subject, Patient, Decedent-Example1)
* subject.type = "Patient"
* subject.display = "Decedent-Example1"
*  date = "2020-11-15T16:39:54-05:00"
* author.type = "Author" //    insert addReferenceComposition(author, Practitioner, Certifier-Example1)
* author.display = "Display"
*  title = "Death Certificate"
*  attester.mode = #legal
*  attester.time = "2020-11-14T16:39:40-05:00"
// * insert addReferenceComposition(attester.party, Practitioner, Certifier-Example1)
//* insert addReferenceComposition(event.detail, Procedure, DeathCertification-Example1)
*  event.detail.type = "Procedure"
*  event.detail.display = "Procedure"
*  extension[filingFormat].valueCodeableConcept = FilingFormatCS#electronic
*  extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original
*  extension[stateSpecificField].valueString = "State Specific Content"
// *  section[DecedentDemographics].entry[Decedent].resource = Decedent-Example1
* section[DecedentDemographics]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DecedentDemographics
    // *  section[DecedentDemographics].entry[Decedent] = Reference(Decedent-Example1)
//   * insert addCompositionEntry(Decedent, Patient, Decedent-Example1)
  * entry[Decedent][+]
    * type = "Patient"
    * display = "Decedent-Example1"
    * reference = "Patient/Decedent-Example1"
    // *  section[DecedentDemographics].entry[Father] = Reference(DecedentFather-Example1)
  // * insert addCompositionEntry(Father, RelatedPerson, DecedentFather-Example1)
  //   // *  section[DecedentDemographics].entry[Mother] = Reference(DecedentMother-Example1)
  // * insert addCompositionEntry(Mother, RelatedPerson, DecedentMother-Example1)
  //   // *  section[DecedentDemographics].entry[Spouse] = Reference(DecedentSpouse-Example1)
  // * insert addCompositionEntry(Spouse, RelatedPerson, DecedentSpouse-Example1)
  //   // *  section[DecedentDemographics].entry[Age] = Reference(DecedentAge-Example1)
  // * insert addCompositionEntry(Age, Observation, DecedentAge-Example1)
  //   // *  section[DecedentDemographics].entry[BirthRecordID] = Reference(BirthRecordIdentifier-Example1)
  // * insert addCompositionEntry(BirthRecordID, Observation, BirthRecordIdentifier-Example1)
  //   // *  section[DecedentDemographics].entry[EducationLevel] = Reference(DecedentEducationLevel-Example1)
  // * insert addCompositionEntry(EducationLevel, Observation, DecedentEducationLevel-Example1)
  //   // *  section[DecedentDemographics].entry[MilitaryService] = Reference(DecedentMilitaryService-Example1)
  // * insert addCompositionEntry(MilitaryService, Observation, DecedentMilitaryService-Example1)
  //   // *  section[DecedentDemographics].entry[UsualWork] = Reference(DecedentUsualWork-Example1)
  // * insert addCompositionEntry(UsualWork, Observation, DecedentUsualWork-Example1)
  //   // *  section[DecedentDemographics].entry[InputRaceAndEthnicity] = Reference(InputRaceAndEthnicity-Example1)
  // * insert addCompositionEntry(InputRaceAndEthnicity, Observation, InputRaceAndEthnicity-Example1)
  //   // *  section[DecedentDemographics].entry[EmergingIssues] = Reference(EmergingIssues-Example1)
  // * insert addCompositionEntry(EmergingIssues, Observation, EmergingIssues-Example1)
* section[DeathInvestigation]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DeathInvestigation
  * insert EmptyTextNarrative
    // *  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
  // * insert addCompositionEntry(ExaminerContacted, Observation, ExaminerContacted-Example1)
  //   // *  section[DeathInvestigation].entry[PregnancyStatus] = Reference(DecedentPregnancyStatus-Example1)
  // * insert addCompositionEntry(PregnancyStatus, Observation, DecedentPregnancyStatus-Example1)
  //   // *  section[DeathInvestigation].entry[TobaccoUse] = Reference(TobaccoUseContributedToDeath-Example1)
  // * insert addCompositionEntry(TobaccoUse, Observation, TobaccoUseContributedToDeath-Example1)
  //   // *  section[DeathInvestigation].entry[Autopsy] = Reference(AutopsyPerformedIndicator-Example1)
  // * insert addCompositionEntry(Autopsy, Observation, AutopsyPerformedIndicator-Example1)
  //   //*  section[DeathInvestigation].entry[DeathOrInjuryLocation][0] = Reference(DeathLocation-Example1)
  //   //*  section[DeathInvestigation].entry[DeathOrInjuryLocation][1] = Reference(InjuryLocation-Example1)
  //   // *  section[DeathInvestigation].entry[DeathLocation] = Reference(DeathLocation-Example1)
  // * insert addCompositionEntry(DeathLocation, Location, DeathLocation-Example1)
  //   // *  section[DeathInvestigation].entry[InjuryLocation] = Reference(InjuryLocation-Example1)
  // * insert addCompositionEntry(InjuryLocation, Location, InjuryLocation-Example1)
  //   // *  section[DeathInvestigation].entry[InjuryIncident] = Reference(InjuryIncident-Example1)
  // * insert addCompositionEntry(InjuryIncident, Observation, InjuryIncident-Example1)
  //   // *  section[DeathInvestigation].entry[DeathDate] = Reference(DeathDate-Example1)
  // * insert addCompositionEntry(DeathDate, Observation, DeathDate-Example1)
  //   // *  section[DeathInvestigation].entry[SurgeryDate] = Reference(SurgeryDate-Example1)
  // * insert addCompositionEntry(SurgeryDate, Observation, SurgeryDate-Example1)
* section[DeathCertification]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DeathCertification
  * insert EmptyTextNarrative
  // *  section[DeathCertification].entry[Certifier] = Reference(Certifier-Example1)
  // * insert addCompositionEntry(Certifier, Practitioner, Certifier-Example1)
  //   // *  section[DeathCertification].entry[DeathCertification] = Reference(DeathCertification-Example1)
  // * insert addCompositionEntry(DeathCertification, Procedure, DeathCertification-Example1)
  //   // *  section[DeathCertification].entry[MannerOfDeath] = Reference(MannerOfDeath-Example1)
  // * insert addCompositionEntry(MannerOfDeath, Observation, MannerOfDeath-Example1)
  //   // *  entry[CauseOfDeathPart1][0].reference = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example1" 
  // * insert addCompositionEntry(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example1)
  //   // *  entry[CauseOfDeathPart1][+].reference = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example2"
  // * insert addCompositionEntry(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example2)
  //   // *  section[DeathCertification].entry[CauseOfDeathPart2] = Reference(CauseOfDeathPart2-Example1)
  // * insert addCompositionEntry(CauseOfDeathPart2, Observation, CauseOfDeathPart2-Example1)
    //*  section[DeathCertification].entry[CauseOfDeathPathway] = Reference(CauseOfDeathPathway-Example1)
* section[DecedentDisposition]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DecedentDisposition
  * insert EmptyTextNarrative
  // *  section[DecedentDisposition].entry[DispositionLocation] = Reference(DispositionLocation-Example1)
  // * insert addCompositionEntry(DispositionLocation, Location, DispositionLocation-Example1)
  //   // *  section[DecedentDisposition].entry[FuneralHome] = Reference(FuneralHome-Example1)
  // * insert addCompositionEntry(FuneralHome, Organization, FuneralHome-Example1)
  //   // *  section[DecedentDisposition].entry[DispositionMethod] = Reference(DecedentDispositionMethod-Example1)
  // * insert addCompositionEntry(DispositionMethod, Observation, DecedentDispositionMethod-Example1)
  //   // *  section[DecedentDisposition].entry[Mortician] = Reference(Mortician-Example1)
  // * insert addCompositionEntry(Mortician, Practitioner, Mortician-Example1)


Instance: DeathCertificate-Example2
InstanceOf: DeathCertificate
Usage: #example
Description: "DeathCertificate-Example2 (with coded content)"
* meta.profile = Canonical(DeathCertificate)
* status = #final
*  type = $loinc#64297-5 "Death certificate"
//* insert addReferenceComposition(subject, Patient, Decedent-Example1)
* subject.type = "Patient"
* subject.display = "Decedent-Example1"
*  date = "2020-11-15T16:39:54-05:00"
// * insert addReferenceComposition(author, Practitioner, Certifier-Example1)
* author.type = "Practitioner"
* author.display = "Practitioner"
*  title = "Death Certificate"
*  attester.mode = #legal
*  attester.time = "2020-11-14T16:39:40-05:00"
//* insert addReferenceComposition(attester.party, Practitioner, Certifier-Example1)
//* insert addReferenceComposition(event.detail, Procedure, DeathCertification-Example1)
* event.detail.type = "Procedure"
* event.detail.display = "Procedure"
*  extension[replaceStatus].valueCodeableConcept = ReplaceStatusCS#original
*  extension[stateSpecificField].valueString = "State Specific Content"
// *  section[DecedentDemographics].entry[Decedent].resource = Decedent-Example1
* section[DecedentDemographics]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DecedentDemographics
//   * insert addCompositionEntry(Decedent, Patient, Decedent-Example1)
  * entry[Decedent][+]
    * type = "Patient"
    * display = "Decedent-Example1"
    * reference = "Patient/Decedent-Example1"
    // *  section[DecedentDemographics].entry[Father] = Reference(DecedentFather-Example1)
  // * insert addCompositionEntry(Father, RelatedPerson, DecedentFather-Example1)
  //   // *  section[DecedentDemographics].entry[Mother] = Reference(DecedentMother-Example1)
  // * insert addCompositionEntry(Mother, RelatedPerson, DecedentMother-Example1)
  //   // *  section[DecedentDemographics].entry[Spouse] = Reference(DecedentSpouse-Example1)
  // * insert addCompositionEntry(Spouse, RelatedPerson, DecedentSpouse-Example1)
  //   // *  section[DecedentDemographics].entry[Age] = Reference(DecedentAge-Example1)
  // * insert addCompositionEntry(Age, Observation, DecedentAge-Example1)
  //   // *  section[DecedentDemographics].entry[BirthRecordID] = Reference(BirthRecordIdentifier-Example1)
  // * insert addCompositionEntry(BirthRecordID, Observation, BirthRecordIdentifier-Example1)
  //   // *  section[DecedentDemographics].entry[EducationLevel] = Reference(DecedentEducationLevel-Example1)
  // * insert addCompositionEntry(EducationLevel, Observation, DecedentEducationLevel-Example1)
  //   // *  section[DecedentDemographics].entry[MilitaryService] = Reference(DecedentMilitaryService-Example1)
  // * insert addCompositionEntry(MilitaryService, Observation, DecedentMilitaryService-Example1)
  //   // *  section[DecedentDemographics].entry[UsualWork] = Reference(DecedentUsualWork-Example1)
  // * insert addCompositionEntry(UsualWork, Observation, DecedentUsualWork-Example1)
  //   // *  section[DecedentDemographics].entry[InputRaceAndEthnicity] = Reference(InputRaceAndEthnicity-Example1)
  // * insert addCompositionEntry(InputRaceAndEthnicity, Observation, InputRaceAndEthnicity-Example1)
  //   // *  section[DecedentDemographics].entry[EmergingIssues] = Reference(EmergingIssues-Example1)
  // * insert addCompositionEntry(EmergingIssues, Observation, EmergingIssues-Example1)
* section[DeathInvestigation]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DeathInvestigation
  * insert EmptyTextNarrative
      // *  section[DeathInvestigation].entry[ExaminerContacted] = Reference(ExaminerContacted-Example1)
  // * insert addCompositionEntry(ExaminerContacted, Observation, ExaminerContacted-Example1)
  //   // *  section[DeathInvestigation].entry[PregnancyStatus] = Reference(DecedentPregnancyStatus-Example1)
  // * insert addCompositionEntry(PregnancyStatus, Observation, DecedentPregnancyStatus-Example1)
  //   // *  section[DeathInvestigation].entry[TobaccoUse] = Reference(TobaccoUseContributedToDeath-Example1)
  // * insert addCompositionEntry(TobaccoUse, Observation, TobaccoUseContributedToDeath-Example1)
  //   // *  section[DeathInvestigation].entry[Autopsy] = Reference(AutopsyPerformedIndicator-Example1)
  // * insert addCompositionEntry(Autopsy, Observation, AutopsyPerformedIndicator-Example1)
  //   //*  section[DeathInvestigation].entry[DeathOrInjuryLocation][0] = Reference(DeathLocation-Example1)
  //   //*  section[DeathInvestigation].entry[DeathOrInjuryLocation][1] = Reference(InjuryLocation-Example1)
  //   // *  section[DeathInvestigation].entry[DeathLocation] = Reference(DeathLocation-Example1)
  // * insert addCompositionEntry(DeathLocation, Location, DeathLocation-Example1)
  //   // *  section[DeathInvestigation].entry[InjuryLocation] = Reference(InjuryLocation-Example1)
  // * insert addCompositionEntry(InjuryLocation, Location, InjuryLocation-Example1)
  //   // *  section[DeathInvestigation].entry[InjuryIncident] = Reference(InjuryIncident-Example2)
  // * insert addCompositionEntry(InjuryIncident, Observation, InjuryIncident-Example2)
  //   // *  section[DeathInvestigation].entry[DeathDate] = Reference(DeathDate-Example2)
  // * insert addCompositionEntry(DeathDate, Observation, DeathDate-Example2)
  //   // *  section[DeathInvestigation].entry[SurgeryDate] = Reference(SurgeryDate-Example1)
  // * insert addCompositionEntry(SurgeryDate, Observation, SurgeryDate-Example1)
* section[DeathCertification]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DeathCertification
  * insert EmptyTextNarrative
      // *  section[DeathCertification].entry[Certifier] = Reference(Certifier-Example1)
  // * insert addCompositionEntry(Certifier, Practitioner, Certifier-Example1)
  //   // *  section[DeathCertification].entry[DeathCertification] = Reference(DeathCertification-Example1)
  // * insert addCompositionEntry(DeathCertification, Procedure, DeathCertification-Example1)
  //   // *  section[DeathCertification].entry[MannerOfDeath] = Reference(MannerOfDeath-Example1)
  // * insert addCompositionEntry(MannerOfDeath, Observation, MannerOfDeath-Example1)
  //   // *  entry[CauseOfDeathPart1][0].reference = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example1" 
  // * insert addCompositionEntry(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example1)
  //   // *  entry[CauseOfDeathPart1][+].reference = "http://www.example.org/fhir/Observation/CauseOfDeathPart1-Example2"
  // * insert addCompositionEntry(CauseOfDeathPart1, Observation, CauseOfDeathPart1-Example2)
  //   // *  section[DeathCertification].entry[CauseOfDeathPart2] = Reference(CauseOfDeathPart2-Example1)
  // * insert addCompositionEntry(CauseOfDeathPart2, Observation, CauseOfDeathPart2-Example1)
  //   //*  section[DeathCertification].entry[CauseOfDeathPathway] = Reference(CauseOfDeathPathway-Example1)
* section[DecedentDisposition]
// The next line shouldn't be necessary
  * code = DocumentSectionCS#DecedentDisposition
  * insert EmptyTextNarrative
      // *  section[DecedentDisposition].entry[DispositionLocation] = Reference(DispositionLocation-Example1)
  // * insert addCompositionEntry(DispositionLocation, Location, DispositionLocation-Example1)
  //   // *  section[DecedentDisposition].entry[FuneralHome] = Reference(FuneralHome-Example1)
  // * insert addCompositionEntry(FuneralHome, Organization, FuneralHome-Example1)
  //   // *  section[DecedentDisposition].entry[DispositionMethod] = Reference(DecedentDispositionMethod-Example1)
  // * insert addCompositionEntry(DispositionMethod, Observation, DecedentDispositionMethod-Example1)
  //   // *  section[DecedentDisposition].entry[Mortician] = Reference(Mortician-Example1)
  // * insert addCompositionEntry(Mortician, Practitioner, Mortician-Example1)
// The next line shouldn't be necessary
*  section[CodedContent]
  * code = DocumentSectionCS#CodedContent
  * insert EmptyTextNarrative
  // *  section[CodedContent].entry[ActivityAtTimeOfDeath] = Reference(ActivityAtTimeOfDeath-Example1)
// *  section[CodedContent].entry[PlaceOfInjury] = Reference(PlaceOfInjury-Example1)
// *  section[CodedContent].entry[CodedRaceAndEthnicity] = Reference(CodedRaceAndEthnicity-Example1)
// *  section[CodedContent].entry[ManualUnderlyingCauseOfDeath] = Reference(ManualUnderlyingCauseOfDeath-Example1)
// *  section[CodedContent].entry[AutomatedUnderlyingCauseOfDeath] = Reference(AutomatedUnderlyingCauseOfDeath-Example1)
// *  section[CodedContent].entry[RecordAxisCauseOfDeath] = Reference(RecordAxisCauseOfDeath-Example1)
// *  section[CodedContent].entry[EntityAxisCauseOfDeath] = Reference(EntityAxisCauseOfDeath-Example1)
//*  section[CodedContent].entry[CodingStatusValues] = Reference(CodingStatusValues-Example1)

Instance: DeathCertificateDocument-Example2
InstanceOf: DeathCertificateDocument
Usage: #example
Description: "DeathCertificateDocument-Example2 (with coded content)"
* insert AddMetaProfile(DeathCertificateDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* type = #document
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Composition, DeathCertificate-Example2)
* insert addentry(Patient, Decedent-Example1)
// * insert addentry(RelatedPerson, DecedentFather-Example1)
// * insert addentry(RelatedPerson, DecedentMother-Example1)
// * insert addentry(RelatedPerson, DecedentSpouse-Example1)
// * insert addentry(Observation, DecedentAge-Example1)
// * insert addentry(Observation, InputRaceAndEthnicity-Example1)
// * insert addentry(Observation, BirthRecordIdentifier-Example1)
// * insert addentry(Observation, DecedentEducationLevel-Example1)
// * insert addentry(Observation, DecedentMilitaryService-Example1)
// * insert addentry(Observation, DecedentUsualWork-Example1)
// * insert addentry(Observation, EmergingIssues-Example1)
// * insert addentry(Observation, DecedentPregnancyStatus-Example1)
// * insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
// * insert addentry(Observation, DeathDate-Example2)
// * insert addentry(Observation, SurgeryDate-Example1)
// * insert addentry(Observation, ExaminerContacted-Example1)
// * insert addentry(Observation, MannerOfDeath-Example1)
// * insert addentry(Location, DeathLocation-Example1)
// * insert addentry(Location, InjuryLocation-Example1)
// * insert addentry(Observation, InjuryIncident-Example2)
// * insert addentry(Practitioner, Certifier-Example1)
// * insert addentry(Procedure, DeathCertification-Example1)
// * insert addentry(Observation, CauseOfDeathPart1-Example1)
// * insert addentry(Observation, CauseOfDeathPart1-Example2)
// * insert addentry(Observation, CauseOfDeathPart2-Example1)
// //* insert addentry(List, CauseOfDeathPathway-Example1)
// * insert addentry(Location, DispositionLocation-Example1)
// * insert addentry(Organization, FuneralHome-Example1)
// * insert addentry(Observation, DecedentDispositionMethod-Example1)
// * insert addentry(Observation, AutopsyPerformedIndicator-Example1)
// * insert addentry(Practitioner, Mortician-Example1)
// * insert addentry(Observation, ActivityAtTimeOfDeath-Example1)
// * insert addentry(Observation, CodedRaceAndEthnicity-Example1)
// * insert addentry(Observation, ManualUnderlyingCauseOfDeath-Example1)
// * insert addentry(Observation, AutomatedUnderlyingCauseOfDeath-Example1)
// * insert addentry(Observation, RecordAxisCauseOfDeath-Example1)
// * insert addentry(Observation, EntityAxisCauseOfDeath-Example1)
// * insert addentry(Observation, PlaceOfInjury-Example1)
// * insert addentry(Parameters, CodingStatusValues-Example1)
