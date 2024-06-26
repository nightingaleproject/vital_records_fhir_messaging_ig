# Vital Records FHIR Messaging FHIR Implementation Guide

Implementers can reference the built version 1.0.1 of this implementation guide [here](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/v1.0.1/index.html).

Vital records jurisdictions submit information on deaths in their jurisdiction to the U.S. National Center for Health Statistics (NCHS). For each submission, NCHS codes all causes of death, races, and ethnicities and returns the information to the submitter.

The [Vital Records Death Reporting (VRDR) FHIR IG](http://hl7.org/fhir/us/vrdr/) specifies how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. It does not specify how such data is exchanged nor how the coding information is represented and returned to the submitter.

[FHIR Messaging](http://hl7.org/fhir/messaging.html) defines how to use FHIR in a message exchange scenario. This document describes the use of FHIR Messaging for:

1. Submission of VRDR documents from vital records jurisdictions to NCHS, and
2. Return of coded causes of death, race, and ethnicity information from NCHS to vital records jurisdictions.

## Relationship to Previous Work
This FHIR Implementation Guide supersedes a previous description of the Vital Records FHIR Messaging interface that can be found [here](https://github.com/nightingaleproject/vital_records_fhir_messaging).  All maintenance of content since November 2021 is taking place in this document only.

## Browsing the FHIR Implementation Guide
The built version of this FHIR Implementation Guide can be found [here](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/).

Questions or comments regarding this document should be directed to the ["Death on FHIR" zulip stream](https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR)[^1]. This document will continue to evolve in response to community feedback as well as changes to the VRDR IG or business requirements.

[^1]: https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR


## Generating the IG

This repository contains [FHIR Short Hand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/) descriptions for the VRDR messages, and relies on the [SUSHI tool](https://github.com/FHIR/sushi) to process the FSH files. Use the following to generate JSON definitions for the IG.

```shell
[user@host ~/vital_records_fhir_messaging]$ sushi
```

# Generating .NET Implementation

Ruby scripts included here enable generating C# classes to support working with IG-compliant FHIR messages. This is currently implemented in two stages. After generating IG JSON using SUSHI, use `parameters.rb` to extract the relevant properties to a JSON file, and `accessors.rb` to generate the C# class from that file. The output is written to the stdout, so it should be redirected to a file if necessary. The following example will generate a `Parameters.cs` file in the local directory (along with the intermediate JSON file):

```shell
[user@host ~/vital_records_fhir_messaging]$ sushi
[user@host ~/vital_records_fhir_messaging]$ ruby ./parameters.rb ./fsh-generated/resources ./
[user@host ~/vital_records_fhir_messaging]$ ruby ./accessors.rb ./parameters.json > ./Parameters.cs
```

## License

Copyright 2021 The MITRE Corporation

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
```
http://www.apache.org/licenses/LICENSE-2.0
```
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
