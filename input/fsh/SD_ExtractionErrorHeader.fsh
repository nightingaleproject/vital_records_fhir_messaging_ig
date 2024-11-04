


ValueSet: ExtractionErrorHeaderURIVS
Id: VRM-ExtractionErrorHeaderURI-vs
Title: "ExtractionError MessageHeader URI Values"
Description: "ExtractionError MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_extraction_error
* MessageHeaderURICS#http://nchs.cdc.gov/fd_extraction_error
* MessageHeaderURICS#http://nchs.cdc.gov/birth_extraction_error
* ^experimental = false

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