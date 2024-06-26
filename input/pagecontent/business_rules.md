### Business Rules for Death Record Submissions

Version 2.1

**Last updated** : November 1, 2023

**Table of Content**

[Required Fields](#required-fields)

[Additional Logic Checks](#additional-logical-checks)

[Validation Errors](#validation-errors)

[Internal Validation Errors](#internal-validation-errors)

#### Required Fields

The following fields are required for a valid death record submission. An Error Message with a format of "Error: Unable to find _IJE Field_ required element" will be returned for each missing field.

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
			<td>Decedent's Education</td>
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
            <td>component[HispanicPuertoRican].valueCoding</td>
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
			<td>Decedent's Race–White</td>
			<td>RACE1</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[White].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Black or African American</td>
			<td>RACE2</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[BlackOrAfricanAmerican].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–American Indian or Alaska Native</td>
			<td>RACE3</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[AmericanIndianOrAlaskanNative].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Asian Indian</td>
			<td>RACE4</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[AsianIndian].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Chinese</td>
			<td>RACE5</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Chinese].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Filipino</td>
			<td>RACE6</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Filipino].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Japanese</td>
			<td>RACE7</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Japanese].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Korean</td>
			<td>RACE8</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Korean].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Vietnamese</td>
			<td>RACE9</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Vietnamese].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Other Asian</td>
			<td>RACE10</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[OtherAsian].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Native Hawaiian</td>
			<td>RACE11</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[NativeHawaiian].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Guamanian or Chamorro</td>
			<td>RACE12</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[GuamanianOrChamorro].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Samoan</td>
			<td>RACE13</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[Samoan].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Other Pacific Islander</td>
			<td>RACE14</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[OtherPacificIslander].valueBoolean</td>
		</tr>
		<tr>
			<td>Decedent's Race–Other</td>
			<td>RACE15</td>
			<td>InputRaceAndEthnicity</td>
            <td>component[OtherRace].valueBoolean</td>
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
    <td colspan="3" style="background-color:#D0F0C0; text-align: center"><strong>Field 1</strong></td>
    <td colspan="3" style="background-color:#D0F0C0; text-align: center"><strong>Field 2</strong></td>
</tr>
<tr>
<td style="background-color:#e5f0df"><strong>Description</strong></td>
<td style="background-color:#e5f0df"><strong>IJE Field</strong></td>
<td style="background-color:#e5f0df"><strong>Value</strong></td>
<td style="background-color:#e5f0df"><strong>Description</strong></td>
<td style="background-color:#e5f0df"><strong>IJE Field</strong></td>
<td style="background-color:#e5f0df"><strong>Value</strong></td>
</tr>
</thead>
<colgroup>
    <col span="1" style="width: 16%;">
	<col span="1" style="width: 16%;">
</colgroup>
<tbody>
<tr>
<td>Sex</td>
<td>SEX</td>
<td>Male</td>
<td>Pregnancy Status</td>
<td>PREG</td>
<td><strong>Not</strong> &#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Was Autopsy performed</td>
<td>AUTOP</td>
<td>Yes</td>
<td>Were Autopsy Findings Available to Complete the Cause of Death?</td>
<td>AUTOPF</td>
<td>&#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Was Autopsy performed</td>
<td>AUTOP</td>
<td>No</td>
<td>Were Autopsy Findings Available to Complete the Cause of Death?</td>
<td>AUTOPF</td>
<td><strong>Not</strong>&#39;Not Applicable&#39;</td>
</tr>
<tr>
<td>Date of Injury</td>
<td>DOI_YR, DOI_MO, DOI_DY</td>
<td>Greater than Date of Death</td>
<td>Date of Death</td>
<td>DOD_YR, DOD_MO, DOD_DY</td>
<td>Less than Date of Injury</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>MANNER</td>
<td>Accident, Suicide, Homicide</td>
<td>Date of Injury</td>
<td>DOI_YR, DOI_MO, DOI_DY</td>
<td>Not Provided (1)</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>MANNER</td>
<td>Accident, Suicide, Homicide</td>
<td>Place of Injury Literal</td>
<td>POILTRL</td>
<td>Not Provided (2)</td>
</tr>
<tr>
<td>Manner of Death</td>
<td>MANNER</td>
<td>Accident, Suicide, Homicide</td>
<td>Describe How Injury Occurred</td>
<td>HOWINJ</td>
<td>Not Provided (2)</td>
</tr>
</tbody>
</table>

