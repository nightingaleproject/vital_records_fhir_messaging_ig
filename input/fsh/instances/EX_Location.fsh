Instance: ExampleNCHSGeocodedLocation
InstanceOf: NCHSGeocodedLocation
Usage: #example
Title: "Example NCHS Geocoded Location"
Description: "Example Location with NCHS/ESRI geocoding fields."

* status = #active
* name = "275 Columbus Ave (Geocoded)"

* address.line[0] = "275 Columbus Ave"
* address.line[1] = "Apt 2B"
* address.city = "New York"
* address.district = "New York County"
* address.state = "NY"
* address.postalCode = "10023"
* address.country = "USA"
* address.text = "275 Columbus Ave, Apt 2B, New York, NY 10023, USA"

* position.latitude = 40.730610
* position.longitude = -73.935242

// Address-part extensions (iso21090 ADXP)
* address.line[0].extension[houseNumberNumeric].valueString = "275"
* address.line[0].extension[streetNameBase].valueString = "Columbus"
* address.line[0].extension[streetNameType].valueString = "Ave"
* address.line[1].extension[unitType].valueString = "Apt"
* address.line[1].extension[unitId].valueString = "2B"
* address.line[0].extension[censusTract].valueString = "36061017500"

// Geocode metadata extension
* extension[geocode].extension[addrType].valueCode = #PointAddress
* extension[geocode].extension[matchScore].valueInteger = 98
* extension[geocode].extension[matchAddr].valueString = "275 COLUMBUS AVE, NEW YORK, NY 10023"
* extension[geocode].extension[longLabel].valueString = "275 Columbus Ave, New York, New York, 10023"
* extension[geocode].extension[placeAddr].valueString = "275 Columbus Ave., New York, New York"
* extension[geocode].extension[tractGeoid].valueString = "36061017500"
* extension[geocode].extension[countyGeoid].valueString = "36061"
* extension[geocode].extension[hqMatch].valueBoolean = true