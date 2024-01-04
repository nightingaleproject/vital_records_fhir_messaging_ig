Instance: AcknowledgementHeader-Example1
InstanceOf: AcknowledgementHeader
Usage: #example
Description: "Acknowledgement Header: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_acknowledgement"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_acknowledgement"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok
// * focus = Reference(Parameters-Example1)   // Is this needed?  Same parameters as for VoidHeader...
* insert addReference(focus, Parameters, Parameters-Example1)

Instance: VoidHeader-Example1
InstanceOf: VoidHeader
Usage: #example
Description: "Parameters for Void: Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_submission_void"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(VoidParameters-Example1)
* insert addReference(focus, Parameters, VoidParameters-Example1)

Instance: StatusHeader-Example1
InstanceOf: StatusHeader
Usage: #example
Description: "Parameters for Status: Example1"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_status"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus = Reference(StatusParameters-Example1)
* insert addReference(focus, Parameters, StatusParameters-Example1)
// * focus.reference = "http://www.example.org/fhir/Parameters/StatusParameters-Example1"
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: UpdateHeader-Example1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Update: Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission_update"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
// * focus.reference = "http://www.example.org/fhir/Bundle/DeathCertificateDocument-Example1"
* insert addReference(focus[0], Bundle, DeathCertificateDocument-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)

Instance: SubmissionHeader-Example1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Submission - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, DeathCertificateDocument-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)

Instance: CauseOfDeathCodingHeader-Example1
InstanceOf: CauseOfDeathCodingHeader
Usage: #example
Description: "Header for Cause of Death Coding Message - Example1- coded content only"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(CauseOfDeathCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, CauseOfDeathCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: DemographicsCodingHeader-Example1
InstanceOf: DemographicsCodingHeader
Usage: #example
Description: "Header for Demographic Coding Message - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DemographicCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, DemographicCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: CauseOfDeathCodingUpdateHeader-Example1
InstanceOf: CauseOfDeathCodingUpdateHeader
Usage: #example
Description: "Header for Cause Of Death Coding Update Message - Example"
//* eventUri = "http://nchs.cdc.gov/vrdr_coding_update"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(CauseOfDeathCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, CauseOfDeathCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: DemographicsCodingUpdateHeader-Example1
InstanceOf: DemographicsCodingUpdateHeader
Usage: #example
Description: "Header for Demographic Coding Update Message - Example"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * focus = Reference(DemographicCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, DemographicCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok


Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Usage: #example
Description: "Header for Extraction Error Message - Example"
// * eventUri = HeaderURICS#"http://nchs.cdc.gov/vrdr_extraction_error"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * response.details = Reference(Outcome-Example1)
* insert addReference(response.details, OperationOutcome, Outcome-Example1)
// * focus = Reference(Parameters-Example1)
* insert addReference(focus, Parameters, Parameters-Example1)


Instance: FetalDeathReportHeader-Example1
InstanceOf: FetalDeathReportHeader
Usage: #example
Description: "Header for Fetal Death Report Message - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_death"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-provider-fetal-death-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)


Instance: FetalDeathReportUpdateHeader-Example1
InstanceOf: FetalDeathReportUpdateHeader
Usage: #example
Description: "Header for Fetal Death Report Message Update - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_death_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-provider-fetal-death-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)


Instance: BirthReportHeader-Example1
InstanceOf: BirthReportHeader
Usage: #example
Description: "Header for Birth Report Message - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_birth"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-provider-live-birth-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)


Instance: BirthReportUpdateHeader-Example1
InstanceOf: BirthReportUpdateHeader
Usage: #example
Description: "Header for Birth Report Message Update - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_birth_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-provider-live-birth-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)


Instance: CodedCauseOfFetalDeathHeader-Example1
InstanceOf: CodedCauseOfFetalDeathHeader
Usage: #example
Description: "Header for Coded Cause of Fetal Death Message - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_causeofdeath"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-coded-cause-of-fetal-death-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "FetalDeathReportHeader-Example1"
* response.code = #ok


Instance: CodedCauseOfFetalDeathUpdateHeader-Example1
InstanceOf: CodedCauseOfFetalDeathUpdateHeader
Usage: #example
Description: "Header for Coded Cause of Fetal Death Message Update - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_causeofdeath_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-coded-cause-of-fetal-death-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "FetalDeathReportHeader-Example1"
* response.code = #ok


Instance: ParentalDemographicsCodingHeader-Example1
InstanceOf: ParentalDemographicsCodingHeader
Usage: #example
Description: "Header for Parental Demographics Message - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_demographics_coding"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-coded-race-and-ethnicity-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "BirthReportHeader-Example1"
* response.code = #ok


Instance: ParentalDemographicsCodingUpdateHeader-Example1
InstanceOf: ParentalDemographicsCodingUpdateHeader
Usage: #example
Description: "Header for Parental Demographics Message Update - Example"
* eventUri = "http://nchs.cdc.gov/bfdr_demographics_coding_update"
* destination.endpoint = "http://nchs.cdc.gov/bfdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Bundle, bundle-coded-race-and-ethnicity-example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "BirthReportHeader-Example1"
* response.code = #ok

Instance: IndustryOccupationCodingHeader-Example1
InstanceOf: IndustryOccupationCodingHeader
Usage: #example
Description: "Header for Industry Occupation Coding Message - Example"
// * eventUri = "http://nchs.cdc.gov/vrdr_coding"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
// * focus = Reference(DemographicCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, IndustryOccupationCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok

Instance: IndustryOccupationCodingUpdateHeader-Example1
InstanceOf: IndustryOccupationCodingUpdateHeader
Usage: #example
Description: "Header for Industry Occupation Coding Update Message - Example"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
// * focus = Reference(DemographicCodedContentBundle-Example1)
* insert addReference(focus[0], Bundle, IndustryOccupationCodedContentBundle-Example1)
* insert addReference(focus[1], Parameters, Parameters-Example1)
* response.identifier = "SubmissionHeader-Example1"
* response.code = #ok