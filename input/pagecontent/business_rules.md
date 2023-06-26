### Business Rules for Death Record Submissions

Version 2.0

**Last updated** : March 17, 2023

**Table of Content**

[Required Fields](#required-fields)

[Additional Logic Checks](#additional-logic-checks)

[Validation Errors](#validation-errors)

[Internal Validation Errors](#internal-validation-errors)

#### Required Fields

The following fields are required for a valid death record submission. An Error Message with a format of "Error: Unable to find _IJE Field_ required element" will be returned for each missing field.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
	<tbody>
		<tr>
			<td><b>Field Description</b></td>
			<td><b>IJE Field</b></td>
			<td><b>FHIR Profile</b></td>
            <td><b>FHIR Field</b></td>
		</tr>
		<tr>
			<td>State, U.S. Territory or Canadian Province of Death - code</td>
			<td>DSTATE</td>
			<td>DeathLocation</td>
            <td>address.state <strong>or</strong> address.state.extension[nationalReportingJurisdictionId] 
            <br><br>If both are provided, the extension will override. Unless you are NYC, recommend using address.state <strong>only.</strong></td>
		</tr>
		<tr>
			<td>Certificate Number</td>
			<td>FILENO</td>
			<td>DeathCertificateDocument</td>
            <td>identifier.extension[certificateNumber].value</td>
		</tr>
		<tr>
			<td>Decedent's Legal Name–Last</td>
			<td>LNAME</td>
			<td>Decedent</td>
            <td>name.family, name.use = official</td>
		</tr>
		<tr>
			<td>Decedent's Sex at Death</td>
			<td>SEX</td>
			<td>Decedent</td>
            <td>extension[NVSS-SexAtDeath]</td>
		</tr>
		<tr>
			<td>Decedent's Age-Type</td>
			<td>AGETYPE</td>
			<td>DecedentAge</td>
            <td>valueQuantity.code</td>
		</tr>
		<tr>
			<td>Decedent's Age-Units</td>
			<td>AGE</td>
			<td>DecedentAge</td>
            <td>valueQuantity.value</td>
		</tr>
		<tr>
			<td>Date of Birth</td>
			<td>DOB_YR, DOB_MO, DOB_DY</td>
			<td>Decedent</td>
            <td>birthDate</td>
		</tr>
		<tr>
			<td>Decedent's Residence–Inside City Limits</td>
			<td>LIMITS</td>
			<td>Decedent</td>
            <td>address.city.extension[withinCityLimits]</td>
		</tr>
		<tr>
			<td>Marital Status</td>
			<td>MARITAL</td>
			<td>Decedent</td>
            <td>maritalStatus</td>
		</tr>
		<tr>
			<td>Place of Death</td>
			<td>DPLACE</td>
			<td>DeathDate</td>
            <td>component[placeOfDeath].value</td>
		</tr>
		<tr>
			<td>County of Death Occurence</td>
			<td>COD</td>
			<td>DeathLocation</td>
            <td>address.district.extension[countyCode]</td>
		</tr>
		<tr>
			<td>Method of Disposition</td>
			<td>DISP</td>
			<td>DecedentDispositionMethod</td>
            <td>value</td>
		</tr>
		<tr>
			<td>Date of Death</td>
			<td>DOD_YR, DOD_MO, DOD_DY</td>
			<td>DeathDate</td>
            <td>value</td>
		</tr>
		<tr>
			<td>Decendent's Education</td>
			<td>DEDUC</td>
			<td>DecedentEducationLevel</td>
            <td>value</td>
		</tr>
		<tr>
			<td>Decedent of Hispanic Origin?–Mexican</td>
			<td>DETHNIC1</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[HispanicMexican].valueCoding</td>
		</tr>
		<tr>
			<td>Decedent of Hispanic Origin?–Puerto Rican</td>
			<td>DETHNIC2</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[HispanicPuretoRican].valueCoding</td>
		</tr>
		<tr>
			<td>Decedent of Hispanic Origin?–Cuban</td>
			<td>DETHNIC3</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[HispanicCuban].valueCoding</td>
		</tr>
		<tr>
			<td>Decedent of Hispanic Origin?–Other</td>
			<td>DETHNIC4</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[HispanicOther].valueCoding</td>
		</tr>
		<tr>
			<td>Manner of Death</td>
			<td>MANNER</td>
			<td>MannerOfDeath</td>
            <td>value</td>
		</tr>
		<tr>
			<td>Was Autopsy performed</td>
			<td>AUTOP</td>
			<td>AutopsyPerformedIndicator</td>
            <td>value</td>
		</tr>
		<tr>
			<td>Were Autopsy Findings Available to Complete the Cause of Death</td>
			<td>AUTOPF</td>
			<td>AutopsyPerformedIndicator</td>
            <td>component[autopsyResultsAvailable].value</td>
		</tr>
		<tr>
			<td>Did Tobacco Use Contribute to Death?</td>
			<td>TOBAC</td>
			<td>TobaccoUseContributedToDeath</td>
            <td>value</td>
		</tr>
	</tbody>
</table>

#### Additional Logical Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Error: Invalid combination of _Field 1_ and _Field 2_" will be returned for each invalid combination reported.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
<thead>
<tr>
    <th colspan="2"><strong>Field 1</strong></th>
    <th colspan="2"><strong>Field 2</strong></th>
</tr>
<tr>
<th><strong>Description</strong></th>
<th><strong>Value</strong></th>
<th><strong>Description</strong></th>
<th><strong>Value</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Sex</td>
<td>Male</td>
<td>Pregnancy Status</td>
<td><strong>Not</strong> &#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Was Autopsy performed</td>
<td>Yes</td>
<td>Were Autopsy Findings Available to Complete the Cause of Death?</td>
<td>&#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Was Autopsy performed</td>
<td>No</td>
<td>Were Autopsy Findings Available to Complete the Cause of Death?</td>
<td><strong>Not</strong>&#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Date of Injury</td>
<td>Greater than Date of Death</td>
<td>Date of Death</td>
<td>Less than Date of Injury</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>Accident, Suicide, Homicide</td>
<td>Date of Injury</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>Accident, Suicide, Homicide</td>
<td>Place of Injury Literal</td>
<td>Not Provided</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>Accident, Suicide, Homicide</td>
<td>Describe How Injury Occurred</td>
<td>Not Provided</td>
</tr>
</tbody>
</table>


#### Validation Errors

For many fields, the value provided must be one that is found in the corresponding VRDR Value Set for the field. Otherwise, an Error Message with a format of "Error: Unable to find _IJE Field_ mapping for _FHIR Component_ field value '_string_'" will be returned for each violation.

There are additional Errors that may be returned when a record cannot be accepted, including some IJE fields that are not retained by NCHS, but must be valid if provided.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
	<tbody>
		<tr>
			<td><strong>IJE Field</strong></td>
			<td><strong>Error Message</strong></td>
			<td><strong>Clarification</strong></td>
		</tr>
		<tr>
			<td>BSTATE</td>
			<td>Error: FHIR field BirthRecordState too long for IJE field BSTATE of length 2</td>
			<td>The birth state must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). <a href="http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs">http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs</a></td>
		</tr>
		<tr>
			<td>COD1A and OTHERCONDITION</td>
			<td>The record is uncodeable. The record is missing important cause of death information.</td>
			<td>When manner of death is not 'Pending' or 'Could Not Be Determined', then cause of death information must be included in the record by providing literal text for fields COD1A and/or OTHERCONDITION.</td>
		</tr>
		<tr>
			<td>DETHNICE</td>
			<td>Error: Unable to find IJE DETHNICE mapping for FHIR HispanicCode field value <em>'string'</em></td>
			<td>DETHNICE is a field that is returned to the jurisdictions in the multi-race file. If including in records to share as part of IJE, the values reported must be valid. <a href="http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs">http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs</a></td>
		</tr>
		<tr>
			<td>DINSTI</td>
			<td>Error: FHIR field DeathLocationName contains string too long for IJE field DINSTI of length 30</td>
			<td>The location of death string exceeds the 30-character limit for this field.</td>
		</tr>
		<tr>
			<td rowspan ="2">DSTATE</td>
			<td rowspan ="1">Error: FHIR field DeathLocationJurisdiction contains string too long for IJE field DSTATE of length 2</td>
			<td colspan="1" rowspan ="2">DSTATE is a required field, and the value must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks).</td>
        </tr>
		<tr>
			<td>Error: JurisdictionID was not identified</td>
		</tr>
		<tr>
			<td>DOD_YR</td>
			<td>4 digits number are expected</td>
			<td>The year of the event must be a valid 4 numeric digit year (YYYY) without special characters or blanks.</td>
		</tr>
		<tr>
			<td>Event Year</td>
			<td>FHIR cannot process records from EventYear <em>year</em>; please resubmit via IJE</td>
			<td>Until the 2022 data year is closed, NVSS may not be able to process older years via FHIR.</td>
		</tr>
		<tr>
			<td>FHIR Bundle Event Year</td>
			<td>FHIR BUNDLE Parameter event year should match the death record Death Year.</td>
			<td>DOD_YR must agree with the year included in the FHIR BUNDLE parameter.</td>
		</tr>
		<tr>
			<td>FHIR Bundle Source Endpoint</td>
			<td>FHIR Bundle Source Endpoint is missing</td>
			<td>The actual message source address or id needs to be specified for the endpoint.</td>
		</tr>
		<tr>
			<td rowspan ="2">FILENO</td>
			<td rowspan ="1">Certificate Number is missing, or the certificate length is greater than 6</td>
			<td colspan="1" rowspan ="2">FILENO is a required field and must be exactly 6 digits in length. 000000 and 999999 are not valid. In general, Certificate Numbers beginning with 9 are used for Jurisdictional purposes, so they may also be rejected.</td>
		</tr>
		<tr>
			<td>Only Numeric and positive digits are allowed for Certificate Number</td>
		</tr>
		<tr>
			<td>IDOB_YR</td>
			<td>Error: FHIR field BirthRecordYear contains string too long for IJE field IDOB_YR of length 4</td>
			<td>The year of birth must be a valid 4-digit numeric year (YYYY).</td>
		</tr>
		<tr>
			<td>INDUST</td>
			<td>Error: FHIR field UsualIndustry contains string …. too long for IJE field INDUST of length 40</td>
			<td>The decedent's industry literal exceeds the 40-character limit for this field.</td>
		</tr>
		<tr>
			<td>OCCUP</td>
			<td>Error: FHIR field UsualOccupation contains string … too long for IJE field OCCUP of length 40</td>
			<td>The decedent's occupation literal exceeds the 40-character limit for this field.</td>
		</tr>
		<tr>
			<td>Record Length</td>
			<td>The IJE version of the FHIR message did not reach the 1025 bytes characters required. Some fields are missing.</td>
			<td>The Death Record is missing several important FHIR elements required to generate a complete IJE record. Review the record to determine which fields are missing.</td>
		</tr>
		<tr>
			<td>SSN</td>
			<td>Error: FHIR field SSN contains string …. which is not the expected length (without dashes or spaces) for IJE field SSN of length 9</td>
			<td>The Social Security Number (SSN) must be 9 numeric digits long (without dashes or spaces) to be accepted.</td>
		</tr>
	</tbody>
</table>

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

