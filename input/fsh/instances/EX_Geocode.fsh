// ===============================================================
// Example Location instance (VRCL-aligned + ESRI metadata)
// ===============================================================
Instance: ExampleGeocodedLocationVr
InstanceOf: GeocodedLocationVr
Usage: #example
Title: "Example Geocoded Location (VRCL)"
Description: "Example Location with VRCL USPS components and ESRI geocode result metadata."

* id = "loc1"
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

* id = "params1"

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
// Example Bundle instance (contains BOTH Parameters + Location)
// ===============================================================
Instance: ExampleVitalRecordGeocodeBundle
InstanceOf: VitalRecordGeocodeBundle
Usage: #example
Title: "Example Vital Record Geocode Bundle"
Description: "Collection Bundle packaging the Parameters and the geocoded Location."

* id = "bundle1"
* type = #collection

* entry[params].fullUrl = "Parameters/params1"
* entry[params].resource = ExampleVitalRecordGeocodeParameters

* entry[location].fullUrl = "Location/loc1"
* entry[location].resource = ExampleGeocodedLocationVr