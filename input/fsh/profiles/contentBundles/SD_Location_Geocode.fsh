// -------------------------------------------------------------------
// Aliases
// -------------------------------------------------------------------
Alias: $USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location

// Standard HL7 address-part extensions (iso21090 ADXP)
Alias: $adxpHouseNumNumeric = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumberNumeric
Alias: $adxpDirection       = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-direction
Alias: $adxpStreetNameBase  = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase
Alias: $adxpStreetNameType  = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType
Alias: $adxpUnitType        = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-unitType
Alias: $adxpUnitId          = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-unitID
Alias: $adxpCensusTract     = http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract


// -------------------------------------------------------------------
// CodeSystems / ValueSets for your coded fields
// -------------------------------------------------------------------
CodeSystem: VitalRecordCertTypeCS
Id: vital-record-cert-type
Title: "Vital Record Certificate Type"
Description: "Certificate type for vital records."
* #MOR "Mortality"
* #NAT "Natality"
* #FET "Fetal Death"

ValueSet: VitalRecordCertTypeVS
Id: vital-record-cert-type-vs
Title: "Vital Record Certificate Type ValueSet"
* include codes from system VitalRecordCertTypeCS


CodeSystem: NCHSGeocodeAddrTypeCS
Id: nchs-geocode-addr-type
Title: "NCHS/ESRI Geocode Address Type"
Description: "Addr_Type values from the NCHS geocoding output."
* #SubAddress "Sub address"
* #PointAddress "Point Address"
* #Parcel "Parcel"
* #StreetAddress "Street Address"
* #StreetInt "Street Intersection"
* #StreetAddressExt "Street Address Extension"
* #POI "Point of Interest"
* #DistanceMarker "Distance Marker"
* #StreetMidBlock "Street Mid-Block"
* #StreetName "Street Name"
* #PostalExtension "Postal Extension"
* #Postal "Postal"
* #PostalLocation "Postal Location"
* #Locality "Locality"

ValueSet: NCHSGeocodeAddrTypeVS
Id: nchs-geocode-addr-type-vs
Title: "NCHS/ESRI Geocode Address Type ValueSet"
* include codes from system NCHSGeocodeAddrTypeCS


// -------------------------------------------------------------------
// Extension: NCHSGeocode (complex extension on Location)
// -------------------------------------------------------------------
Extension: NCHSGeocode
Id: nchs-geocode
Title: "NCHS/ESRI Geocode Metadata"
Description: "Geocoding metadata such as address type, match score, matched address strings, and GEOIDs."
* ^context[0].type = #element
* ^context[0].expression = "Location"

* extension contains
    addrType          0..1 MS and
    poiOrLocalityName 0..1 MS and
    matchScore        0..1 MS and
    matchAddr         0..1 MS and
    longLabel         0..1 MS and
    placeAddr         0..1 MS and
    tractGeoid        0..1 MS and
    countyGeoid       0..1 MS and
    hqMatch           0..1 MS

* extension[addrType].value[x] only code
* extension[addrType].valueCode from NCHSGeocodeAddrTypeVS (required)

* extension[poiOrLocalityName].value[x] only string
* extension[matchScore].value[x] only integer
* extension[matchAddr].value[x] only string
* extension[longLabel].value[x] only string
* extension[placeAddr].value[x] only string
* extension[tractGeoid].value[x] only string
* extension[countyGeoid].value[x] only string
* extension[hqMatch].value[x] only boolean


// -------------------------------------------------------------------
// Profile: NCHSGeocodedLocation (US Core Location + geocode extension)
// NOTE: No "vitalRecordKey" extension anymore.
// -------------------------------------------------------------------
Profile: NCHSGeocodedLocation
Parent: $USCoreLocation
Id: nchs-geocoded-location
Title: "NCHS Geocoded Location (US Core)"
Description: "A US Core Location constrained to carry NCHS/ESRI geocoding outputs."

* address 1..1 MS
* address.line 1..* MS
* address.city 0..1 MS
* address.district 0..1 MS
* address.state 0..1 MS
* address.postalCode 0..1 MS
* address.country 0..1 MS
* address.text 0..1 MS

* position 0..1 MS

* extension contains
    NCHSGeocode named geocode 0..1 MS

// Allow (and flag) address-part extensions on each Address.line element:
* address.line.extension contains
    $adxpHouseNumNumeric named houseNumberNumeric 0..1 MS and
    $adxpDirection      named direction        0..2 MS and
    $adxpStreetNameBase named streetNameBase   0..1 MS and
    $adxpStreetNameType named streetNameType   0..1 MS and
    $adxpUnitType       named unitType         0..1 MS and
    $adxpUnitId         named unitId           0..1 MS and
    $adxpCensusTract    named censusTract      0..1 MS


// -------------------------------------------------------------------
// Profile: Parameters carrying the vital record key fields + the Location
// (This replaces the old "vitalRecordKey" extension approach.)
// -------------------------------------------------------------------
Profile: NCHSVitalRecordKeyParameters
Parent: Parameters
Id: nchs-vital-record-key-parameters
Title: "NCHS Vital Record Key Parameters"
Description: "A Parameters resource that carries vital record certificate key fields and the associated geocoded Location resource."

* parameter 5..* MS

* parameter ^slicing.discriminator[0].type = #value
* parameter ^slicing.discriminator[0].path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.ordered = false

* parameter contains
    certYear       1..1 MS and
    jurisdictionId 1..1 MS and
    certNum        1..1 MS and
    certType       1..1 MS and
    location       1..1 MS

// certYear
* parameter[certYear].name 1..1
* parameter[certYear].name = "certYear"
* parameter[certYear].value[x] 1..1
* parameter[certYear].value[x] only date
* parameter[certYear].resource 0..0

// jurisdictionId
* parameter[jurisdictionId].name 1..1
* parameter[jurisdictionId].name = "jurisdictionId"
* parameter[jurisdictionId].value[x] 1..1
* parameter[jurisdictionId].value[x] only string
* parameter[jurisdictionId].resource 0..0

// certNum (string to preserve leading zeros)
* parameter[certNum].name 1..1
* parameter[certNum].name = "certNum"
* parameter[certNum].value[x] 1..1
* parameter[certNum].value[x] only string
* parameter[certNum].resource 0..0

// certType
* parameter[certType].name 1..1
* parameter[certType].name = "certType"
* parameter[certType].value[x] 1..1
* parameter[certType].value[x] only code
* parameter[certType].valueCode from VitalRecordCertTypeVS (required)
* parameter[certType].resource 0..0

// location (embedded resource, profiled)
* parameter[location].name 1..1
* parameter[location].name = "location"
* parameter[location].value[x] 0..0
* parameter[location].resource 1..1
* parameter[location].resource only NCHSGeocodedLocation