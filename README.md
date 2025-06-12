# Vital Records FHIR Messaging FHIR Implementation Guide


Vital records jurisdictions submit information on deaths and births in their jurisdiction to the U.S. National Center for Health Statistics (NCHS). For each submission, NCHS codes all causes of death, races, and ethnicities and returns the information to the submitter.

The [Vital Records Death Reporting (VRDR)](https://hl7.org/fhir/us/vrdr/) and [Birth and Fetal Death (BFDR)](https://hl7.org/fhir/us/bfdr/) specify how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. They do not specify how such data is exchanged nor how the coding information is represented and returned to the submitter.  

[FHIR Messaging](https://hl7.org/fhir/messaging.html) defines how to use FHIR in a message exchange scenario. This document describes the use of FHIR Messaging for:

1. Submission of vital records documents (birth, death, and fetal death) from vital records jurisdictions to NCHS, and
2. Return of coded content (e.g., causes of death, race and ethnicity, industry and occupation) information from NCHS to vital records jurisdictions.

## Relationship to Previous Work
This FHIR Implementation Guide supersedes a previous description of the Vital Records FHIR Messaging interface that can be found [here](https://github.com/nightingaleproject/vital_records_fhir_messaging).  All maintenance of content since November 2021 is taking place in this document only.

## Browsing the FHIR Implementation Guide
The built version 2.0.0 of this implementation guide [here](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/).  The source for this Implementation Guide is found on [github](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig).

Questions or comments regarding this document should be directed to the ["Death on FHIR" zulip stream](https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR)[^1]. This document will continue to evolve in response to community feedback as well as changes to the VRDR IG, BFDR IG, or business requirements.

[^1]: https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR


## Generating the IG

This repository contains [FHIR Short Hand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) descriptions for the VRDR messages, and relies on the [SUSHI tool](https://github.com/FHIR/sushi) to process the FSH files. Use the following to generate JSON definitions for the IG.

```shell
[user@host ~/vital_records_fhir_messaging]$ sushi
```

To generate the full Implementation Guide content, use the IG Publisher to generate the content in the output folder.
```shell
[user@host ~/vital_records_fhir_messaging]$ ./_genonce.sh
```
## Publishing the IG

This IG is published via [Github pages](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/).  The process steps to publish a new version of the IG are:

- Create a new branch of the repo
- Edit on the branch to create the new content
- Build the IG using sushi and the IG publisher and correct all errors and serious warnings.  This produces content in the output folder.
- Make a copy of all content from the output folder exclusive of zip, tgz, and other large files.
- checkout the gh-pages branch of the repo
- copy the generated IG content to the docs/\<version number\> directory.  So, for version v3.1.4, the content would live in docs/v3.1.4.
- edit the docs/index.html so that the published versions you want displayed are included, and those you don't want displayed are removed
- commit and push the changes to github 


## License

Copyright 2021 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
```
http://www.apache.org/licenses/LICENSE-2.0
```
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
