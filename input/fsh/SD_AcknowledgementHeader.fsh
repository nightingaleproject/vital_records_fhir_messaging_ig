
ValueSet: AcknowledgementURIVS
Id: VRM-AcknowledgementHeaderURI-vs
Title: "Acknowledgement MessageHeader URI Values"
Description: "Acknowledgement MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_acknowledgement
* MessageHeaderURICS#http://nchs.cdc.gov/fd_acknowledgement
* MessageHeaderURICS#http://nchs.cdc.gov/birth_acknowledgement
* ^experimental = false


Profile:  AcknowledgementHeader
Parent: MessageHeader
Id: VRM-AcknowledgementHeader
Title:  "Acknowledgement Header"
Description:   "Acknowledgement  Header"
* eventUri from AcknowledgementURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
* focus only Reference(MessageParameters)