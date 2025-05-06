Instance: MaternalLinkageRequestHeaderExample1
InstanceOf: MaternalLinkageRequestHeader
Usage: #example
Description: "Header for Maternal Linkage Request - Example"
* eventUri = "http://nchs.cdc.gov/maternal_linkage_request"
* destination.endpoint = "https://sos.ny.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* insert addReference(focus[0], Parameters, ParametersDeathExample1)

Instance: MaternalLinkageRequestMessage-Example1
InstanceOf: MaternalLinkageRequestMessage
Usage: #example
Description: "Maternal Linkage Request Message - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageRequestHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
