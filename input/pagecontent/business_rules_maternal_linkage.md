### Business Rules for Maternal Linkage Records

Version 1.0

**Last updated** : June 24, 2025

**Table of Content**

[Business Rules and FHIR requirements for all Linkages](#Business-Rules-and-FHIR-requirements-for-all-Linkages)

[Business Rules and FHIR requirements If a Live Birth](#Business-Rules-and-FHIR-requirements-If-a-Live-Birth)

[Business Rules and FHIR requirements If a Fetal Death](#Business-Rules-and-FHIR-requirements-If-a-Fetal-Death)

[Additional Logical Checks](#Additional-Logical-Checks)

#### Business Rules and FHIR requirements for all Linkages

This table defines the FHIR and business rules requirements wthin the MaternalLinkage Bundle and RecentPregnancyParameters profiles.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
        <tr>
            <td style="background-color:#D0F0C0;"><b>Description</b></td>
             <td style="background-color:#D0F0C0;"><b>Details</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in FHIR</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in Business Rules</b></td>
        </tr>
        <tr>
            <td>Decedent certificate number
            </td>
            <td>Six-digit number. Leading zeroes are optional.
            </td>
            <td>No</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Decedent jurisdiction1
            </td>
            <td>Auxiliary State Identifier 1. 12 characters.
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Decedent jurisdiction2
            </td>
            <td>Auxiliary State Identifier 1. 12 characters.
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Decedent record identifier
            </td>
            <td>Record Identifier (YYYYJJNNNNNN)
            </td>
            <td>No</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Correctness of pregnancy status
            </td>
            <td>True/False</td>
            <td>No</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Corrected pregnancy status
            </td>
            <td>Death Pregnancy Status VS
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Pregnancy outcome
            </td>
            <td>Pregnancy Outcome VS
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Birth plurality
            </td>
            <td>Integer</td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Fetal death plurality
            </td>
            <td>Integer</td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Notes</td>
            <td>String, 100 character limit
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
    </tbody>
</table>

#### Business Rules and FHIR requirements If a Live Birth

This table defines the FHIR and business rules requirements wthin the BirthRecordIdentifierChild profile.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
        <tr>
            <td style="background-color:#D0F0C0;"><b>Description</b></td>
             <td style="background-color:#D0F0C0;"><b>Details</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in FHIR</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in Business Rules</b></td>
        </tr>
        <tr>
            <td>Certificate Availability
            </td>
            <td>Certificate Availability VS
            </td>
            <td>No</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Child’s birth record number
            </td>
            <td>Six-digit number. Leading zeroes are optional.
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Birth jurisdiction
            </td>
            <td>Jurisdiction VS
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Birth year
            </td>
            <td>dateTime
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Index
            </td>
            <td>integer</td>
            <td>No</td>
            <td>No</td>
        </tr>
    </tbody>
</table>

#### Business Rules and FHIR requirements If a Fetal Death

This table defines the FHIR and business rules requirements wthin the FetalDeathRecordIdentifier profile.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
       <col span="1" style="width: 10%;">
    </colgroup>
    <tbody>
        <tr>
            <td style="background-color:#D0F0C0;"><b>Description</b></td>
             <td style="background-color:#D0F0C0;"><b>Details</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in FHIR</b></td>
            <td style="background-color:#D0F0C0;"><b>Required in Business Rules</b></td>
        </tr>
        <tr>
            <td>Certificate Availability
            </td>
            <td>Certificate Availability VS
            </td>
            <td>No</td>
            <td>Yes</td>
        </tr>
        <tr>
            <td>Fetal death record number
            </td>
            <td>Six-digit number. Leading zeroes are optional.
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Death jurisdiction
            </td>
            <td>Jurisdiction VS
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Death year
            </td>
            <td>dateTime
            </td>
            <td>No</td>
            <td>No</td>
        </tr>
        <tr>
            <td>Index
            </td>
            <td>integer</td>
            <td>No</td>
            <td>No</td>
        </tr>
    </tbody>
</table>

#### Additional Logical Checks

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
<tr>
    <td colspan="3" style="background-color:#D0F0C0; text-align: center"><strong>Field 1</strong></td>
    <td colspan="3" style="background-color:#D0F0C0; text-align: center"><strong>Field 2</strong></td>
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
<td>Birth or Fetal Death Date
</td>
<td>Less than Date of Birth or Fetal Death Date
</td>
<td>Decedent Death Date
</td>
<td>Greater than Date of Decedent Death
</td>
</tr>
<tr>
<td>Birth Plurality
</td>
<td>0</td>
<td>Birth Record Identifier Child
</td>
<td>Any Value</td>
</tr>
<tr>
<td>Fetal Death Plurality
</td>
<td>0</td>
<td>Fetal Death Record Identifier
</td>
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
<td>Pregnancy outcome VS
</td>
<td>Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, Molar Pregnancy
</td>
<td>Accident, Suicide, Homicide</td>
<td>Birth record identifier child, Fetal death record identifier
</td>
<td>Any Value</td>
</tr>
<tr>
<td>Pregnancy outcome VS
</td>
<td>Fetal Death, Live Birth, Plural Fetal Death and Birth
</td>
<td>Birth record identifier child, Fetal death record identifier
</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Certificate availability
</td>
<td>Yes</td>
<td>Certificate Availability, Child’s birth record number, Birth jurisdiction, Birth year, Index
</td>
<td>Not Provided</td>
</tr>
</tbody>
</table>

Note: VROs should resubmit complete data when making updates

