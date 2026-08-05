
The MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that was coded. When processing coding responses this identifier must be used to associate the coding content with the message that was coded. This association ensures clarity when a death record is submitted or updated multiple times, and coding responses are delivered for a subset of these submissions.

The MessageHeader.eventURI should be set as follows:
* Death: http://nchs.cdc.gov/vrdr_industryoccupation_coding_update	
* Fetal Death: http://nchs.cdc.gov/fd_industryoccupation_coding_update	
* Birth: http://nchs.cdc.gov/birth_industryoccupation_coding_update

{% include markdown-link-references.md %}