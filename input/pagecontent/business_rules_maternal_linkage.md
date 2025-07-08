### Business Rules for Maternal Linkage Records

Version 1.0

**Last updated** : June 24, 2025

**Table of Content**

[Required Fields for All Linkages](#required-fields-for-all-linkages)

[Required Fields for Live Births](#required-fields-for-live-births)

[Required Fields for Fetal Deaths](#required-fields-for-fetal-deaths)

[Additional Logical Checks](#additional-logical-checks)

[Additional Notes](#additional-notes)


#### Required Fields for All Linkages

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

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
        </tr>
        <tr>
            <td>Decedent Certificate Number</td>
            <td>MaternalLinkageContentBundle</td>
            <td>identifier.extension[certificateNumber].value</td>
        </tr>
        <tr>
            <td>Record Identifier</td>
            <td>MaternalLinkageContentBundle</td>
            <td>identifier.value</td>
        </tr>
        <tr>
            <td>Correctness of Pregnancy Status</td>
            <td>RecentPregnancyParameters</td>
            <td>parameter[preg_status_is_correct].value[X]</td>
        </tr>
    </tbody>
</table>

#### Required Fields for Live Births

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

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
        </tr>
         <tr>
            <td>Certificate Availability for Birth</td>
            <td>BirthRecordIdentifierChild</td>
            <td>component[cert_available].value[x]</td>
        </tr>
    </tbody>
</table>

#### Required Fields for Fetal Deaths

The following fields are required for a valid maternal linkage submission. An Error Message will be returned for each missing field.

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
        </tr>
         <tr>
            <td>Certificate Availability for Fetal Death</td>
            <td>FetalDeathRecordIdentifier</td>
            <td>component[cert_available].value[x]</td>
        </tr>
    </tbody>
</table>

#### Additional Logical Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Error: Invalid combination of _Field 1_ and _Field 2_" will be returned for each invalid combination reported.


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
<td>Decedent Death Date</td>
<td>Greater than Date of Birth or Fetal Death</td>
<td>Birth or Fetal Death Date</td>
<td>Less than Decedent Death Date</td>
</tr>
<tr>
<td>Birth Plurality or Fetal Death Plurality</td>
<td>0</td>
<td>Birth Record Identifier Child or Fetal Death Record Identifier</td>
<td><strong>Not</strong> &#39;Not Provided (1)</td>
</tr>
<tr>
<td>Birth Plurality or Fetal Death Plurality</td>
<td>Greater than or equal to 1</td>
<td>Birth Record Identifier Child or Fetal Death Record Identifier</td>
<td>Not Provided (2)</td>
</tr>
<tr>
<td>Pregnancy Outcome</td>
<td>Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, Molar Pregnancy</td>
<td>Birth Record Identifier Child, Fetal Death Record Identifier</td>
<td><strong>Not</strong> &#39;Not Provided (3)</td>
</tr>
<tr>
<td>Pregnancy Outcome</td>
<td>Fetal Death, Live Birth</td>
<td>Birth Record Identifier Child, Fetal Death Record Identifier (4)</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Pregnancy Outcome</td>
<td>Plural Fetal Death and Birth</td>
<td>Birth Record Identifier Child, Fetal Death Record Identifier</td>
<td>Both Not Provided (5)</td>
</tr>
<tr>
<td>Certificate Availability</td>
<td>Yes</td>
<td>Child’s Birth Record Number, Birth Jurisdiction, Birth Year, Index</td>
<td>Not Provided (1)</td>
</tr>
</tbody>
</table>

The following fields refer to the presence of BirthRecordIdentifier and/or FetalDeathRecordIdentifier instances as part of the MaternalLinkageBundle submission:
1. If the Birth Plurality or Fetal Death Plurality value is 0, there should be no instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.  
2. If the Birth Plurality or Fetal Death Plurality value is greater than or equal to 1, there should be at least one instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
3. If the Pregnancy Outcome value is Spontaneous Abortion, Induced Abortion, Ectopic Pregnancy, or Molar Pregnancy, there should be no instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.   
4. If the Pregnancy Outcome value is Fetal Death or Live Birth, there should be at least one instance of the BirthRecordIdentifierChild or FetalDeathRecordIdentifier in the MaternalLinkageBundle.
5. If the Pregnancy Outcome value is Plural Fetal Death and Birth, there should be at least one instance of the BirthRecordIdentifierChild and the FetalDeathRecordIdentifier in the MaternalLinkageBundle.




If BirthRecordIdentifierChild or FetalDeathRecordIdentifier profile instance is provided and the Certificate Availability value is 'Yes', fields can be considered 'not provided' if:  
1. The Child's Birth Record Number, Birth Jurisdiction, Birth Year, and Index values are missing. A data absent reason with the code “unknown” will not cause this data validation check to fail.   


#### Additional Notes
VROs should resubmit complete data when making updates

