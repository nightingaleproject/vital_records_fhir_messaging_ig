
The ExtractionError Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message on which errors are being reported. When processing acknowledgements this identifier must be used to associate the extraction errors with the message that is being acknowledged. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:
* Death: http://nchs.cdc.gov/vrdr_extraction_error
* Fetal Death: http://nchs.cdc.gov/fd_extraction_error
* Birth: http://nchs.cdc.gov/birth_extraction_error


{% include markdown-link-references.md %}