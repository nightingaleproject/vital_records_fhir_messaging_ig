The ErrorMessage’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message for which an error is being reported. 
When processing error responses this identifier must be used to associate the errors with the message that they refer to. 
This association ensures clarity when a death record is submitted or updated multiple times, and error responses are delivered for a subset of these submissions.

For submissions to NCHS, the set of current error messages are listed and described [here](business_rules_death.html).
{% include markdown-link-references.md %}
