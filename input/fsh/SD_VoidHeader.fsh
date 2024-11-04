
ValueSet: VoidURIVS
Id: VRM-VOIDHeaderURI-vs
Title: "Void MessageHeader URI Values"
Description: "Void MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_void
* MessageHeaderURICS#http://nchs.cdc.gov/fd_submission_void
* MessageHeaderURICS#http://nchs.cdc.gov/birth_submission_void
* ^experimental = false

Profile:  VoidHeader
Parent: MessageHeader
Id: VRM-VoidHeader
Title:  "Void Header"
Description:   "Void Header for all submission types"
* eventUri from VoidURIVS (required)
* insert CommonHeaderStuff
