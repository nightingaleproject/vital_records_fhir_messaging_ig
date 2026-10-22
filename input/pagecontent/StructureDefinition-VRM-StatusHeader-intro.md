
The StatusHeader's MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message for which status is being provided.  When processing acknowledgements this identifier must be used to associate the acknowledgement with the message for which status is being provided.


The MessageHeader.eventURI should be set as follows:
* Death: http://nchs.cdc.gov/vrdr_status
* Fetal Death: http://nchs.cdc.gov/fd_status
* Birth: http://nchs.cdc.gov/birth_status

{% include markdown-link-references.md %}