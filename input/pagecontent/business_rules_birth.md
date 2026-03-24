### Business Rules for Birth Record Submissions

Version 1.0

**Last updated** : March 10, 2026

**Table of Content**

[Required Fields](#required-fields)

[Additional Checks](#additional-checks)

[Validation Errors](#validation-errors)

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
			<td>State, U.S. Territory or Canadian Province of Birth (Infant) - code</td>
			<td>BSTATE</td>
			<td>PatientChildVitalRecords</td>
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
			<td>Date of Birth (Infant)</td>
			<td>IDOB_YR, IDOB_MO, IDOB_DY</td>
			<td>PatientChildVitalRecords</td>
            <td>birthDate.value</td>
		</tr>
	</tbody>
</table>

The FHIR profile [ObservationInputRaceandEthnicityVitalRecords](https://hl7.org/fhir/us/vr-common-library/STU2/StructureDefinition-input-race-and-ethnicity-vr.html) is used for Mother and Father race and ethnicity fields below. Follow IJE requirements if father's info is not available.

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%; table-layout:fixed;">
  <colgroup>
    <col span="1" style="width: 40%;">
    <col span="1" style="width: 15%;">
    <col span="1" style="width: 45%;">
  </colgroup>
  <tbody>
    <tr>
      <td style="background-color:#D0F0C0;"><b>Mother and Father Ethnicity Fields</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
    </tr>
    <tr>
      <td>Mother of Hispanic Origin?--Mexican,<br>Father of Hispanic Origin?--Mexican</td>
      <td>METHNIC1, <br>FETHNIC1</td>
      <td>component[HispanicMexican].valueCoding</td>
    </tr>
    <tr>
      <td>Mother of Hispanic Origin?--Puerto Rican, <br>Father of Hispanic Origin?--Puerto Rican</td>
      <td>METHNIC2, <br>FETHNIC2</td>
      <td>component[HispanicPuertoRican].valueCoding</td>
    </tr>
    <tr>
      <td>Mother of Hispanic Origin?--Cuban, <br>Father of Hispanic Origin?--Cuban</td>
      <td>METHNIC3, <br>FETHNIC3</td>
      <td>component[HispanicCuban].valueCoding</td>
    </tr>
    <tr>
      <td>Mother of Hispanic Origin?--Other, <br>Father of Hispanic Origin?--Other</td>
      <td>METHNIC4, <br>FETHNIC4</td>
      <td>component[HispanicOther].valueCoding</td>
    </tr>
  </tbody>
</table>

<br><br>

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%; table-layout:fixed;">
  <colgroup>
    <col span="1" style="width: 40%;">
    <col span="1" style="width: 15%;">
    <col span="1" style="width: 45%;">
  </colgroup>
  <tbody>
    <tr>
      <td style="background-color:#D0F0C0;"><b>Mother and Father Race Fields</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>FHIR Field</b></td>
    </tr>
   <tr>
      <td>Mother’s Race--White,<br>Father’s Race--White</td>
      <td>MRACE1,<br>FRACE1</td>
      <td>component[White].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Black or African American,<br>Father’s Race--Black or African American</td>
      <td>MRACE2,<br>FRACE2</td>
      <td>component[BlackOrAfricanAmerican].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--American Indian or Alaska Native,<br>Father’s Race--American Indian or Alaska Native</td>
      <td>MRACE3,<br>FRACE3</td>
      <td>component[AmericanIndianOrAlaskanNative].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Asian Indian,<br>Father’s Race--Asian Indian</td>
      <td>MRACE4,<br>FRACE4</td>
      <td>component[AsianIndian].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Chinese,<br>Father’s Race--Chinese</td>
      <td>MRACE5,<br>FRACE5</td>
      <td>component[Chinese].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Filipino,<br>Father’s Race--Filipino</td>
      <td>MRACE6,<br>FRACE6</td>
      <td>component[Filipino].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Japanese,<br>Father’s Race--Japanese</td>
      <td>MRACE7,<br>FRACE7</td>
      <td>component[Japanese].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Korean,<br>Father’s Race--Korean</td>
      <td>MRACE8,<br>FRACE8</td>
      <td>component[Korean].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Vietnamese,<br>Father’s Race--Vietnamese</td>
      <td>MRACE9,<br>FRACE9</td>
      <td>component[Vietnamese].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Other Asian,<br>Father’s Race--Other Asian</td>
      <td>MRACE10,<br>FRACE10</td>
      <td>component[OtherAsian].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Native Hawaiian,<br>Father’s Race--Native Hawaiian</td>
      <td>MRACE11,<br>FRACE11</td>
      <td>component[NativeHawaiian].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Guamanian or Chamorro,<br>Father’s Race--Guamanian or Chamorro</td>
      <td>MRACE12,<br>FRACE12</td>
      <td>component[GuamanianOrChamorro].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Samoan,<br>Father’s Race--Samoan</td>
      <td>MRACE13,<br>FRACE13</td>
      <td>component[Samoan].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Other Pacific Islander,<br>Father’s Race--Other Pacific Islander</td>
      <td>MRACE14,<br>FRACE14</td>
      <td>component[OtherPacificIslander].valueBoolean</td>
    </tr>
    <tr>
      <td>Mother’s Race--Other,<br>Father’s Race--Other</td>
      <td>MRACE15,<br>FRACE15</td>
      <td>component[OtherRace].valueBoolean</td>
    </tr>
  </tbody>
</table>

#### Additional Checks

Records that contain the minimal set of required fields will be processed by NCHS.  Reports on the completeness of each record will be shared with jurisdictions through the same channels as is done for IJE-formatted records.  This process may be revised to introduce more stringent checking of submissions as NCHS and Jurisdictions gain experience with the process.

#### Validation Errors

For many fields, the value provided must be one that is found in the corresponding Vital Records Common Library FHIR IG Value Set for the field. Otherwise, the following Error Message will be returned for each violation:

- `Unable to find IJE Field mapping for FHIR Component field value 'string'`

There are additional Errors that may be returned when a record cannot be accepted, including some IJE fields that are not retained by NCHS, but must be valid if provided.

| **IJE Field** | **Error Message** | **Clarification** |
| --- | --- | --- |
| BSTATE | FHIR field BirthRecordState too long for IJE field BSTATE of length 2 | The birth state must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). [Value Set - States, Territories and Provinces Vital Records - Vital Records Common Library (VRCL) FHIR Implementation Guide v2.0.0](https://hl7.org/fhir/us/vr-common-library/STU2/ValueSet-ValueSet-states-territories-provinces-vr.html) |
| METHNICE, FETHNICE | Unable to find IJE METHNICE or FETHNICE mapping for FHIR HispanicCode field value 'string' | METHNICE and FETHNICE is a field that is returned to the jurisdictions in the multi-race file. If including in records to share as part of IJE, the values reported must be valid. State Field: [Value Set - HispanicOrigin Vital Records - Vital Records Common Library (VRCL) FHIR Implementation Guide v2.0.0](https://hl7.org/fhir/us/vr-common-library/STU2/ValueSet-ValueSet-hispanic-origin-vr.html), or [Value Set - Jurisdictions Vital Records - Vital Records Common Library (VRCL) FHIR Implementation Guide v2.0.0](https://hl7.org/fhir/us/vr-common-library/STU2/ValueSet-ValueSet-jurisdiction-vr.html) for extension |
| BSTATE | FHIR field contains string too long for IJE field BSTATE of length 2 | BSTATE is a required field, and the value must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). |
| BSTATE | JurisdictionID was not identified |  BSTATE is a required field, and the value must be a valid 2-character (alphabetic) state/jurisdiction (without special characters and blanks). |
| IDOB_YR (represented by event_year) | FHIR field BirthRecordYear contains string too long for IJE field IDOB_YR of length 4 | The year of the event must be a valid 4 numeric digit year (YYYY) without special characters or blanks. |
| Event Year | FHIR cannot process records from EventYear year; please resubmit via IJE | Until the 2022 data year is closed, NVSS may not be able to process older years via FHIR. |
| FHIR Bundle Event Year | FHIR BUNDLE Parameter event year should match the birth record Year. | IDOB_YR must agree with the year included in the FHIR BUNDLE parameter. |
| FHIR Bundle Source Endpoint | FHIR Bundle Source Endpoint is missing | The actual message source address or id needs to be specified for the endpoint. |
| FILENO (certificate number) | Certificate Number is missing, or the certificate length is greater than 6 | FILENO is a required field and must be exactly 6 digits in length. Only positive numbers are allowed for this field. |
| FILENO (certificate number) | Certificate Number exceeds expected value | If the Certificate Number is not within the expected range for the Jurisdiction/Year/Event then it will be rejected. You must first contact your VSS to adjust your expected range or ranges before re-submitting these records in order for them to be accepted. |
{:.grid}

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

| **Error Message** | **Clarification** |
| --- | --- |
| The IJE version of the FHIR message did not reach the required length or fields required. | The Birth Record could not be used to generate a completed IJE record. Review the record to determine which fields are being flagged and are causing the issue. |
{:.grid}

