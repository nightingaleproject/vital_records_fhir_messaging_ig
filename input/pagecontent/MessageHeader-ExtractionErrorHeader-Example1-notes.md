```
Instance: ExtractionErrorHeader-Example1
InstanceOf: ExtractionErrorHeader
Title: "ExtractionErrorHeader-Example1"
Description: "Header for Extraction Error Message - Example"
Usage: #example
* eventUri = "http://nchs.cdc.gov/vrdr_extraction_error"
* response.code = #fatal-error
* response.identifier = "54a07cef-4bff-4bb0-8957-9c8fbf7390ed"
* response.details.reference = "OperationOutcome/Outcome-Example1"
* destination.endpoint = "https://sos.nh.gov/vitalrecords"
* source.endpoint = "http://nchs.cdc.gov/vrdr_submission"
* focus.reference = "Parameters/Parameters-Example1"
```