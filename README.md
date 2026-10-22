# Vital Records FHIR Messaging FHIR Implementation Guide


Vital records jurisdictions submit information on deaths and births in their jurisdiction to the U.S. National Center for Health Statistics (NCHS). For each submission, NCHS codes all causes of death, races, and ethnicities and returns the information to the submitter.

The [Vital Records Death Reporting (VRDR)](https://hl7.org/fhir/us/vrdr/) and [Birth and Fetal Death (BFDR)](https://hl7.org/fhir/us/bfdr/) specify how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. They do not specify how such data is exchanged nor how the coding information is represented and returned to the submitter.  

[FHIR Messaging](https://hl7.org/fhir/messaging.html) defines how to use FHIR in a message exchange scenario. This document describes the use of FHIR Messaging for:

1. Submission of vital records documents (birth, death, and fetal death) from vital records jurisdictions to NCHS, and
2. Return of coded content (e.g., causes of death, race and ethnicity, industry and occupation) information from NCHS to vital records jurisdictions.

## Relationship to Previous Work
This FHIR Implementation Guide supersedes a previous description of the Vital Records FHIR Messaging interface that can be found [here](https://github.com/nightingaleproject/vital_records_fhir_messaging).  All maintenance of content since November 2021 is taking place in this document only.

## Browsing the FHIR Implementation Guide
The built version 3.0.0 of this implementation guide [here](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/).  The source for this Implementation Guide is found on [github](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig).

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

- Create a new branch in the repository.
- Make the necessary edits on the branch to create the new content for the IG.
- Use SUSHI and the IG Publisher to build the IG. Resolve all errors, warnings, and informational messages. Run SUSHI and the IG Publisher again to ensure the IG is error-free.
- Copy all content from the output folder, excluding the .zip and .tgz files.
- Navigate to the gh-pages branch of the repository.
- Within the docs directory, create a new folder named after the version you want to publish (e.g., if you’d like to publish version 3.0.0, name the directory “v3.0.0”). 
- Paste the copied content from the output folder into the newly created docs/<version number> directory.
- Open the docs/index.html file and update it to include the new version you want displayed. Remove references to versions you no longer want displayed. The docs/index.html file drives the content for this page.
- Commit and push your changes to GitHub.

## License

Copyright 2021 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
```
http://www.apache.org/licenses/LICENSE-2.0
```
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
