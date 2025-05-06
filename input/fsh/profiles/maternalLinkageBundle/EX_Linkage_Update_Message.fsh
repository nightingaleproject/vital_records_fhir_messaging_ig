Instance: MaternalLinkageUpdateHeaderExample1
InstanceOf: UpdateHeader
Usage: #example
Description: "Header for Maternal Linkage Update - Example"
* eventUri = "http://nchs.cdc.gov/maternal_linkage_update"
* destination.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* source.endpoint = "https://sos.ny.gov/vitalrecords"
* insert addReference(focus[0], Parameters, ParametersDeathExample1)
* insert addReference(focus[1], Bundle, MaternalLinkageBundle-Birth)

Instance: MaternalLinkageUpdateMessage-Example1
InstanceOf: MaternalLinkageUpdateMessage
Usage: #example
Description: "Update mesdage - Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, MaternalLinkageUpdateHeaderExample1)
* insert addentry(Parameters, ParametersDeathExample1)
* insert addentry(Bundle, MaternalLinkageBundle-Birth)