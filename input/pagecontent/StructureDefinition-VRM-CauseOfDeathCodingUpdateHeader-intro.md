
The CauseOfDeathCodingUpdate Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being coded. When processing acknowledgements this identifier must be used to associate the coded information with the message that is being coded. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:
* Death: http://nchs.cdc.gov/vrdr_causeofdeath_coding_update
* Fetal Death: http://nchs.cdc.gov/fd_causeofdeath_coding_update

{% include markdown-link-references.md %}