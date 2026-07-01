### Business Rules for Birth Record Submissions

Version 2.0

**Last updated** : July 1, 2026

**Table of Content**

[Required Fields](#required-fields)

[Additional Checks](#additional-checks)

[Medical Logic Checks](#medical-logic-checks)

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

#### Medical Logic Checks

The following combinations of field values will also result in an error being returned for a submission. An Error Message with a format of "Invalid combination of Field 1 and Field 2" will be returned for each invalid combination reported.

##### Facility, Prenatal Care, and Pregnancy History

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%; table-layout:fixed;">
  <colgroup>
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 24%;">
  </colgroup>
  <tbody>
    <tr>
      <td style="background-color:#D0F0C0;"><b>Field 1 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Field 2 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Why It Should Error</b></td>
    </tr>
    <tr>
      <td>Place where birth occurred</td>
      <td>BPLACE</td>
      <td>Any value except Hospital<br>(including Home intended / Home not intended)</td>
      <td>Mother transferred for delivery</td>
      <td>TRAN</td>
      <td>Yes / hosp-trans</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">home-to-hospital does not count as maternal transfer, and if TRAN=Yes, the place of birth must be Hospital.</a></td>
    </tr>
    <tr>
      <td>Mother transferred for delivery</td>
      <td>TRAN</td>
      <td>No</td>
      <td>Facility mother transferred from</td>
      <td>NFACL</td>
      <td>Populated</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">If transfer status is No, the source-facility name must be blank.</a></td>
    </tr>
    <tr>
      <td>Mother transferred for delivery</td>
      <td>TRAN</td>
      <td>Yes</td>
      <td>Facility mother transferred from</td>
      <td>NFACL</td>
      <td>Blank</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">If transfer status is Yes, enter name of facility. If name of facility is not known, enter "Unknown".</a></td>
    </tr>
    <tr>
      <td>No prenatal care</td>
      <td>PNC</td>
      <td>No prenatal care</td>
      <td>Total prenatal visits / first prenatal date</td>
      <td>NPREV / DOFP_*</td>
      <td>NPREV&gt;0 or actual date entered</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/06.htm">Inconsistent. “No prenatal care” requires visits = 0, and the first-prenatal-visit date should not be an actual date.</a></td>
    </tr>
    <tr>
      <td>Total prenatal visits</td>
      <td>NPREV</td>
      <td>0</td>
      <td>No prenatal care / first prenatal date</td>
      <td>PNC / DOFP_*</td>
      <td>No-prenatal box not checked or<br>actual date entered</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/07.htm">If visits = 0, the no-prenatal-care box should be checked; CDC edit text also flags a date + 0 visits as inconsistent.</a></td>
    </tr>
    <tr>
      <td>Previous live births now living + now dead</td>
      <td>PLBL + PLBD</td>
      <td>0 total / none</td>
      <td>Date of last live birth</td>
      <td>MLLB / YLLB</td>
      <td>Populated</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">Non-applicable. The last-live-birth date is only collected if there were previous live-born infants.</a></td>
    </tr>
    <tr>
      <td>Other pregnancy outcomes</td>
      <td>POPO</td>
      <td>0 / none</td>
      <td>Date of last other pregnancy outcome</td>
      <td>MOPO / YOPO</td>
      <td>Populated</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">Non-applicable. The last-other-pregnancy-outcome date is only collected if prior other outcomes exist.</a></td>
    </tr>
  </tbody>
</table>

<br><br>

##### Risk Factors, Infections, and Delivery Method

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%; table-layout:fixed;">
  <colgroup>
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 24%;">
  </colgroup>
  <tbody>
    <tr>
      <td style="background-color:#D0F0C0;"><b>Field 1 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Field 2 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Why It Should Error</b></td>
    </tr>
    <tr>
      <td>Prepregnancy diabetes</td>
      <td>PDIAB</td>
      <td>Yes</td>
      <td>Gestational diabetes</td>
      <td>GDIAB</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/14.htm">Select either prepregnancy or gestational diabetes, not both.</a></td>
    </tr>
    <tr>
      <td>Prepregnancy hypertension</td>
      <td>PHYPE</td>
      <td>Yes</td>
      <td>Gestational hypertension</td>
      <td>GHYPE</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/14.htm">Select either prepregnancy or gestational hypertension, not both.</a></td>
    </tr>
    <tr>
      <td>None of the above (risk factors)</td>
      <td>NOA01</td>
      <td>Yes</td>
      <td>Any specific risk factor</td>
      <td>PDIAB / GDIAB / PHYPE / GHYPE / EHYPE / PPB / INFT / PCES</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">“None of the above” cannot be selected with a specific risk factor.</a></td>
    </tr>
    <tr>
      <td>Previous cesarean</td>
      <td>PCES</td>
      <td>Yes</td>
      <td>Number of previous cesareans</td>
      <td>NPCES</td>
      <td>Blank or 0</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">If previous cesarean is checked, a number must be entered.</a></td>
    </tr>
    <tr>
      <td>None of the above (infections)</td>
      <td>NOA02</td>
      <td>Yes</td>
      <td>Any infection</td>
      <td>GON / SYPH / CHAM / HEPB / HEPC</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">“None of the above” cannot be selected with a specific infection.</a></td>
    </tr>
    <tr>
      <td>Successful external cephalic version</td>
      <td>ECVS</td>
      <td>Yes</td>
      <td>Failed external cephalic version</td>
      <td>ECVF</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">Successful and failed ECV cannot both be selected.</a></td>
    </tr>
    <tr>
      <td>Final route and method of delivery</td>
      <td>ROUT</td>
      <td>Anything except Cesarean</td>
      <td>Trial of labor attempted</td>
      <td>TLAB</td>
      <td>Yes or No</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">Non-applicable. TLAB only applies when the final route is Cesarean.</a></td>
    </tr>
    <tr>
      <td>Final route and method of delivery</td>
      <td>ROUT</td>
      <td>Cesarean</td>
      <td>Trial of labor attempted</td>
      <td>TLAB</td>
      <td>Blank</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">When Cesarean is selected, a Yes/No or unknown response for trial of labor is required.</a></td>
    </tr>
  </tbody>
</table>

<br><br>

##### Newborn Items

<table align="left" border="1" cellpadding="1" cellspacing="1" style="width:100%; table-layout:fixed;">
  <colgroup>
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 16%;">
    <col span="1" style="width: 9%;">
    <col span="1" style="width: 13%;">
    <col span="1" style="width: 24%;">
  </colgroup>
  <tbody>
    <tr>
      <td style="background-color:#D0F0C0;"><b>Field 1 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Field 2 Description</b></td>
      <td style="background-color:#D0F0C0;"><b>IJE Field</b></td>
      <td style="background-color:#D0F0C0;"><b>Selected Value</b></td>
      <td style="background-color:#D0F0C0;"><b>Why It Should Error</b></td>
    </tr>
    <tr>
      <td>Apgar at 5 minutes</td>
      <td>APGAR5</td>
      <td>6–10</td>
      <td>Apgar at 10 minutes</td>
      <td>APGAR10</td>
      <td>Entered</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/32.htm">Non-applicable. 10-minute score when the 5-minute score is &lt; 6 or unknown.</a></td>
    </tr>
    <tr>
      <td>Plurality</td>
      <td>PLUR</td>
      <td>1</td>
      <td>Set order</td>
      <td>SORD</td>
      <td>Any entered value</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/34.htm">Non-applicable. For a singleton, set order is left blank / coded not applicable.</a></td>
    </tr>
    <tr>
      <td>Plurality</td>
      <td>PLUR</td>
      <td>1</td>
      <td>Number of infants in delivery born alive</td>
      <td>LIVEB</td>
      <td>Any entered value</td>
      <td><a href="https://www.cdc.gov/nchs/nvss/facility-worksheets-guide/35.htm">Non-applicable. For a singleton, LIVEB is left blank / coded not applicable.</a></td>
    </tr>
    <tr>
      <td>Plurality</td>
      <td>PLUR</td>
      <td>&gt;1</td>
      <td>Set order / live born</td>
      <td>SORD / LIVEB</td>
      <td>Greater than PLUR</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">For multiples, set order must be &lt;= PLUR, and live born cannot exceed plurality.</a></td>
    </tr>
    <tr>
      <td>None of the above (congenital anomalies)</td>
      <td>NOA55</td>
      <td>Yes</td>
      <td>Any congenital anomaly</td>
      <td>ANEN / MNSB / CCHD / CDH / OMPH / GAST / LIMB / CL / CP / DOWN / CDIS / HYPO</td>
      <td>Yes</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">“None of the above” cannot be selected with a listed anomaly.</a></td>
    </tr>
    <tr>
      <td>Karyotype status selected</td>
      <td>DOWC / DOWP / CDIC / CDIP</td>
      <td>Yes</td>
      <td>Parent anomaly not selected</td>
      <td>DOWN / CDIS</td>
      <td>No</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">Karyotype confirmed/pending cannot be checked unless the corresponding parent anomaly is checked.</a></td>
    </tr>
    <tr>
      <td>Infant transferred within 24 hours</td>
      <td>ITRAN</td>
      <td>No</td>
      <td>Facility infant transferred to</td>
      <td>FTRAN</td>
      <td>Populated</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">If infant transfer status is No, the destination-facility field must be blank.</a></td>
    </tr>
    <tr>
      <td>Infant transferred within 24 hours</td>
      <td>ITRAN</td>
      <td>Yes</td>
      <td>Facility infant transferred to</td>
      <td>FTRAN</td>
      <td>Blank</td>
      <td><a href="https://www.cdc.gov/nchs/data/dvs/birth-edit-specifications.pdf">If infant transfer status is Yes, enter name of facility. If name of facility is not known, enter "Unknown".</a></td>
    </tr>
  </tbody>
</table>

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