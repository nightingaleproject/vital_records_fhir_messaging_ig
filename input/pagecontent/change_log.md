### Changes
* Added Alias Message based on input from Veronique, Krynn, and Aaina in February 2021
* Changed canonical URL to http://cdc.gov/nchs/nvss/fhir/vital-records-messaging
* All messages use the same basic parameter structure.  Not sure this was the case previously.
* The IG temporarily includes a definition of the VRDR death certificate document and an example.  Once the VRDR IG stabilizes and includes some necessary value sets (e.g., jurisdiction) these will be referenced, not included.
* Layered Architecture drawing needs to be modified to include alias messages.

### Discussion Points
* Binding of race and ethnicity parameters.   Currently bound to https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf and https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf .  Should probably be bound to the same value sets as the USCore race and ethnicity detail fields. Should these be strings (current) or codeable concepts (preferred).
* Need to review all codesystems defined in this IG
* Review new Alias message

{% include markdown-link-references.md %}
