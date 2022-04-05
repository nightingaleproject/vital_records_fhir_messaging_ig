### Changes
* Added Alias Message based on input from Veronique, Krynn, and Aaina in February 2021
* Changed canonical URL to http://cdc.gov/nchs/nvss/fhir/vital-records-messaging
* All messages use the same basic parameter structure.  Not sure this was the case previously.
* Added Status Message to (initially) report back that a deathrecord will be manually coded.

### Discussion Points
* Binding of race and ethnicity parameters.   Currently bound to https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf and https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf .  Should probably be bound to the same value sets as the USCore race and ethnicity detail fields. Should these be strings (current) or codeable concepts (preferred).
* Need to review all codesystems defined in this IG
* Review new Alias message

{% include markdown-link-references.md %}
