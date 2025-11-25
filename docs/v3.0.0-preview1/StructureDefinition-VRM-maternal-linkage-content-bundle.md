# Maternal Linkage Content Bundle - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maternal Linkage Content Bundle**

## Resource Profile: Maternal Linkage Content Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MaternalLinkageContentBundle |

 
Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent. 

**Usages:**

* Use this Profile: [Maternal Linkage Submission Message](StructureDefinition-VRM-MaternalLinkageSubmissionMessage.md) and [Maternal Linkage Update Message](StructureDefinition-VRM-MaternalLinkageUpdateMessage.md)
* Examples for this Profile: [Bundle/MaternalLinkageBundle-Birth](Bundle-MaternalLinkageBundle-Birth.md), [Bundle/MaternalLinkageBundle-BirthNoCert](Bundle-MaternalLinkageBundle-BirthNoCert.md), [Bundle/MaternalLinkageBundle-BirthPendingCert](Bundle-MaternalLinkageBundle-BirthPendingCert.md), [Bundle/MaternalLinkageBundle-EctopicPregnancy](Bundle-MaternalLinkageBundle-EctopicPregnancy.md)...Show 4 more,[Bundle/MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-Extensive-PluralBirthAndFetalDeathWithCert.md),[Bundle/MaternalLinkageBundle-FetalDeathWithCertPending](Bundle-MaternalLinkageBundle-FetalDeathWithCertPending.md),[Bundle/MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert](Bundle-MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert.md)and[Bundle/MaternalLinkageBundle-PluralBirthWithCert](Bundle-MaternalLinkageBundle-PluralBirthWithCert.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-maternal-linkage-content-bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-maternal-linkage-content-bundle.csv), [Excel](StructureDefinition-VRM-maternal-linkage-content-bundle.xlsx), [Schematron](StructureDefinition-VRM-maternal-linkage-content-bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-maternal-linkage-content-bundle",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle",
  "version" : "3.0.0-Preview1",
  "name" : "MaternalLinkageContentBundle",
  "title" : "Maternal Linkage Content Bundle",
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
  "description" : "Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "min" : 1
      },
      {
        "id" : "Bundle.identifier.extension:certificateNumber",
        "path" : "Bundle.identifier.extension",
        "sliceName" : "certificateNumber",
        "short" : "Certificate Number.  Six digit number.  Leading zeroes are optional.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/CertificateNumber"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.identifier.extension:auxiliaryStateIdentifier1",
        "path" : "Bundle.identifier.extension",
        "sliceName" : "auxiliaryStateIdentifier1",
        "short" : "Auxiliary State Identifier 1.  12 characters.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier1"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.identifier.extension:auxiliaryStateIdentifier2",
        "path" : "Bundle.identifier.extension",
        "sliceName" : "auxiliaryStateIdentifier2",
        "short" : "Auxiliary State Identifier 2.  12 characters.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/AuxiliaryStateIdentifier2"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.identifier.system",
        "path" : "Bundle.identifier.system",
        "patternUri" : "http://hl7.org/fhir/us/vr-common-library/CodeSystem/codesystem-ije-vr"
      },
      {
        "id" : "Bundle.identifier.value",
        "path" : "Bundle.identifier.value",
        "short" : "Record Identifier (YYYYJJNNNNNN)",
        "definition" : "A unique value used by the NCHS to identify a  record. The NCHS uniquely identifies  records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the  certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). ",
        "maxLength" : 12
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "collection"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Slicing based on the profile",
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:RecentPregnancyParameters",
        "path" : "Bundle.entry",
        "sliceName" : "RecentPregnancyParameters",
        "short" : "RecentPregnancyParameters",
        "definition" : "RecentPregnancyParameters",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RecentPregnancyParameters.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Parameters",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:BirthRecordIdentifierChild",
        "path" : "Bundle.entry",
        "sliceName" : "BirthRecordIdentifierChild",
        "short" : "BirthRecordIdentifierChild",
        "definition" : "BirthRecordIdentifierChild",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:BirthRecordIdentifierChild.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:FetalDeathRecordIdentifier",
        "path" : "Bundle.entry",
        "sliceName" : "FetalDeathRecordIdentifier",
        "short" : "FetalDeathRecordIdentifier",
        "definition" : "FetalDeathRecordIdentifier",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:FetalDeathRecordIdentifier.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
            ]
          }
        ]
      }
    ]
  }
}

```
