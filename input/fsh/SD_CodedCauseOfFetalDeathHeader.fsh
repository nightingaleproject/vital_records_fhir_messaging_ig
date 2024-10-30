// // These are only used for Birth


// Profile:  CodedCauseOfFetalDeathHeader
// Parent: MessageHeader
// Description:   "Coded Cause of Fetal Death Report Message Header"
// Id: VRM-CodedCauseOfFetalDeathHeader
// Title:  "Coded Cause of Fetal Death Report Message Header"
// * insert RequireMetaProfile(CodedCauseOfFetalDeathHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_causeofdeath (exactly)
// * insert CommonHeaderStuff
// * insert HeaderResponseID
// * response.identifier ^short = "The value of the MessageHeader.id for the Fetal Death Record message that is being coded"

// Profile:  CodedCauseOfFetalDeathUpdateHeader
// Parent: MessageHeader
// Description:   "Coded Cause of Fetal Death Report Message Update Header"
// Id: VRM-CodedCauseOfFetalDeathUpdateHeader
// Title:  "Coded Cause of Fetal Death Report Message Update Header"
// * insert RequireMetaProfile(CodedCauseOfFetalDeathUpdateHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_causeofdeath_update (exactly)
// * insert CommonHeaderStuff
// * insert HeaderResponseID
// * response.identifier ^short = "The value of the MessageHeader.id for the Fetal Death Record message that is being coded"