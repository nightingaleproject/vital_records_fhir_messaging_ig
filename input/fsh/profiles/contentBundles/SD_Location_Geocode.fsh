// ===============================================================
// Aliases (VRCL STU2 / v2.0.0)
// ===============================================================
Alias: $LocationVR = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Location-vr


// ===============================================================
// Vital record cert type (for Parameters.certType)
// ===============================================================
CodeSystem: VitalRecordCertTypeCS
Id: vital-record-cert-type
Title: "Vital Record Certificate Type"
Description: "Certificate type for vital records."
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #MOR "Mortality"
* #NAT "Natality"
* #FET "Fetal Death"

ValueSet: VitalRecordCertTypeVS
Id: vital-record-cert-type-vs
Title: "Vital Record Certificate Type ValueSet"
Description: "Allowed certificate types for vital record keys."
* ^status = #draft
* include codes from system VitalRecordCertTypeCS


// ===============================================================
// ESRI Address Type codes (Addr_Type) for the ESRI geocode extension
// ===============================================================
CodeSystem: GeocodeAddrTypeCS
Id: geocode-addr-type-cs
Title: "Geocode Address Type"
Description: "Address type / match type returned by an ESRI/ArcGIS geocoder."
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* #SubAddress       "Sub address"
* #PointAddress     "Point Address"
* #Parcel           "Parcel"
* #StreetAddress    "Street Address"
* #StreetInt        "Street Intersection"
* #StreetAddressExt "Street Address Extension"
* #POI              "Point of Interest"
* #DistanceMarker   "Distance Marker"
* #StreetMidBlock   "Street Mid-Block"
* #StreetName       "Street Name"
* #PostalExtension  "Postal Extension"
* #Postal           "Postal"
* #PostalLocation   "Postal Location"
* #Locality         "Locality"

ValueSet: GeocodeAddrTypeVS
Id: geocode-addr-type-vs
Title: "Geocode Address Type ValueSet"
Description: "Allowed Addr_Type values for ESRI/ArcGIS geocoding results."
* ^status = #draft
* include codes from system GeocodeAddrTypeCS


// ===============================================================
// Extension: ESRI geocode result metadata (on Location)
// ===============================================================
Extension: GeocodeResultVR
Id: geocode-result-vr
Title: "Geocode Result (Vital Records)"
Description: "ArcGIS/ESRI geocoding result metadata captured alongside a VRCL Location-vr address."
* ^status = #draft
* ^context[0].type = #element
* ^context[0].expression = "Location"

* value[x] 0..0

* extension contains
    addrType           0..1 MS and
    poiOrLocalityName  0..1 MS and
    score              0..1 MS and
    matchAddr          0..1 MS and
    longLabel          0..1 MS and
    placeAddr          0..1 MS and
    regionName         0..1 MS and
    country3           0..1 MS and
    tractGeoid         0..1 MS and
    countyGeoid        0..1 MS and
    hqMatch            0..1 MS

* extension[addrType].value[x] only code
* extension[addrType].valueCode from GeocodeAddrTypeVS (required)

* extension[poiOrLocalityName].value[x] only string
* extension[score].value[x] only integer
* extension[matchAddr].value[x] only string
* extension[longLabel].value[x] only string
* extension[placeAddr].value[x] only string
* extension[regionName].value[x] only string

// Keep ESRI's 3-letter country string when needed (e.g., "USA")
* extension[country3].value[x] only string

// GEOIDs as strings to preserve leading zeros
* extension[tractGeoid].value[x] only string
* extension[countyGeoid].value[x] only string

* extension[hqMatch].value[x] only boolean


// ===============================================================
// Profile: Location-vr + ESRI geocode extension
// ===============================================================
Profile: GeocodedLocationVr
Parent: $LocationVR
Id: geocoded-location-vr
Title: "Geocoded Location (VRCL Location-vr)"
Description: "VRCL Location-vr with ESRI/ArcGIS geocoding result metadata."

* ^status = #draft

* extension contains GeocodeResultVR named Geocode 0..1 MS

// Commonly populated elements
* status MS
* name MS
* address 1..1 MS
* address.line 1..* MS
* address.text MS
* address.city MS
* address.district MS
* address.state 1..1 MS
* address.postalCode MS
* address.country 1..1 MS
* position MS
* position.latitude MS
* position.longitude MS

// VRCL USPS address component slices (already defined by Location-vr)
* address.extension[predir] MS
* address.extension[stnum] MS
* address.extension[stname] MS
* address.extension[stdesig] MS
* address.extension[postdir] MS
* address.extension[unitnumber] MS

// VRCL NCHS numeric codes (primitive extension slices)
* address.city.extension[cityCode] MS
* address.district.extension[districtCode] MS

// VRCL jurisdiction-id extension slice on state (primitive extension slice)
* address.state.extension[nationalReportingJurisdictionId] MS


// ===============================================================
// Profile: Parameters carrying vital record key + reference to Location
// ===============================================================
Profile: VitalRecordGeocodeParameters
Parent: Parameters
Id: vital-record-geocode-parameters
Title: "Vital Record Geocode Parameters"
Description: "Carries vital-record certificate key fields and a reference to an ESRI geocoded Location (VRCL-based)."
* ^status = #draft

* parameter 5..* MS

* parameter ^slicing.discriminator[0].type = #value
* parameter ^slicing.discriminator[0].path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slice Parameters.parameter by parameter.name"

* parameter contains
    certYear         1..1 MS and
    jurisdictionId   1..1 MS and
    certNum          1..1 MS and
    certType         1..1 MS and
    geocodedLocation 1..1 MS

* parameter[certYear].name = "certYear"
* parameter[certYear].value[x] 1..1
* parameter[certYear].value[x] only date
* parameter[certYear].resource 0..0

* parameter[jurisdictionId].name = "jurisdictionId"
* parameter[jurisdictionId].value[x] 1..1
* parameter[jurisdictionId].value[x] only string
* parameter[jurisdictionId].resource 0..0

* parameter[certNum].name = "certNum"
* parameter[certNum].value[x] 1..1
* parameter[certNum].value[x] only string
* parameter[certNum].resource 0..0

* parameter[certType].name = "certType"
* parameter[certType].value[x] 1..1
* parameter[certType].value[x] only code
* parameter[certType].valueCode from VitalRecordCertTypeVS (required)
* parameter[certType].resource 0..0

* parameter[geocodedLocation].name = "geocodedLocation"
* parameter[geocodedLocation].value[x] 1..1
* parameter[geocodedLocation].value[x] only Reference
* parameter[geocodedLocation].valueReference only Reference(GeocodedLocationVr)
* parameter[geocodedLocation].resource 0..0


// ===============================================================
// Profile: Bundle “type” that includes both Parameters + Location
// ===============================================================
Profile: VitalRecordGeocodeBundle
Parent: Bundle
Id: vital-record-geocode-bundle
Title: "Vital Record Geocode Bundle"
Description: "A collection Bundle that packages one Parameters resource and one ESRI geocoded Location resource."
* ^status = #draft

* type 1..1
* type = #collection

* entry 2..2 MS
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS

// Slice entries by resource type
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #closed

* entry contains
    params   1..1 MS and
    location 1..1 MS

* entry[params].resource only VitalRecordGeocodeParameters
* entry[location].resource only GeocodedLocationVr


