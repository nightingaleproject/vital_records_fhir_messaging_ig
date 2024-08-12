### Business Rules for Birth Record Submissions

Version 0.1

**Last updated** : August 9, 2024

**Table of Content**

[Required Fields](#required-fields)

[Additional Checks](#additional-checks)

[Internal Validation Errors](#internal-validation-errors)

#### Required Fields

The following fields are required for a valid birth record submission to be processed. 
An Error Message with a format of "Error: Unable to find _IJE Field_ required element" will be returned for each missing field.


<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
    <colgroup>
       <col span="1" style="width: 40%;">
	   <col span="1" style="width: 10%;">
    </colgroup>
	<tbody>
		<tr>
			<td style="background-color:#D0F0C0;"><b>Field Description</b></td>
			<td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
			<td style="background-color:#D0F0C0;"><b>FHIR Profile</b></td>
            <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
		</tr>
		<tr>
			<td>State, U.S. Territory or Canadian Province of Death - code</td>
			<td>BSTATE</td>
			<td>State, U.S. Territory or Canadian Province of Birth (Infant) - code</td>
            <td>address.state <strong>or</strong> address.state.extension[nationalReportingJurisdictionId] 
            <br><br>If both are provided, the extension will override. Unless you are NYC, recommend using address.state <strong>only.</strong></td>
		</tr>
		<tr>
			<td>Certificate Number</td>
			<td>FILENO</td>
			<td>BundleDocumentBirthReport</td>
            <td>identifier.extension[certificateNumber].value</td>
		</tr>
		<tr>
			<td>Date of Birth (Infant)--Year</td>
			<td>IDOB_YR</td>
			<td>PatientChildVitalRecords</td>
            <td>birthDate.value</td>
		</tr>
		<tr>
			<td>Date of Birth (Infant)--Year</td>
			<td>IDOB_MO</td>
			<td>PatientChildVitalRecords</td>
            <td>birthDate.value</td>
		</tr>
		<tr>
			<td>Date of Birth (Infant)--Year</td>
			<td>IDOB_DY</td>
			<td>PatientChildVitalRecords</td>
            <td>birthDate.value</td>
		</tr>
	</tbody>
</table>

#### Additional Checks

Records that contain the minimal set of required fields will be processed by NCHS.  Reports on the completeness of each record will be shared with jurisdictions through the same channels as is done for IJE-formatted records.  This process may be revised to introduce more stringent checking of submissions as NCHS and Jurisdictions gain experience with the process.


#### Internal Validation Errors

The following error messages are internal validation errors and if you receive any of these, please contact NCHS.

| **Error Message** |
| --- |
| An unexpected network error occurred. |
| Exception has been thrown by the target of an invocation. |
| Object reference not set to an instance of an object. |
| The network path was not found. |
| Unable to find the specified file. |
{:.grid}

