



// Profile:  DemographicsCodingUpdateHeader
// Parent: MessageHeader
// Id: VRM-DemographicsCodingUpdateHeader
// Title:  "Demographics Coding Update Header"
// Description:   "Demographics Coding Update Header"
// * insert RequireMetaProfile(DemographicsCodingUpdateHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding_update (exactly)
// * insert CommonHeaderStuff
// * insert HeaderResponseID
// * response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference( Bundle )

// Profile:  FetalDeathReportHeader
// Parent: MessageHeader
// Description:   "Fetal Death Message Report Message Header"
// Id: VRM-FetalDeathReportHeader
// Title:  "Fetal Death Report Message Header"
// * insert RequireMetaProfile(FetalDeathReportHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_death (exactly)
// * insert CommonHeaderStuff

// Profile:  FetalDeathReportUpdateHeader
// Parent: MessageHeader
// Description:   "Fetal Death Report Message Update Header"
// Id: VRM-FetalDeathReportUpdateHeader
// Title:  "Fetal Death Report Message Update Header"
// * insert RequireMetaProfile(FetalDeathReportUpdateHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_death_update (exactly)
// * insert CommonHeaderStuff

// Profile:  BirthReportHeader
// Parent: MessageHeader
// Description:   "Birth Report Message Header"
// Id: VRM-BirthReportHeader
// Title:  "Birth Report Message Header"
// * insert RequireMetaProfile(BirthReportHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_birth (exactly) 
// * insert CommonHeaderStuff

// Profile:  BirthReportUpdateHeader
// Parent: MessageHeader
// Description:   "Birth Report Message Update Header"
// Id: VRM-BirthReportUpdateHeader
// Title:  "Birth Report Message Update Header"
// * insert RequireMetaProfile(BirthReportUpdateHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_birth_update (exactly)
// * insert CommonHeaderStuff



// Profile:  ParentalDemographicsCodingHeader
// Parent: MessageHeader
// Description:   "Parental Demographics Message Header"
// Id: VRM-ParentalDemographicsCodingHeader
// Title:  "Parental Demographics Message Header"
// * insert RequireMetaProfile(ParentalDemographicsCodingHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_demographics_coding (exactly)
// * insert CommonHeaderStuff
// * insert HeaderResponseID
// * response.identifier ^short = "The value of the MessageHeader.id for the Birth or Fetal Death Record message that is being coded"

// Profile: ParentalDemographicsCodingUpdateHeader
// Parent: MessageHeader
// Description:   "Parental Demographics Message Update Header"
// Id: VRM-ParentalDemographicsCodingUpdateHeader
// Title:  "Parental Demographics Message Update Header"
// * insert RequireMetaProfile(ParentalDemographicsCodingUpdateHeader)
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_demographics_coding_update (exactly)
// * insert CommonHeaderStuff
// * insert HeaderResponseID
// * response.identifier ^short = "The value of the MessageHeader.id for the Birth or Fetal Death Record message that is being coded"
