# Home - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ImplementationGuide/vital-records-fhir-messaging | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:VitalRecordsFHIRMessagingIG |

#### CI Build for Future v3.0.0 Version of VRFM

The version of VRFM in production use by NCHS and Jurisdictional Vital Records Offices for exchange of death records is [VRFM 1.0.1](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/v1.0.1/index.html).

This preview of v3.0.0 of VRFM adds support for exchange of birth and fetal death records, coded industry and occupation messages, maternal linkage, and enhanced acknowledgements.

See the [change log](change_log.md) for an updated list of changes.

### Background

Vital records jurisdictions submit information on deaths and births in their jurisdiction to the U.S. National Center for Health Statistics (NCHS). For each submission, NCHS codes all causes of death, races, and ethnicities and returns the information to the submitter.

The [Vital Records Death Reporting (VRDR)](https://hl7.org/fhir/us/vrdr/) and [Birth and Fetal Death (BFDR)](https://hl7.org/fhir/us/bfdr/) specify how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. They do not specify how such data is exchanged nor how the coding information is represented and returned to the submitter.

[FHIR Messaging](https://hl7.org/fhir/messaging.html) defines how to use FHIR in a message exchange scenario. This document describes the use of FHIR Messaging for:

1. Submission of vital records documents (birth, death, and fetal death) from vital records jurisdictions to NCHS, and
1. Return of coded content (e.g., causes of death, race and ethnicity, industry and occupation) information from NCHS to vital records jurisdictions.

This implementation guide is agnostic about the format of the content of the messages. The NCHS established business rules for the submission of birth, death, and fetal death records can be found in this IG.

This FHIR Implementation Guide supersedes a previous description of the Vital Records FHIR Messaging interface that can be found [here](https://github.com/nightingaleproject/vital_records_fhir_messaging). All maintenance of content since November 2021 is taking place in this document only and is managed via [GitHub](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig).

This document will evolve in response to community feedback as well as changes to the VRDR and BFDR IGs or business requirements. NCHS may decide, at its sole discretion, to transition this content into a FHIR Implementation Guide under HL7 auspices. This initial version of this IG under NCHS auspices is an initial step towards modernization of the exchange of Vital records data. The content with the highest value for secondary use has been included in VRCL, BFDR and VRDR.

### Requirements

#### Asynchrony

While the majority of submissions can be coded automatically, some will require nosologist intervention for manual coding. This will require asynchrony between submission and the return of coding information.

#### Death and Birth Report Submission

Vital records jurisdictions need a mechanism to submit VRDR Death Certificate Documents and BFDR Birth Certificate Documents to NCHS. Vital records jurisdictions should not be required to wait for a death report or birth report submission to be acknowledged or coded before submitting additional reports, as there may be many outstanding report submissions at any time.

Vital records jurisdictions need a mechanism to update VRDR Death Certificate Documents and BFDR Birth Certificate Doucments previously submitted to NCHS. This should not rely on patient matching algorithms, but instead use embedded identifiers for record correlation.

Vital records jurisdictions need a mechanism to void a single or a block of certificates. Voiding may target previously submitted documents or may be used to inform NCHS that a specific set of certificate numbers will not be used in the future.

#### Coding Response

NCHS needs a mechanism to send coded causes of death, as well as coded race and ethnicity information to vital records jurisdictions in response to receipt of a VRDR Death Certificate Document or BFDR Birth Certificate Document. NCHS also needs a mechanism to update previously-sent coding information. Causes of death codings may be sent separately from race and ethnicity codings. Updates to either may also be sent separately.

For a death record submission, the underlying cause of death along with contributing causes of death are coded along two axes: record and entity. Each [Cause Of Death Condition] resource in the submitted [VRDR Death Certificate Document] may result in multiple codes as described in the [current TRANSAX format](https://www.cdc.gov/nchs/data/dvs/2003trx.pdf).

The race and ethnicity information in the submitted birth/death documents can result in multiple race and ethnicity codes in the coding response. The structure of the information returned is described in [NCHS Procedures for Multiple-Race and Hispanic Origin Data: Collection, Coding, Editing, and Transmitting](https://www.cdc.gov/nchs/data/dvs/Multiple_race_documentation_5-10-04.pdf).

#### Delivery Status

Vital records jurisdictions need a mechanism to determine that submissions to NCHS, such as VRDR Death Certificate Documents, were successfully received by NCHS. NCHS needs a mechanism to determine that data returned to vital records jurisdictions, such as causes of death coding and race and ethnicity coding, were successfully received by vital records jurisdictions.

#### Reliability

NCHS and vital records jurisdictions need a mechanism to automatically recover from messages that are lost during exchange in either direction.

#### Error Reporting

NCHS needs a mechanism to report errors to vital records jurisdictions in response to receipt of VRDR Death Certificate Documents and BFDR Birth Certificate Documents that could not be processed. Vital records jurisdictions need a mechanism to report errors to NCHS in response to coded causes of death, race, and ethnicity that could not be processed.

### FHIR Messaging

As described earlier, the [Vital Records Death Reporting (VRDR)](https://hl7.org/fhir/us/vrdr/) and [Birth and Fetal Death (BFDR)](https://hl7.org/fhir/us/bfdr/) specify how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. The specific versions used in production and testing are described in the [Implementation Notes](ImplementationNotes.md) page. However, it does not specify the mechanism that is used to exchange those FHIR documents, nor how the coded response is represented and returned to the submitter. This document describes the use of FHIR Messaging to accomplish this essential function. [FHIR Messaging](https://hl7.org/fhir/messaging.html) defines:

1. A standard[MessageHeader](https://hl7.org/fhir/messageheader.html)resource that captures common message metadata including
* An id that is useful for correlating requests and replies.
* Source and sender information that is useful for addressing replies.
* Destination information that is useful for routing. This can be used to route messages to NCHS and/or jurisdiction exchange via STEVE.
* Event information that is useful for capturing the reason that a message was created.
* Information about the subject or topic of the message that is useful for providing context.

1. Patterns for synchronous and asynchronous exchange of messages.
1. A standard FHIR process message operation and an alternate pattern for exchange of messages using the FHIR REST API for messaging.
1. A pattern for reliable message exchange over unreliable channels.

The remainder of this document describes how these capabilities can be applied to submission of death records and birth records to NCHS and the return of coded cause of death, race and ethnicity information to vital records jurisdictions.

### High Level Architecture of a FHIR Messaging Based NVSS

Figure 1: High level architecture
 

Figure 1 illustrates the high-level components of a FHIR messaging based NVSS, using death record submission as an example.

* **Death Registration System**: Jurisdiction systems that process death records
* **FHIR Adaptor**: Functionality to convert between native data formats and FHIR representations of that data
* **FHIR Messaging Infrastructure**: Functionality to: 
* Package payloads in FHIR messages
* Send and receive FHIR messages
* Extract payloads from FHIR messages
* Acknowledge receipt of FHIR messages
* Report errors if FHIR messages are malformed
 
* **NVSS**: NCHS systems for processing and coding death reports
* **FHIR VRDR**: A FHIR document formatted according to the [Vital Record Death Reporting (VRDR) FHIR IG](https://hl7.org/fhir/us/vrdr/index.html)
* **FHIR Coding or Error**: A FHIR representation of either: 
* Causes of death coding, races and ethnicities coding, or both
* An error that occurred when processing a FHIR message or its contents
 

The flow of information is illustrated using numbered steps as follows:

1. A jurisdiction death registration system generates a death report that is mapped to a FHIR VRDR document by a FHIR adaptor and submitted to the FHIR messaging infrastructure for delivery to NCHS.
1. The FHIR messaging infrastructure wraps the VRDR document in a FHIR message and sends it to the NCHS FHIR messaging infrastructure.
1. The NCHS FHIR messaging infrastructure validates the syntax of the received FHIR message and extracts the VRDR document. The NCHS FHIR messaging infrastructure does one of:
* Acknowledges the message in the case that the VRDR document could be extracted successfully, or
* Reports an error in the case that the VRDR document could not be extracted successfully.

1. The NCHS FHIR messaging infrastructure submits the VRDR document to NVSS for processing. The NVSS FHIR adaptor converts the VRDR document into the desired internal format for processing.
1. NVSS analyzes the death report:
* If the death report can be processed, NVSS will generate two coding responses: one for the cause of death and one for the decedent race and ethnicity. ^[Cause of death coding occurs separate from the race and ethnicity coding. The coding responses are delivered separately.]
* If the death report cannot be processed, NVSS generates an error report response.
* In either case the NVSS FHIR adaptor maps the response to FHIR and submits it to the NCHS FHIR messaging infrastructure for delivery.

1. The NCHS FHIR messaging infrastructure wraps the response in a FHIR message and sends it to the jurisdiction FHIR messaging infrastructure.
1. The jurisdiction FHIR messaging infrastructure acknowledges the coded response or error report
1. The jurisdiction FHIR messaging infrastructure unwraps the content of the message and submits it to the jurisdiction death registration system whose FHIR adaptor converts it into the required internal format for processing.

The above sequence describes the general process for exchange of information between vital records jurisdictions and NCHS.

Note that the FHIR messaging infrastructure is logically separated from both NVSS and jurisdiction death registration systems and it is this system that provides reliable delivery of death/birth reports and coded responses (or errors) between jurisdictions and NVSS. The mechanics of reliable delivery (acknowledgements and retransmissions) are largely hidden from NVSS and jurisdiction death/birth registration systems.

### Changes Since the Initial (PDF) Version of This Guide

1. Coding and Coding Update messages have been split into Demographics (Race and Ethnicity) coding messages and Cause of Death messages.
1. All fields that are sent to jurisdictions as MRE or TRX messages are now sent as part of coding messages. These include some fields that are sent from EDRS to NCHS (so-called 'regurgigated fields').
1. Field names that are named and documented as part of the IJE, MRE, and/or TRX documentation have the same names and encodings in this guide. Please refer to the below-referenced documentation.

### CDC NCHS Documentation

* [2022 Mortality Data reference](https://r20.rs6.net/tn.jsp?f=001u-eBMBj0UGlhPdHxUU_w_MafJMX_8rYmjFZga3pBUoUhwcUSSzMK5lw-ncpe9c1_OCJdI66kcNI-ILEyJKT9ILqF6v3RMIxQHe-k9-IYCzq96MQmC3sO0FgIOhAgnvf_zF7l6N4k8lCQjzRnFuzO-UmCFtlHJpOYd3fjY2Cw2StY-TA-wVQOw320Sj_WyhIuq2H9GPAtpsuuBkomxjl6jizGiL_Ql0yOwjp-cUjTOTA=&c=hrGtL9tmvJ1DKGpbzqPuF3KvUpFVK0qchygyr7StLU1Sluvl9ZBcLg==&ch=hptEZrbFDWPJdXxXwQsrUk7F-lUko-MpszM6NS4g8yVkg29mqPQHXA==)
* [NCHS Instruction Manual part 8](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)
* SuperMicar documentation([PDF](https://www.cdc.gov/nchs/data/dvs/2003s10.pdf), [XLS](https://www.cdc.gov/nchs/data/dvs/2003_May16.xls))
* [NCHS Procedures for Multiple-Race and Hispanic Origin Data: Collection, Coding, Editing, and Transmitting](https://www.cdc.gov/nchs/data/dvs/Multiple_race_documentation_5-10-04.pdf)

#### Bulk Submissions

While the message exchange patterns included in this document focus on individual message exchanges, it would be possible to batch messages together to reduce the number of transfers. E.g. a single transfer from a vital records jurisdiction to NCHS could batch together a set of death record submissions, and acknowledgements for previously received coding response messages. On receipt, NVSS could process each individual message in the batch and create a new batch to return to the jurisdiction.

### Understanding this Guide

The Vital Records FHIR Messaging Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the unlikely event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Contributions

Nightingale is an open source project and welcomes all contributors. The source code for this IG is maintained in the [Nightingale Github](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig). Instead of just suggesting a change, consider creating a branch, making the change, and submitting a pull request. All of our profiling work is done in [FHIR Shorthand](https://hl7.org/fhir/uv/shorthand/) and all narrative content in markdown (specifically, [Kramdown](https://kramdown.gettalong.org/)). We suggest using the [Visual Studio Code editor](https://code.visualstudio.com/) with the [FHIR Shorthand plug-in](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh). For more information on how to get started with IG development, visit the [FSH School](https://fshschool.org/).

### Credits

This IG is based on the [FHIR Messaging for NVSS](https://github.com/nightingaleproject/vital_records_fhir_messaging/releases/download/v3.1.0/fhir_messaging_for_nvss.pdf) authored by Marc Hadley (MITRE). The data element descriptions in that document have now been captured as a FHIR specification in this guide, which incorporates all of the content from the original guide. Both the original document and this Implementation Guide were developed by the MITRE corporation under contract to the Division of Vital Statistics, National Center for Health Statistics, of the Centers for Disease Control.

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](https://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information

Questions or comments about this IG can be directed to ["Death on FHIR" zulip stream](https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR)[1](#fn:1) or the ["Birth and Fetal Death on FHIR" zulip stream](https://chat.fhir.org/#narrow/channel/253316-Vital-Records-Birth-.26-Fetal-Death).

1. https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR [↩](#fnref:1)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "vital-records-fhir-messaging",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ImplementationGuide/vital-records-fhir-messaging",
  "version" : "3.0.0-Preview1",
  "name" : "VitalRecordsFHIRMessagingIG",
  "title" : "Vital Records FHIR Messaging (VRFM) IG",
  "status" : "draft",
  "date" : "2025-11-25T14:04:25-05:00",
  "publisher" : "CDC NCHS",
  "contact" : [
    {
      "name" : "CDC NCHS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://cdc.gov/nchs"
        }
      ]
    }
  ],
  "packageId" : "vital-records-fhir-messaging",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_us_core",
      "uri" : "http://hl7.org/fhir/us/core/ImplementationGuide/hl7.fhir.us.core",
      "packageId" : "hl7.fhir.us.core",
      "version" : "5.0.1"
    },
    {
      "id" : "hl7_fhir_us_vr_common_library",
      "uri" : "http://hl7.org/fhir/us/vr-common-library/ImplementationGuide/hl7.fhir.us.vr-common-library",
      "packageId" : "hl7.fhir.us.vr-common-library",
      "version" : "current"
    },
    {
      "id" : "hl7_fhir_us_vrdr",
      "uri" : "http://hl7.org/fhir/us/vrdr/ImplementationGuide/hl7.fhir.us.vrdr",
      "packageId" : "hl7.fhir.us.vrdr",
      "version" : "current"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "version-comparison"
          },
          {
            "url" : "value",
            "valueString" : "n/a"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../exp-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
        "valueReference" : {
          "reference" : "Parameters/expansion-parameters"
        }
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2022+"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "ci-build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "show-inherited-invariants"
          },
          {
            "url" : "value",
            "valueString" : "false"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "version-comparison"
          },
          {
            "url" : "value",
            "valueString" : "n/a"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-expansion-params"
          },
          {
            "url" : "value",
            "valueString" : "../../exp-params.json"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "grouping" : [
      {
        "id" : "Messages",
        "name" : "Message Profiles",
        "description" : "Message Profiles"
      },
      {
        "id" : "Headers",
        "name" : "Message Header Profiles",
        "description" : "Message Header Profiles"
      },
      {
        "id" : "Parameters",
        "name" : "Message Parameter Profiles",
        "description" : "Message Parameter Profiles"
      },
      {
        "id" : "Outcomes",
        "name" : "Outcome Profiles"
      },
      {
        "id" : "CodeSystems",
        "name" : "Codesystems",
        "description" : "Codesystems"
      },
      {
        "id" : "MaternalLinkages",
        "name" : "Maternal Record Linkage Components",
        "description" : "Maternal Record Linkages"
      },
      {
        "id" : "MaternalLinkageMessages",
        "name" : "Maternal Record Linkage Messages",
        "description" : "Maternal Record Linkage Messages"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-AcknowledgementHeader"
        },
        "name" : "Acknowledgement Header",
        "description" : "Acknowledgement  Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-AcknowledgementMessage"
        },
        "name" : "Acknowledgement Message",
        "description" : "Acknowledgement Message",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-AcknowledgementHeaderURI-vs"
        },
        "name" : "Acknowledgement MessageHeader URI Values",
        "description" : "Acknowledgement MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/AcknowledgementHeader-Example1"
        },
        "name" : "AcknowledgementHeader-Example1",
        "description" : "Acknowledgement Header: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AcknowledgementHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/AcknowledgementHeader-Example2"
        },
        "name" : "AcknowledgementHeader-Example2",
        "description" : "Acknowledgement Header: Example with warnings",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AcknowledgementHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/AcknowledgementMessage-Example1"
        },
        "name" : "AcknowledgementMessage-Example1",
        "description" : "Acknowledgement message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AcknowledgementMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/AcknowledgementMessage-Example2"
        },
        "name" : "AcknowledgementMessage-Example2",
        "description" : "Acknowledgement message with warnings- Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AcknowledgementMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-AliasHeader"
        },
        "name" : "Alias Header",
        "description" : "Alias Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-AliasParameters"
        },
        "name" : "Alias Message Parameters",
        "description" : "Parameters for an Alias Message",
        "exampleBoolean" : false,
        "groupingId" : "Parameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/AliasHeader-Example1"
        },
        "name" : "AliasHeader-Example1",
        "description" : "Alias Message Header- Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/AliasParameters-Example1"
        },
        "name" : "AliasParameters-Example1",
        "description" : "Alias Message Parameters- Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-birth-record-identifier-child"
        },
        "name" : "Birth Record Identifier Child",
        "description" : "Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child.\r\nThe subject is implicitly the Decedent (mother), whose death was related to the to the birth referenced by the identifier.",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-BirthReportMessage"
        },
        "name" : "Birth Report Message",
        "description" : "Message for reporting birth records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-BirthReportUpdateMessage"
        },
        "name" : "Birth Report Update Message",
        "description" : "Message for updating birth records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BirthRecordIdentifierChild-Example1"
        },
        "name" : "BirthRecordIdentifierChild-Example1",
        "description" : "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BirthRecordIdentifierChild-Example2"
        },
        "name" : "BirthRecordIdentifierChild-Example2",
        "description" : "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BirthRecordIdentifierChild-ExtensiveExample1"
        },
        "name" : "BirthRecordIdentifierChild-ExtensiveExample1",
        "description" : "BirthRecordIdentifierChild-ExtensiveExample - identifier of the decedent's child's birth certificate number",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BirthRecordIdentifierChild-ExtensiveExample2"
        },
        "name" : "BirthRecordIdentifierChild-ExtensiveExample2",
        "description" : "BirthRecordIdentifierChild-ExtensiveExample1 - identifier of the decedent's child's birth certificate number",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/BirthRecordIdentifierChildNoCert-Example1"
        },
        "name" : "BirthRecordIdentifierChildNoCert-Example1",
        "description" : "BirthRecordIdentifierChildNoCert-Example1 - identifier of the decedent's child's birth certificate number",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/BirthReportHeader-Example1"
        },
        "name" : "BirthReportHeader-Example1",
        "description" : "Header for Birth Report Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/BirthReportMessage-Example1"
        },
        "name" : "BirthReportMessage-Example1",
        "description" : "Live Birth Report Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-BirthReportMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/BirthReportUpdateHeader-Example1"
        },
        "name" : "BirthReportUpdateHeader-Example1",
        "description" : "Header for Birth Report Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/BirthReportUpdateMessage-Example1"
        },
        "name" : "BirthReportUpdateMessage-Example1",
        "description" : "Live Birth Report Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-BirthReportUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CauseOfDeathCodingHeader"
        },
        "name" : "Cause of Death Coding Header",
        "description" : "Cause of Death Coding Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CauseOfDeathCodingMessage"
        },
        "name" : "Cause of Death Coding Message",
        "description" : "Message for cause of death coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-CauseOfDeathCodingHeaderURI-vs"
        },
        "name" : "Cause of Death Coding MessageHeader URI Values",
        "description" : "Cause of Death Coding MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader"
        },
        "name" : "Cause of Death Coding Update Header",
        "description" : "Cause of Death Coding Update Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CauseOfDeathCodingUpdateMessage"
        },
        "name" : "Cause Of Death Coding Update Message",
        "description" : "Message for updating Cause Of Death coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-CauseOfDeathCodingUpdateHeaderURI-vs"
        },
        "name" : "Cause of Death Coding Update MessageHeader URI Values",
        "description" : "Cause of Death Coding Update MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/CauseOfDeathCodingHeader-Example1"
        },
        "name" : "CauseOfDeathCodingHeader-Example1",
        "description" : "Header for Cause of Death Coding Message - Example1- coded content only",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/CauseOfDeathCodingMessage-Example1"
        },
        "name" : "CauseOfDeathCodingMessage-Example1",
        "description" : "Cause of death coding message - Example1 -- coded content only",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/CauseOfDeathCodingUpdateHeader-Example1"
        },
        "name" : "CauseOfDeathCodingUpdateHeader-Example1",
        "description" : "Header for Cause Of Death Coding Update Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/CauseOfDeathCodingUpdateMessage1"
        },
        "name" : "CauseOfDeathCodingUpdateMessage1",
        "description" : "Cause of Death Coding update message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-CertAvailable-vs"
        },
        "name" : "Certificate Available Values",
        "description" : "Certificate Available Values",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CodedCauseOfFetalDeathMessage"
        },
        "name" : "Coded Cause of Fetal Death Message",
        "description" : "Message for reporting coded cause of fetal death",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-CodedCauseOfFetalDeathUpdateMessage"
        },
        "name" : "Coded Cause of Fetal Death Update Message",
        "description" : "Message for updating coded cause of fetal death",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/CodedCauseOfFetalDeathHeader-Example1"
        },
        "name" : "CodedCauseOfFetalDeathHeader-Example1",
        "description" : "Header for Coded Cause of Fetal Death Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/CodedCauseOfFetalDeathMessage-Example1"
        },
        "name" : "CodedCauseOfFetalDeathMessage-Example1",
        "description" : "Coded Cause of Fetal Death Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CodedCauseOfFetalDeathMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/CodedCauseOfFetalDeathUpdateHeader-Example1"
        },
        "name" : "CodedCauseOfFetalDeathUpdateHeader-Example1",
        "description" : "Header for Coded Cause of Fetal Death Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/CodedCauseOfFetalDeathUpdateMessage-Example1"
        },
        "name" : "CodedCauseOfFetalDeathUpdateMessage-Example1",
        "description" : "Coded Cause of Fetal Death Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CodedCauseOfFetalDeathUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DeathRecordAliasMessage"
        },
        "name" : "Death Record Alias Message",
        "description" : "Message for aliasing death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DeathRecordSubmissionMessage"
        },
        "name" : "Death Record Submission Message",
        "description" : "Message for submitting death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DeathRecordUpdateMessage"
        },
        "name" : "Death Record Update Message",
        "description" : "Message for updating death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DeathRecordAliasMessage-Example1"
        },
        "name" : "DeathRecordAliasMessage-Example1",
        "description" : "Alias Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DeathRecordAliasMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/DeathRecordSubmissionHeaderExample1"
        },
        "name" : "DeathRecordSubmissionHeaderExample1",
        "description" : "Header for Death Record Submission - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DeathRecordSubmissionMessage-Example1"
        },
        "name" : "DeathRecordSubmissionMessage-Example1",
        "description" : "Submission mesage - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DeathRecordSubmissionMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-DemographicsCodingHeaderURI-vs"
        },
        "name" : "Demographics Coding  MessageHeader URI Values",
        "description" : "Demographics Coding  MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DemographicsCodingHeader"
        },
        "name" : "Demographics Coding Header",
        "description" : "Demographics Coding Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DemographicsCodingMessage"
        },
        "name" : "Demographics Coding Message",
        "description" : "Message for demographics coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DemographicsCodingUpdateHeader"
        },
        "name" : "Demographics Coding Update Header",
        "description" : "Demographics Coding Update Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-DemographicsCodingUpdateMessage"
        },
        "name" : "Demographics Coding Update Message",
        "description" : "Message for updating Demographics coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-DemographicsCodingUpdateHeaderURI-vs"
        },
        "name" : "Demographics Coding Update MessageHeader URI Values",
        "description" : "Demographics Coding Update MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/DemographicsCodingHeader-Example1"
        },
        "name" : "DemographicsCodingHeader-Example1",
        "description" : "Header for Demographic Coding Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DemographicsCodingMessage-Example1"
        },
        "name" : "DemographicsCodingMessage-Example1",
        "description" : "Cause of death coding message - Example1 -- coded content only",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/DemographicsCodingUpdateHeader-Example1"
        },
        "name" : "DemographicsCodingUpdateHeader-Example1",
        "description" : "Header for Demographic Coding Update Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingUpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DemographicsCodingUpdateMessage1"
        },
        "name" : "DemographicsCodingUpdateMessage1",
        "description" : "Demographic Coding update message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DummyBundle"
        },
        "name" : "DummyBundle",
        "description" : "Placeholder for all content sent in messages",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/DummyDeathBundle"
        },
        "name" : "DummyDeathBundle",
        "description" : "Placeholder for death record",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-ExtractionErrorHeader"
        },
        "name" : "Extraction Error Header",
        "description" : "Extraction Error Message Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-ExtractionErrorMessage"
        },
        "name" : "Extraction Error Message",
        "description" : "Message for Errors during content extraction",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-ExtractionErrorHeaderURI-vs"
        },
        "name" : "ExtractionError MessageHeader URI Values",
        "description" : "ExtractionError MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ExtractionErrorHeader-Example1"
        },
        "name" : "ExtractionErrorHeader-Example1",
        "description" : "Header for Extraction Error Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ExtractionErrorMessage-Example1"
        },
        "name" : "ExtractionErrorMessage-Example1",
        "description" : "Extraction error message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-fetal-death-record-identifier"
        },
        "name" : "Fetal Death Record Identifier",
        "description" : "Fetal Death Record Identifier (Observation).  For use in Maternal Death. This includes the fetal death record identifier, the jurisdiction, and the birth year.\r\nThe subject is implicitly the Decedent (mother), whose death was related to the fetal death referenced by the identifier.",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-FetalDeathReportMessage"
        },
        "name" : "Fetal Death Report Message",
        "description" : "Message for reporting fetal death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-FetalDeathReportUpdateMessage"
        },
        "name" : "Fetal Death Report Message",
        "description" : "Message for updating fetal death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifier-Example1"
        },
        "name" : "FetalDeathRecordIdentifier-Example1",
        "description" : "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifier-Example2"
        },
        "name" : "FetalDeathRecordIdentifier-Example2",
        "description" : "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifier-ExtensiveExample1"
        },
        "name" : "FetalDeathRecordIdentifier-ExtensiveExample1",
        "description" : "FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifier-ExtesnvieExample2"
        },
        "name" : "FetalDeathRecordIdentifier-ExtesnvieExample2",
        "description" : "FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record, certificate not available",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifierNoCert-Example3"
        },
        "name" : "FetalDeathRecordIdentifierNoCert-Example3",
        "description" : "FetalDeathRecordIdentifierNoCert-Example3 - missing identifier of the decedent's fetus's fetal death record",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/FetalDeathRecordIdentifierNoCert-Example4"
        },
        "name" : "FetalDeathRecordIdentifierNoCert-Example4",
        "description" : "FetalDeathRecordIdentifierNoCert-Example4 - certificate pending",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/FetalDeathReportHeader-Example1"
        },
        "name" : "FetalDeathReportHeader-Example1",
        "description" : "Header for Fetal Death Report Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/FetalDeathReportMessage-Example1"
        },
        "name" : "FetalDeathReportMessage-Example1",
        "description" : "Fetal Death Report Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-FetalDeathReportMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/FetalDeathReportUpdateHeader-Example1"
        },
        "name" : "FetalDeathReportUpdateHeader-Example1",
        "description" : "Header for Fetal Death Report Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/FetalDeathReportUpdateMessage-Example1"
        },
        "name" : "FetalDeathReportUpdateMessage-Example1",
        "description" : "Fetal Death Report Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-FetalDeathReportUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-IndustryOccupationHeaderURI-vs"
        },
        "name" : "Industry and Occupation MessageHeader URI Values",
        "description" : "Industry and Occupation MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-IndustryOccupationUpdateHeaderURI-vs"
        },
        "name" : "Industry and Occupation Update MessageHeader URI Values",
        "description" : "Industry and Occupation Update MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-IndustryOccupationCodingHeader"
        },
        "name" : "Industry Occupation Coding Header",
        "description" : "Industry Occupation Coding Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-IndustryOccupationCodingMessage"
        },
        "name" : "Industry Occupation Coding Message",
        "description" : "Message for industry occupation coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-IndustryOccupationCodingUpdateMessage"
        },
        "name" : "Industry Occupation Coding Update Message",
        "description" : "Message for updating industry occupation coding response to death records",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/IndustryOccupationCodingHeader-Example1"
        },
        "name" : "IndustryOccupationCodingHeader-Example1",
        "description" : "Header for Industry Occupation Coding Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/IndustryOccupationCodingMessage-Example1"
        },
        "name" : "IndustryOccupationCodingMessage-Example1",
        "description" : "Industry Occupation coding message - Example1 -- coded content only",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/IndustryOccupationCodingUpdateHeader-Example1"
        },
        "name" : "IndustryOccupationCodingUpdateHeader-Example1",
        "description" : "Header for Industry Occupation Coding Update Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/IndustryOccupationCodingUpdateMessage1"
        },
        "name" : "IndustryOccupationCodingUpdateMessage1",
        "description" : "Industry Occupation Coding update message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader"
        },
        "name" : "Industy Occupation Coding Update  Header",
        "description" : "Industry Occupation Coding Update Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/VRM-coded-pregnancy-status-cs"
        },
        "name" : "Local Coded Pregnancy Status",
        "description" : "Codesystem for pregnancy status for cases not covered by SNOMEDCT.",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/VRM-observation-cs"
        },
        "name" : "Local Observation Identifiers",
        "description" : "Codesystem for local observation identifiers.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-maternal-linkage-content-bundle"
        },
        "name" : "Maternal Linkage Content Bundle",
        "description" : "Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent.",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MaternalLinkageRequestMessage"
        },
        "name" : "Maternal Linkage Request Message",
        "description" : "Message for requesting maternal linkage",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkageMessages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MaternalLinkageRequestHeader"
        },
        "name" : "Maternal Linkage Request Message Header",
        "description" : "Maternal Linkage Request Header",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MaternalLinkageSubmissionMessage"
        },
        "name" : "Maternal Linkage Submission Message",
        "description" : "Message for submitting maternal linkage",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkageMessages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MaternalLinkageUpdateMessage"
        },
        "name" : "Maternal Linkage Update Message",
        "description" : "Message for update maternal linkage",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkageMessages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-Birth"
        },
        "name" : "MaternalLinkageBundle-Birth",
        "description" : "MaternalLinkageContentBundle-Birth",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-BirthNoCert"
        },
        "name" : "MaternalLinkageBundle-BirthNoCert",
        "description" : "MaternalLinkageContentBundle-Birth with no certificate",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-BirthPendingCert"
        },
        "name" : "MaternalLinkageBundle-BirthPendingCert",
        "description" : "MaternalLinkageContentBundle-Birth with pending certificate",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-EctopicPregnancy"
        },
        "name" : "MaternalLinkageBundle-EctopicPregnancy",
        "description" : "MaternalLinkageContentBundle-Ectopic Pregnancy",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert"
        },
        "name" : "MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert",
        "description" : "MaternalLinkageContentBundle-Plural Birth and Fetal Death with and without Certificates-extensive example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-FetalDeathWithCertPending"
        },
        "name" : "MaternalLinkageBundle-FetalDeathWithCertPending",
        "description" : "MaternalLinkageContentBundle-Fetal Death with Cert Pending",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert"
        },
        "name" : "MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert",
        "description" : "MaternalLinkageContentBundle-Plural Birth and Fetal Death with and without Certificates",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageBundle-PluralBirthWithCert"
        },
        "name" : "MaternalLinkageBundle-PluralBirthWithCert",
        "description" : "MaternalLinkageContentBundle-Pural Birth with certificate",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/MaternalLinkageRequestHeaderExample1"
        },
        "name" : "MaternalLinkageRequestHeaderExample1",
        "description" : "Header for Maternal Linkage Request - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageRequestMessage-Example1"
        },
        "name" : "MaternalLinkageRequestMessage-Example1",
        "description" : "Maternal Linkage Request Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/MaternalLinkageSubmissionHeaderExample1"
        },
        "name" : "MaternalLinkageSubmissionHeaderExample1",
        "description" : "Header for Maternal Linkage Submission - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageSubmissionMessage-Example1"
        },
        "name" : "MaternalLinkageSubmissionMessage-Example1",
        "description" : "Submission mesdage - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageSubmissionMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/MaternalLinkageUpdateHeaderExample1"
        },
        "name" : "MaternalLinkageUpdateHeaderExample1",
        "description" : "Header for Maternal Linkage Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/MaternalLinkageUpdateMessage-Example1"
        },
        "name" : "MaternalLinkageUpdateMessage-Example1",
        "description" : "Update mesdage - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MessageParameters"
        },
        "name" : "Message Parameters",
        "description" : "Parameter set for most Messages.  Parameters with all-caps names are defined as per the 2022 IJE specification.",
        "exampleBoolean" : false,
        "groupingId" : "Parameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-UpdateHeader"
        },
        "name" : "Message Update Header",
        "description" : "Message Update Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/VRM-MessageHeaderURI-cs"
        },
        "name" : "MessageHeader URI Values",
        "description" : "MessageHeader URI Values",
        "exampleBoolean" : false,
        "groupingId" : "CodeSystems"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-Outcome"
        },
        "name" : "Outcome Profile",
        "description" : "Outcome profile to support profile-based slicing of bundles",
        "exampleBoolean" : false,
        "groupingId" : "Outcomes"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Outcome-Example1"
        },
        "name" : "Outcome-Example1",
        "description" : "Extraction Error Outcome - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "OperationOutcome"
          }
        ],
        "reference" : {
          "reference" : "OperationOutcome/Outcome-Example2"
        },
        "name" : "Outcome-Example2",
        "description" : "Extraction Warning Outcome - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/Parameters-Example1"
        },
        "name" : "Parameters-Example1",
        "description" : "Parameters for Submission: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersBirth-Example1"
        },
        "name" : "ParametersBirth-Example1",
        "description" : "Parameters for Submission: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersDeathExample1"
        },
        "name" : "ParametersDeathExample1",
        "description" : "Parameters for Submission: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersFD-Example2"
        },
        "name" : "ParametersFD-Example2",
        "description" : "Parameters for Submission: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-EctopicPregnancy"
        },
        "name" : "ParametersLinkage-EctopicPregnancy",
        "description" : "RecentPregnancyParameters - EctopicPregnancy",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-Extensive-PluralBirthAndFetalDeath"
        },
        "name" : "ParametersLinkage-Extensive-PluralBirthAndFetalDeath",
        "description" : "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert - extensive example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-FetalDeathWithCertPending"
        },
        "name" : "ParametersLinkage-FetalDeathWithCertPending",
        "description" : "RecentPregnancyParameters - FetalDeathWithCertificatePending",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-LiveBirthWithCert"
        },
        "name" : "ParametersLinkage-LiveBirthWithCert",
        "description" : "RecentPregnancyParameters - LiveBirthWithCert",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-LiveBirthWithoutCert"
        },
        "name" : "ParametersLinkage-LiveBirthWithoutCert",
        "description" : "RecentPregnancyParameters - LiveBirthWithOutCert",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-LiveBirthWithPendingCert"
        },
        "name" : "ParametersLinkage-LiveBirthWithPendingCert",
        "description" : "RecentPregnancyParameters - LiveBirthWithPendingCert",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-PluralBirthAndFetalDeath"
        },
        "name" : "ParametersLinkage-PluralBirthAndFetalDeath",
        "description" : "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/ParametersLinkage-PluralBirthWithCert"
        },
        "name" : "ParametersLinkage-PluralBirthWithCert",
        "description" : "RecentPregnancyParameters - PluralBirthWithCert",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ParentalDemographicsCodingHeader-Example1"
        },
        "name" : "ParentalDemographicsCodingHeader-Example1",
        "description" : "Header for Parental Demographics Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ParentalDemographicsCodingMessage-Example1"
        },
        "name" : "ParentalDemographicsCodingMessage-Example1",
        "description" : "Parental Demographics Message - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/ParentalDemographicsCodingUpdateHeader-Example1"
        },
        "name" : "ParentalDemographicsCodingUpdateHeader-Example1",
        "description" : "Header for Parental Demographics Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingUpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/ParentalDemographicsCodingUpdateMessage-Example1"
        },
        "name" : "ParentalDemographicsCodingUpdateMessage-Example1",
        "description" : "Parental Demographics Message Update - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/Payload-version-vs"
        },
        "name" : "Payload Version Identifier Values",
        "description" : "Payload Version Identifier Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/Payload-version-cs"
        },
        "name" : "Payload Version Identifier Values",
        "description" : "Codesystem for Payload Version Identifier Values. Only versions that are in production use are listed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-MessageBundle"
        },
        "name" : "Placeholder Profile for profile-based slicing",
        "description" : "Placeholder for profile-based slicing",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-PregnancyOutcomes-vs"
        },
        "name" : "Pregnancy Outcome Values",
        "description" : "Pregnancy Outcome Values",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-RecentPregnancyParameters"
        },
        "name" : "Recent Pregnancy Parameters",
        "description" : "Parameter for most recent pregnancy during year before decease.",
        "exampleBoolean" : false,
        "groupingId" : "MaternalLinkages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-RequestHeaderURI-vs"
        },
        "name" : "Request MessageHeader URI Values",
        "description" : "Request MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-Status-vs"
        },
        "name" : "Status Codes Values",
        "description" : "Status Codes Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/VRM-Status-cs"
        },
        "name" : "Status Codes Values",
        "description" : "Status Codes Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-StatusHeader"
        },
        "name" : "Status Header",
        "description" : "Status Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-StatusMessage"
        },
        "name" : "Status Message",
        "description" : "Message for sending status of DeathRecord processing",
        "exampleBoolean" : false,
        "groupingId" : "Messages"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-StatusParameters"
        },
        "name" : "Status Message Parameters",
        "description" : "Parameters for a Status Message",
        "exampleBoolean" : false,
        "groupingId" : "Parameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-StatusHeaderURI-vs"
        },
        "name" : "Status MessageHeader URI Values",
        "description" : "Status MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/StatusHeader-Example1"
        },
        "name" : "StatusHeader-Example1",
        "description" : "Parameters for Status: Example1",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-StatusHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/StatusMessage-Example1"
        },
        "name" : "StatusMessage-Example1",
        "description" : "Status message - Example1",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-StatusMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/StatusParameters-Example1"
        },
        "name" : "StatusParameters-Example1",
        "description" : "Parameters for Status: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-StatusParameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-SubmissionHeader"
        },
        "name" : "Submission Message Header",
        "description" : "Message Submission Header",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-SubmissionHeaderURI-vs"
        },
        "name" : "Submission MessageHeader URI Values",
        "description" : "Submission MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/SubmissionHeader-Example1"
        },
        "name" : "SubmissionHeader-Example1",
        "description" : "Header for Submission - Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-UpdateHeaderURI-vs"
        },
        "name" : "Update MessageHeader URI Values",
        "description" : "Update MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/UpdateHeader-Example1"
        },
        "name" : "UpdateHeader-Example1",
        "description" : "Header for Update: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/UpdateMessage-Example1"
        },
        "name" : "UpdateMessage-Example1",
        "description" : "Update message - example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DeathRecordUpdateMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-VoidHeader"
        },
        "name" : "Void Header",
        "description" : "Void Header for all submission types",
        "exampleBoolean" : false,
        "groupingId" : "Headers"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-VoidMessage"
        },
        "name" : "Void Message (for mortality, birth, and fetal death)",
        "description" : "Message for voiding mortality, birth, and fetal death records.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/VRM-VoidParameters"
        },
        "name" : "Void Message Parameters",
        "description" : "Parameters for a Void Message",
        "exampleBoolean" : false,
        "groupingId" : "Parameters"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/VRM-VOIDHeaderURI-vs"
        },
        "name" : "Void MessageHeader URI Values",
        "description" : "Void MessageHeader URI Values",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "MessageHeader"
          }
        ],
        "reference" : {
          "reference" : "MessageHeader/VoidHeader-Example1"
        },
        "name" : "VoidHeader-Example1",
        "description" : "Parameters for Void: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-VoidHeader"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Bundle"
          }
        ],
        "reference" : {
          "reference" : "Bundle/VoidMessage-Example1"
        },
        "name" : "VoidMessage-Example1",
        "description" : "Void message - example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-VoidMessage"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Parameters"
          }
        ],
        "reference" : {
          "reference" : "Parameters/VoidParameters-Example1"
        },
        "name" : "VoidParameters-Example1",
        "description" : "Parameters for Void: Example",
        "exampleCanonical" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-VoidParameters"
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "message.html"
            }
          ],
          "nameUrl" : "message.html",
          "title" : "Messages",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "artifacts.html"
            }
          ],
          "nameUrl" : "artifacts.html",
          "title" : "Artifacts Summary",
          "generation" : "html"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "downloads.html"
            }
          ],
          "nameUrl" : "downloads.html",
          "title" : "Download Specification",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "change_log.html"
            }
          ],
          "nameUrl" : "change_log.html",
          "title" : "Change Log",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "appendix.html"
            }
          ],
          "nameUrl" : "appendix.html",
          "title" : "Appendices",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "june2022testingeventexamples.html"
            }
          ],
          "nameUrl" : "june2022testingeventexamples.html",
          "title" : "June 2022 Testing Event Examples",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "business_rules_death.html"
            }
          ],
          "nameUrl" : "business_rules_death.html",
          "title" : "Business Rules for Death Record Submissions",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "business_rules_birth.html"
            }
          ],
          "nameUrl" : "business_rules_birth.html",
          "title" : "Business Rules for Birth Record Submissions",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "business_rules_maternal_linkage.html"
            }
          ],
          "nameUrl" : "business_rules_maternal_linkage.html",
          "title" : "Business Rules for Maternal Linkages",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "ImplementationNotes.html"
            }
          ],
          "nameUrl" : "ImplementationNotes.html",
          "title" : "NCHS FHIR Implementation Notes",
          "generation" : "markdown"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "maternallinkage.html"
            }
          ],
          "nameUrl" : "maternallinkage.html",
          "title" : "Maternal Linkage Records for Mortality",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
