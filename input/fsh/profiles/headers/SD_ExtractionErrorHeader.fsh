Profile:  ExtractionErrorHeader
Parent: MessageHeader
Id: VRM-ExtractionErrorHeader
Title:  "Extraction Error Header"
Description:   "Extraction Error Message Header"
* eventUri from ExtractionErrorHeaderURIVS (required)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.identifier 1..1
* response.code 1..1
* response.code = #fatal-error (exactly)
* response.details 1..1
* response.details only Reference(Outcome)
* focus only Reference(MessageParameters)