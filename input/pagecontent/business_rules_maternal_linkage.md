### Business Rules for Maternal Linkage Records

Version 1.0

**Last updated** : June 24, 2025

**Table of Content**

[Business Rule requirements and FHIR profiles for all Linkages](#Business-Rule-Requirements-and-FHIR-profiles-for-all-Linkages)

[Business Rule requirements and FHIR profiles If a Live Birth](#Business-Rule-Requirements-and-FHIR-profiles-If-a-Live-Birth)

[Business Rule requirements and FHIR profiles If a Fetal Death](#Business-Rule-Requirements-and-FHIR-profiles-If-a-Fetal-Death)

[Additional Logical Checks](#Additional-Logical-Checks)

#### Business Rule requirements and FHIR profiles for all Linkages

The following fields are marked if they are a business rule requirement.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
        <tr>
            <td style="background-color:#D0F0C0;"><b>Field Description</b></td>
             <td style="background-color:#D0F0C0;"><b>FHIR Profile</b></td>
            <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
            <td style="background-color:#D0F0C0;"><b>Business Rule Requirement</b></td>
        </tr>
        <tr>
            <td>Decedent Certificate number. Six digit number. Leading zeroes are optional. </td>
            <td>MaternalLinkageContentBundle</td>
            <td>Bundle.identifier.extension:certificateNumber</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Auxiliary State file number 1. 12 characters.</td>
            <td>MaternalLinkageContentBundle</td>
            <td>Bundle.identifier.extension:auxiliaryStateIdentifier1</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Auxiliary State Identifier 2. 12 characters.</td>
            <td>MaternalLinkageContentBundle</td>
            <td>Bundle.identifier.extension:auxiliaryStateIdentifier2</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Record Identifier (YYYYJJNNNNNN). Max Length: 12</td>
            <td>MaternalLinkageContentBundle</td>
            <td>Bundle.identifier.value</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Notes. String with a 100 character limit</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:notes.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Coded pregnancy outcome. Coded values are from Pregnancy Outcome Values Value set.</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:coded_outcome.value[x]</td>
            <td>No</td>
        </tr>
         <tr>
            <td>Birth plurality. Value is an integer.</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:birth_plurality.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Fetal death plurality. Value is an integer.</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:fetal_death_plurality.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Pregnancy Status on Death Record is Correct. Boolean value of True/False</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:preg_status_is_correct.value[X]</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Corrected pregnancy status. Status values are from Death Pregnancy Status value set.</td>
            <td>RecentPregnancyParameters</td>
            <td>Parameters.parameter:corrected_pregnancy_status.value[X]</td>
            <td>No</td>
        </tr>
    </tbody>
</table>

#### Business Rule requirements and FHIR profiles If a Live Birth

The following fields are marked if they are a business rule requirement for live birth.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
        <tr>
            <td style="background-color:#D0F0C0;"><b>Field Description</b></td>
             <td style="background-color:#D0F0C0;"><b>FHIR Profile</b></td>
            <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
            <td style="background-color:#D0F0C0;"><b>Business Rule Requirement</b></td>
        </tr>
         <tr>
            <td>Child's Birth Record number. Six digit number. Leading zeroes are optional. Max Length: 6</td>
            <td>BirthRecordIdentifierChild</td>
            <td>Observation.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Birth jurisdiction. Values are from Jurisdictions Vital Records value set</td>
            <td>BirthRecordIdentifierChild</td>
            <td>Observation.component:birthJurisdiction.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Birth year.The record year is expressed using the YYYY portion of date of dateTime data type.</td>
            <td>BirthRecordIdentifierChild</td>
            <td>Observation.component:birthYear.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Index.The index of this record among birth certificates of the same type.</td>
            <td>BirthRecordIdentifierChild</td>
            <td>Observation.component:index.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Certificate Availability for birth. Values are from the Certificate Availble Values value set.</td>
            <td>BirthRecordIdentifierChild</td>
            <td>Observation.component:cert_available.value[x]</td>
            <td>Yes</td>
        </tr>
    </tbody>
</table>

#### Business Rule requirements and FHIR profiles If a Fetal Death

The following fields are marked if they are a business rule requirement for fetal death.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
       <tr>
            <td style="background-color:#D0F0C0;"><b>Field Description</b></td>
             <td style="background-color:#D0F0C0;"><b>FHIR Profile</b></td>
            <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
            <td style="background-color:#D0F0C0;"><b>Business Rule Requirement</b></td>
        </tr>
         <tr>
            <td>Fetal Death Record number. Six digit number. Leading zeroes are optional. Max Length: 6</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>Observation.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Death jurisdiction. Values are from Jurisdictions Vital Records value set.</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>Observation.component:deathJurisdiction.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Fetal Death year.The record year is expressed using the YYYY portion of date of dateTime data type.</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>Observation.component:Year.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Index.The index of this record among fetal death report of the same type. Data type is an integer.</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>Observation.component:index.value[x]</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Report Availability for fetal death. Values are from the Certificate Availble Values value set.</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>Observation.component:cert_available.value[x]</td>
            <td>Yes</td>
        </tr>
    </tbody>
</table>

#### Additional Logical Checks

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
<tr>
    <td colspan="2" style="background-color:#D0F0C0; text-align: center"><strong>Field 1</strong></td>
    <td colspan="2" style="background-color:#D0F0C0; text-align: center"><strong>Field 2</strong></td>
</tr>
<tr>
<td style="background-color:#e5f0df"><strong>Description</strong></td>
<td style="background-color:#e5f0df"><strong>Value</strong></td>
<td style="background-color:#e5f0df"><strong>Description</strong></td>
<td style="background-color:#e5f0df"><strong>Value</strong></td>
</tr>
</thead>
<colgroup>
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 16%;">
</colgroup>
<tbody>
<tr>
<td>Birth or Fetal Death Date</td>
<td>Less than Date of Birth or Fetal Death Date</td>
<td>Decedent Death Date</td>
<td>Greater than Date of Decedent Death</td>
</tr>
<tr>
<td>Birth Plurality</td>
<td>0</td>
<td>Birth Record Identifier Child</td>
<td>Any Value</td>
</tr>
<tr>
<td>Fetal Death Plurality</td>
<td>0</td>
<td>Fetal Death Record Identifier</td>
<td>Any Value</td>
</tr>
<tr>
<td>Birth Plurality</td>
<td>Greater than or equal to 1</td>
<td>Birth Record Identifier Child</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Fetal Death Plurality</td>
<td>Greater than or equal to 1</td>
<td>Fetal Death Record Identifier</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Pregnancy outcome VS</td>
<td>Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, Molar Pregnancy</td>
<td>Accident, Suicide, Homicide</td>
<td>Birth record identifier child, Fetal death record identifier</td>
<td>Any Value</td>
</tr>
<tr>
<td>Pregnancy outcome VS</td>
<td>Fetal Death, Live Birth, Plural Fetal Death and Birth</td>
<td>Birth record identifier child, Fetal death record identifier</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Certificate availability</td>
<td>Yes</td>
<td>Certificate Availability, Child’s birth record number, Birth jurisdiction, Birth year, Index</td>
<td>Not Provided</td>
</tr>
</tbody>
</table>

Note: VROs should resubmit complete data when making updates

