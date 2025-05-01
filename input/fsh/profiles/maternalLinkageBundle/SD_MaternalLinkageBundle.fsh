Profile: MaternalLinkageContentBundle
Parent: Bundle
Id: VRM-maternal-linkage-content-bundle
Title: "Maternal Linkage Content Bundle"
Description: "Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent."
* insert BundleIdentifiers
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
//  RuleSet: BundleSlice(name, min, max, short, def, class)
* insert BundleSlice(  RecentPregnancyParameters,  1, 1,  RecentPregnancyParameters,  RecentPregnancyParameters,  RecentPregnancyParameters)
* insert BundleSlice(  BirthRecordIdentifierChild,  0, *,  BirthRecordIdentifierChild,  BirthRecordIdentifierChild,  BirthRecordIdentifierChild)
* insert BundleSlice(  FetalDeathRecordIdentifier,  0, *,  FetalDeathRecordIdentifier,  FetalDeathRecordIdentifier,  FetalDeathRecordIdentifier)


RuleSet: BundleIdentifiers
* identifier.value ^short = "Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a  record. The NCHS uniquely identifies  records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the  certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier 1..1
* identifier.system = $IJE 
* identifier.extension contains
    CertificateNumber named certificateNumber 0..1 and
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* identifier.extension[auxiliaryStateIdentifier1] ^short = "Auxiliary State Identifier 1.  12 characters."
* identifier.extension[auxiliaryStateIdentifier2] ^short = "Auxiliary State Identifier 2.  12 characters."
* identifier.extension[certificateNumber] ^short = "Certificate Number.  Six digit number.  Leading zeroes are optional."

RuleSet: BundleIdentifiersParam(certname, certdesc, local1name, local1desc, local2name, local2desc)
* identifier.value ^short = "Record Identifier (YYYYJJNNNNNN)"
* identifier.value ^definition = "A unique value used by the NCHS to identify a  record. The NCHS uniquely identifies  records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the  certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros). "
* identifier.value ^maxLength = 12
* identifier.system = Canonical(CodeSystemIJEVitalRecords) (exactly)
* identifier.system ^short = "FHIR requires a codesystem"
* identifier.value 1..1
* identifier.system 1..1
* identifier 1..1
* identifier.extension contains
    CertificateNumber named {certname} 0..1 and
    AuxiliaryStateIdentifier1 named {local1name} 0..1 and
    AuxiliaryStateIdentifier2 named {local2name} 0..1
* identifier.extension[{local1name}] ^short =  "{local1desc}"
* identifier.extension[{local2name}] ^short = "{local2desc}"
* identifier.extension[{certname}] ^short = "{certdesc}"