
The Acknowledgement Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being acknowledged. When processing acknowledgements this identifier must be used to associate the acknowledgement with the message that is being acknowledged. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:
* Death: http://nchs.cdc.gov/vrdr_acknowledgement
* Fetal Death: http://nchs.cdc.gov/fd_acknowledgement
* Birth: http://nchs.cdc.gov/birth_acknowledgement


{% include markdown-link-references.md %}