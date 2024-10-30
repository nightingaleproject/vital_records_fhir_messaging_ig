ValueSet: StatusURIVS
Id: VRM-StatusHeaderURI-vs
Title: "Status MessageHeader URI Values"
Description: "Status MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_status 
* MessageHeaderURICS#http://nchs.cdc.gov/fd_status 
* MessageHeaderURICS#http://nchs.cdc.gov/birth_status 

Profile:  StatusHeader
Parent: MessageHeader
Id: VRM-StatusHeader
Title:  "Status Header"
Description:   "Status Header"
* eventUri from StatusURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message for which status is provided"
* focus only Reference(StatusParameters )
