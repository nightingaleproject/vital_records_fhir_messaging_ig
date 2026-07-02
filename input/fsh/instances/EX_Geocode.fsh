// ===============================================================
// Example Location instance (VRCL-aligned + ESRI metadata)
// ===============================================================
Instance: ExampleGeocodedLocationVr
InstanceOf: GeocodedLocationVr
Usage: #example
Title: "Example Geocoded Location (VRCL)"
Description: "Example Location with VRCL USPS components and ESRI geocode result metadata."

* id = "locGeocode"
* status = #active
* name = "275 N Main St NW (Geocoded)"

* address.line[0] = "275 N Main St NW"
* address.line[1] = "Apt 2B"
* address.city = "Atlanta"
* address.district = "Fulton County"
* address.state = "GA"
* address.postalCode = "30333"
* address.country = "US"
* address.text = "275 N Main St NW Apt 2B, Atlanta, GA 30333, US"

// VRCL USPS components (extensions on Address)
* address.extension[stnum].valueString = "275"
* address.extension[predir].valueString = "N"
* address.extension[stname].valueString = "Main"
* address.extension[stdesig].valueString = "St"
* address.extension[postdir].valueString = "NW"
* address.extension[unitnumber].valueString = "Apt 2B"

// VRCL numeric codes (extensions on primitive city/district)
// NOTE: placeholders; replace with real NCHS codes if available.
* address.city.extension[cityCode].valuePositiveInt = 99999
* address.district.extension[districtCode].valuePositiveInt = 13121

* position.latitude = 33.748997
* position.longitude = -84.387985

// ESRI geocode result metadata
* extension[Geocode].extension[addrType].valueCode = #PointAddress
* extension[Geocode].extension[score].valueInteger = 99
* extension[Geocode].extension[matchAddr].valueString = "275 N MAIN ST NW, ATLANTA, GA 30333"
* extension[Geocode].extension[longLabel].valueString = "275 N Main St NW, Atlanta, GA 30333, USA"
* extension[Geocode].extension[placeAddr].valueString = "275 N Main St NW., Atlanta, Georgia"
* extension[Geocode].extension[regionName].valueString = "Georgia"
* extension[Geocode].extension[country3].valueString = "USA"
* extension[Geocode].extension[tractGeoid].valueString = "13121008700"
* extension[Geocode].extension[countyGeoid].valueString = "13121"
* extension[Geocode].extension[hqMatch].valueBoolean = true


// ===============================================================
// Example Parameters instance (vital record key + reference to Location)
// ===============================================================
Instance: ExampleVitalRecordGeocodeParameters
InstanceOf: VitalRecordGeocodeParameters
Usage: #example
Title: "Example Vital Record Geocode Parameters"
Description: "Example Parameters with certificate key fields and a reference to the geocoded Location."

* id = "paramGeocode"

* parameter[certYear].name = "certYear"
* parameter[certYear].valueDate = "2022"

* parameter[jurisdictionId].name = "jurisdictionId"
* parameter[jurisdictionId].valueString = "CT"

* parameter[certNum].name = "certNum"
* parameter[certNum].valueString = "000123"

* parameter[certType].name = "certType"
* parameter[certType].valueCode = #MOR

* parameter[geocodedLocation].name = "geocodedLocation"
* parameter[geocodedLocation].valueReference = Reference(Location/loc1)

// ===============================================================
// Example Geocode Header
// ===============================================================
Instance: ExampleGeocodeCodedHeader
InstanceOf: GeocodeCodedHeader
Usage: #example
Title: "Example Geocode Coded Header"
Description: "Example MessageHeader for a vital record geocode coded response."

* id = "headerGeocode"

// Pick one URI from GeocodeURIVS.
// Mortality / VRDR geocode example:
* eventUri = "http://nchs.cdc.gov/vrdr_geocode"

// Optional but useful display/routing metadata.
// Replace these placeholder endpoints with your actual sender/receiver endpoints.
* destination[0].name = "Jurisdiction Vital Records System"
* destination[0].endpoint = "http://example.org/fhir/jurisdiction-vr"

* source.name = "NCHS Geocoding Service"
* source.software = "Vital Records Geocoding Service"
* source.version = "1.0.0"
* source.endpoint = "http://nchs.cdc.gov/fhir/geocode"

// Logical sender/receiver. These can be References to actual Organization resources
// if you include those Organizations in the Bundle.
* sender.display = "NCHS"
* destination[0].receiver.display = "Jurisdiction Vital Records System"

// HeaderResponseID appears to make this a response-style MessageHeader.
// response.identifier should be the MessageHeader.id of the original record message
// that is being coded.
* response.identifier = "record-message-123"
* response.code = #ok

// Focus can point to the geocode payload resources in the same Bundle.
// If your profile later constrains focus only Reference(Bundle), replace these
// with a single Reference(Bundle/your-content-bundle-id).
* focus[0] = Reference(http://www.example.org/fhir/Parameters/paramGeocode)
* focus[1] = Reference(http://www.example.org/fhir/Location/locGeocode)

// ===============================================================
// Example Bundle instance (contains Parameters + Location + Header)
// ===============================================================
Instance: ExampleVitalRecordGeocodeBundle
InstanceOf: VitalRecordGeocodeBundle
Usage: #example
Title: "Example Vital Record Geocode Bundle"
Description: "Collection Bundle packaging the coded header, Parameters, and geocoded Location."

* id = "GeocodeBundle"
* type = #Message

* entry[header].fullUrl = "http://www.example.org/fhir/Header/headerGeocode"
* entry[header].resource = ExampleGeocodeCodedHeader

* entry[params].fullUrl = "http://www.example.org/fhir/Parameters/paramGeocode"
* entry[params].resource = ExampleVitalRecordGeocodeParameters

* entry[location].fullUrl = "http://www.example.org/fhir/Location/locGeocode"
* entry[location].resource = ExampleGeocodedLocationVr