The fields DOI_YR, DOI_MO, DOI_DY, POILTRL and HOWINJ all map to the VRDR InjuryIncident profile.
These fields are considered 'not provided' if no instance of the InjuryIncident profile is provided as part of the DeathRecord submission.
If the Manner of Death requires information about an injury incident, and none is available, providing an instance of an Injury Incident profile with 'unknown' values for the required fields satisfies the data requirement.

If an InjuryIncident profile instance is provided, fields can be considered 'not provided' if:  
1) The date of injury is considered ‘not provided’ if the effective time value is missing, or it includes a PartialDateTime extension and any component of the date has a data absent reason of “temp-unknown” (equivalent to an IJE blank). A data absent reason with the code “unknown” (equivalent to all 9’s in IJE) will not cause this data validation check to fail.    
2) The literal string fields HOWINJ and POILTRL are considered 'not provided' if an instance of the profile is provided, and the value (HOWINJ) or the component[ placeOfInjury].value (POILTRL) are not provided, or their value is blank.

#### Validation Errors

For many fields, the value provided must be one that is found in the corresponding VRDR Value Set for the field. Otherwise, an Error Message with a format of "Error: Unable to find _IJE Field_ mapping for _FHIR Component_ field value '_string_'" will be returned for each violation.

There are additional Errors that may be returned when a record cannot be accepted, including some IJE fields that are not retained by NCHS, but must be valid if provided.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%;">
	<tbody>
		<tr>
			<td style="background-color:#D0F0C0;" ><strong>IJE Field</strong></td>
			<td style="background-color:#D0F0C0;" ><strong>Error Message</strong></td>
			<td style="background-color:#D0F0C0;" ><strong>Clarification</strong></td>
		</tr>
		<tr>
			<td>BSTATE</td>
			<td>Error: FHIR field BirthRecordState too long for IJE field BSTATE of length 2</td>
			<td>The birth state must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). <a href="https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs">https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-jurisdictions-provinces-vs</a></td>
		</tr>
		<tr>
			<td>COD1A and OTHERCONDITION</td>
			<td>The record is uncodeable. The record is missing important cause of death information.</td>
			<td>When manner of death is not 'Pending' or 'Could Not Be Determined', then cause of death information must be included in the record by providing literal text for fields COD1A and/or OTHERCONDITION.</td>
		</tr>
		<tr>
			<td>DETHNICE</td>
			<td>Error: Unable to find IJE DETHNICE mapping for FHIR HispanicCode field value <em>'string'</em></td>
			<td>DETHNICE is a field that is returned to the jurisdictions in the multi-race file. If including in records to share as part of IJE, the values reported must be valid. <a href="https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs">https://hl7.org/fhir/us/vrdr/ValueSet/vrdr-hispanic-origin-vs</a></td>
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
			<td rowspan ="2">FILENO (certificate number)</td>
			<td rowspan ="1">Certificate Number is missing, or the certificate length is greater than 6</td>
			<td colspan="1" rowspan ="1">FILENO is a required field and must be exactly 6 digits in length.  Only positive numbers are allowed for this field.</td>
		</tr>
		<tr>
			<td rowspan ="1">Certificate Number exceeds expected value</td>
			<td colspan="1" rowspan ="1">Unexpected high Certificate Numbers may be accepted for Medical Processing, but then rejected for Demographic Processing if the Certificate Number is not within the typical range for the Jurisdiction/Year/Event being submitted.  You must first contact your VSS to adjust your expected ranges before re-submitting these records in order for them to be included in your Demographic File.</td>
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

