Instance: MaternalLinkageSubmissionHeaderExample1
InstanceOf: SubmissionHeader
Usage: #example
Description: "Header for Maternal Linkage Submission - Example"
* eventUri = "http://nchs.cdc.gov/maternal_linkage_submission"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Parameters, ParametersDeathExample1)
* insert addReference(focus[1], Bundle, MaternalLinkageBundle-Birth)

Instance: MaternalLinkageSubmissionMessage-Example1
InstanceOf: MaternalLinkageSubmissionMessage
Usage: #example
Description: "Submission mesdage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageSubmissionHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
* insert addentry(Bundle, MaternalLinkageBundle-Birth)