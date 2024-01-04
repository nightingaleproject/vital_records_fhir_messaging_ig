<style>

  .note-to-readers::before {
  white-space: pre;
  content: "Note to Readers\A ";
  background-color: yellow;
  color: red;
  font-weight: bold;
  }

  .note-to-readers {
      margin: 5px;
      padding: 10px;
      border-left-style: solid;
      background-color: #fff2ff;
      border-left-color: #ffa0ff;
  }

</style>

<div class="note-to-readers" markdown="1">

####  CI Build for Future v2.0.0 Version of VRFM

The version of VRFM in production use by NCHS and Jurisdictional Vital Records Offices is [VRFM 1.0.0](https://nightingaleproject.github.io/vital_records_fhir_messaging_ig/v1.0.0/index.html).


See the [change log](change_log.html) for an updated list of changes.
  
</div><!-- note-to-balloters -->

### Background

Vital records jurisdictions submit information on deaths in their jurisdiction to the U.S. National Center for Health Statistics (NCHS). For each submission, NCHS codes all causes of death, races, and ethnicities and returns the information to the submitter.

The [Vital Records Death Reporting (VRDR) STU2 FHIR IG](https://build.fhir.org/ig/HL7/vrdr/index.html) specifies how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. It does not specify how such data is exchanged nor how the coding information is represented and returned to the submitter.

[FHIR Messaging](https://hl7.org/fhir/messaging.html) defines how to use FHIR in a message exchange scenario. This document describes the use of FHIR Messaging for:

1. Submission of VRDR documents from vital records jurisdictions to NCHS, and
2. Return of coded causes of death, race, and ethnicity information from NCHS to vital records jurisdictions.

This FHIR Implementation Guide supersedes a previous description of the Vital Records FHIR Messaging interface that can be found [here](https://github.com/nightingaleproject/vital_records_fhir_messaging).  All maintenance of content since November 2021 is taking place in this document only and is managed via [github](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig).

This document will evolve in response to community feedback as well as changes to the VRDR IG or business requirements.  NCHS may decide, at its sole discretion, to transition this content into a FHIR Implementation Guide under HL7 auspices.  This initial version of this IG under NCHS auspices is an initial step towards modernization of the exchange of Vital records data.  The content with the highest value for secondary use has been included in an Vital Records Death Reporting FHIR Implementation Guide[^2].


[^1]: https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR
[^2]: https://build.fhir.org/ig/HL7/

### Requirements

#### Asynchrony

While the majority of submissions can be coded automatically, some will require nosologist intervention for manual coding. This will require asynchrony between submission and the return of coding information.

#### Death Report Submission

Vital records jurisdictions need a mechanism to submit VRDR Death Certificate Documents to NCHS. Vital records jurisdictions should not be required to wait for a death report submission to be acknowledged or coded before submitting additional death reports, there may be many outstanding death report submissions at any time.

Vital records jurisdictions need a mechanism to update VRDR Death Certificate Documents previously submitted to NCHS and this should not rely on patient matching algorithms but instead use embedded identifiers for record correlation.

Vital records jurisdictions need a mechanism to void a single or a block of death certificates. Voiding may target previously submitted documents or may be used to inform NCHS that a specific set of certificate numbers will not be used in the future.

#### Coding Response

NCHS needs a mechanism to send coded causes of death as well as coded race and ethnicity information to vital records jurisdictions in response to receipt of a VRDR Death Certificate Document. NCHS also needs a mechanism to update previously-sent coding information. Causes of death codings may be sent separately from race and ethnicity codings. Updates to either may also be sent separately.

The underlying cause of death along with contributing causes of death are coded along two axes: record and entity. Each [Cause Of Death Condition] resource in the submitted [VRDR Death Certificate Document] may result in multiple codes as described in the [current TRANSAX format](https://www.cdc.gov/nchs/data/dvs/2003trx.pdf).

The race and ethnicity information in the submitted [VRDR Death Certificate Document] can result in multiple race and ethnicity codes in the coding response. The structure of the information returned is described in [NCHS Procedures for Multiple-Race and Hispanic Origin Data: Collection, Coding, Editing, and Transmitting](https://www.cdc.gov/nchs/data/dvs/Multiple_race_documentation_5-10-04.pdf).

#### Delivery Status

Vital records jurisdictions need a mechanism to determine that submissions to NCHS, such as VRDR Death Certificate Documents, were successfully received by NCHS. NCHS needs a mechanism to determine that data returned to vital records jurisdictions, such as causes of death coding and race and ethnicity coding, were successfully received by vital records jurisdictions.

#### Reliability

NCHS and vital records jurisdictions need a mechanism to automatically recover from messages that are lost during exchange in either direction.

#### Error Reporting

NCHS needs a mechanism to report errors to vital records jurisdictions in response to receipt of VRDR Death Certificate Documents that could not be processed. Vital records jurisdictions need a mechanism to report errors to NCHS in response to coded causes of death, race, and ethnicity that could not be processed.

### FHIR Messaging

As described earlier, the [Vital Record Death Reporting (VRDR)STU2 FHIR IG](https://build.fhir.org/ig/HL7/vrdr/index.html) specifies how to represent the information sent from vital records jurisdictions to NCHS using FHIR documents. However, it does not specify the mechanism that is used to exchange those FHIR documents, nor how the coded response is represented and returned to the submitter. This document describes the use of FHIR Messaging to accomplish this essential function. [FHIR Messaging](https://hl7.org/fhir/messaging.html) defines:

1. A standard [MessageHeader](https://hl7.org/fhir/messageheader.html) resource that captures common message metadata including
  * An id that is useful for correlating requests and replies.
  * Source and sender information that is useful for addressing replies.
  * Destination information that is useful for routing. This can be used to route messages to NCHS and/or jurisdiction exchange via STEVE.
  * Event information that is useful for capturing the reason that a message was created.
  * Information about the subject or topic of the message that is useful for providing context.

2. Patterns for synchronous and asynchronous exchange of messages.

3. A standard FHIR process message operation and an alternate pattern for exchange of messages using the FHIR REST API for messaging.

5. A pattern for reliable message exchange over unreliable channels.

The remainder of this document describes how these capabilities can be applied to submission of death records to NCHS and the return of coded cause of death, race and ethnicity information to vital records jurisdictions.

### High Level Architecture of a FHIR Messaging Based NVSS

<!-- ![High level architecture](images/LayeredArchitecture.png){ width=80% } -->
<figure style="align:middle">
    <img alt = "High level architecture" style="width:75%;height:auto;float:none;align:middle;" src="LayeredArchitecture.png"/>
    <figcaption style="bold">Figure 1: High level architecture</figcaption>
</figure>
&nbsp;

Figure 1 illustrates the high level components of a FHIR messaging based NVSS:

- __Death Registration System__: Jurisdiction systems that process death records

- __FHIR Adaptor__: Functionality to convert between native data formats and FHIR representations of that data

- __FHIR Messaging Infrastructure__: Functionality to:
  - Package payloads in FHIR messages
  - Send and receive FHIR messages
  - Extract payloads from FHIR messages
  - Acknowledge receipt of FHIR messages
  - Report errors if FHIR messages are malformed

- __NVSS__: NCHS systems for processing and coding death reports

- __FHIR VRDR__: A FHIR document formatted according to the [Vital Record Death Reporting (VRDR) FHIR IG](https://hl7.org/fhir/us/vrdr/index.html)

- __FHIR Coding or Error__: A FHIR representation of either:
  - Causes of death coding, races and ethnicities coding, or both
  - An error that occurred when processing a FHIR message or its contents

The flow of information is illustrated using numbered steps as follows:

1. A jurisdiction death registration system generates a death report that is mapped to a FHIR VRDR document by a FHIR adaptor and submitted to the FHIR messaging infrastructure for delivery to NCHS.

2. The FHIR messaging infrastructure wraps the VRDR document in a FHIR message and sends it to the NCHS FHIR messaging infrastructure.

3. The NCHS FHIR messaging infrastructure validates the syntax of the received FHIR message and extracts the VRDR document. The NCHS FHIR messaging infrastructure does one of:
    a. Acknowledges the message in the case that the VRDR document could be extracted successfully, or
    b. Reports an error in the case that the VRDR document could not be extracted successfully.

4. The NCHS FHIR messaging infrastructure submits the VRDR document to NVSS for processing. The NVSS FHIR adaptor converts the VRDR document into the desired internal format for processing.

5. NVSS analyzes the death report:
    a. If the death report can be processed, NVSS codes the cause of death and races and ethnicities of the decedent and generates one or two responses^[Cause of death coding can be undertaken separately to race and ethnicity coding and responses for the two activities can be delivered separately.] for delivery to the jurisdiction.
    b. If the death report cannot be processed, NVSS generates an error report response.
    c. In either case the NVSS FHIR adaptor maps the response to FHIR and submits it to the NCHS FHIR messaging infrastructure for delivery.

6. The NCHS FHIR messaging infrastructure wraps the response in a FHIR message and sends it to the jurisdiction FHIR messaging infrastructure.

7. The jurisdiction FHIR messaging infrastructure acknowledges the coded response or error report

8. The jurisdiction FHIR messaging infrastructure unwraps the content of the message and submits it to the jurisdiction death registration system whose FHIR adaptor converts it into the required internal format for processing.

The above sequence describes the general process for exchange of information between vital records jurisdictions and NCHS. Section 4 (below) describes more specific information exchanges for various success and failure scenarios.

Note that the FHIR messaging infrastructure is logically separated from both NVSS and jurisdiction death registration systems and it is this system that provides reliable delivery of death reports and coded responses (or errors) between jurisdictions and NVSS. The mechanics of reliable delivery (acknowledgements and retransmissions) are largely hidden from NVSS and jurisdiction death registration systems.

### Changes Since the Initial (PDF) Version of This Guide

1. Coding and Coding Update messages have been split into Demographics (Race and Ethnicity) coding messages and Cause of Death messages.
2. All fields that are sent to jurisdictions as MRE or TRX messages are now sent as part of coding messages.   These include some fields that are sent from EDRS to NCHS (so-called 'regurgigated fields').
3. Field names that are named and documented as part of the IJE, MRE, and/or TRX documentation have the same names and encodings in this guide. Please refer to the below-referenced documentation.

### CDC NCHS Documentation
* [2022 Mortality Data reference](https://r20.rs6.net/tn.jsp?f=001u-eBMBj0UGlhPdHxUU_w_MafJMX_8rYmjFZga3pBUoUhwcUSSzMK5lw-ncpe9c1_OCJdI66kcNI-ILEyJKT9ILqF6v3RMIxQHe-k9-IYCzq96MQmC3sO0FgIOhAgnvf_zF7l6N4k8lCQjzRnFuzO-UmCFtlHJpOYd3fjY2Cw2StY-TA-wVQOw320Sj_WyhIuq2H9GPAtpsuuBkomxjl6jizGiL_Ql0yOwjp-cUjTOTA=&c=hrGtL9tmvJ1DKGpbzqPuF3KvUpFVK0qchygyr7StLU1Sluvl9ZBcLg==&ch=hptEZrbFDWPJdXxXwQsrUk7F-lUko-MpszM6NS4g8yVkg29mqPQHXA==)
* [NCHS Instruction Manual part 8](https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf)
* SuperMicar documentation([PDF](https://www.cdc.gov/nchs/data/dvs/2003s10.pdf), [XLS](https://www.cdc.gov/nchs/data/dvs/2003_May16.xls)
* [NCHS Procedures for Multiple-Race and Hispanic Origin Data: Collection, Coding, Editing, and Transmitting](https://www.cdc.gov/nchs/data/dvs/Multiple_race_documentation_5-10-04.pdf)

#### Bulk Submissions

While the message exchange patterns included in this document focus on individual message exchanges, it would be possible to batch messages together to reduce the number of transfers. E.g. a single transfer from a vital records jurisdiction to NCHS could batch together a set of death record submissions, and acknowledgements for previously received coding response messages. On receipt, NVSS could process each individual message in the batch and create a new batch to  return to the jurisdiction.

### Understanding this Guide

The Vital Records FHIR Messaging Implementation Guide was developed using the standard HL7 FHIR publishing tools. The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but it could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the unlikely event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Contributions

Nightingale is an open source project and welcomes all contributors. The source code for this IG is maintained in the [Nightingale Github](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig). Instead of just suggesting a change, consider creating a branch, making the change, and submitting a pull request. All of our profiling work is done in [FHIR Shorthand](https://hl7.org/fhir/uv/shorthand/) and all narrative content in markdown (specifically, [Kramdown](https://kramdown.gettalong.org/)). We suggest using the [Visual Studio Code editor](https://code.visualstudio.com/) with the [FHIR Shorthand plug-in](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh). For more information on how to get started with IG development, visit the [FSH School](https://fshschool.org/).


### Credits

This IG is based on the [FHIR Messaging for NVSS](https://github.com/nightingaleproject/vital_records_fhir_messaging/releases/download/v3.1.0/fhir_messaging_for_nvss.pdf) authored by Marc Hadley (MITRE). The data element descriptions in that document have now been captured as a FHIR specification in this guide, which incorporates all of the content from the original guide. Both the original document and this Implementation Guide were developed by the MITRE corporation under contract to the Division of Vital Statistics, National Center for Health Statistics, of the Centers for Disease Control.

This IG was authored by the MITRE Corporation using [FHIR Shorthand (FSH)](https://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org), a free, open source toolchain from [MITRE Corporation](https://www.mitre.org/).

### Contact Information

Questions or comments about this IG can be directed to ["Death on FHIR" zulip stream](https://chat.fhir.org/#narrow/stream/179301-Death-on.20FHIR)[^1].

{: .grid }
