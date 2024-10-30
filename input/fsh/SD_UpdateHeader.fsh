ValueSet: UpdateURIVS
Id: VRM-UpdateHeaderURI-vs
Title: "Update MessageHeader URI Values"
Description: "Update MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_update
* MessageHeaderURICS#http://nchs.cdc.gov/fd_submission_update 
* MessageHeaderURICS#http://nchs.cdc.gov/birth_submission_update


Profile:  UpdateHeader
Parent: MessageHeader
Id: VRM-UpdateHeader
Description:   "Message Update Header"
Title:  "Message Update Header"
* eventUri from UpdateURIVS (required )
* insert CommonHeaderStuff
