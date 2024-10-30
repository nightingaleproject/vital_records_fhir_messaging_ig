ValueSet: SubmissionURIVS
Id: VRM-SubmissionHeaderURI-vs
Title: "Submission MessageHeader URI Values"
Description: "Submission MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission 
* MessageHeaderURICS#http://nchs.cdc.gov/fd_submission 
* MessageHeaderURICS#http://nchs.cdc.gov/birth_submission 

Profile:  SubmissionHeader
Parent: MessageHeader
Description:   "Message Submission Header"
Id: VRM-SubmissionHeader
Title:  "Submission Message Header"
* eventUri from SubmissionURIVS (required)
* insert CommonHeaderStuff
