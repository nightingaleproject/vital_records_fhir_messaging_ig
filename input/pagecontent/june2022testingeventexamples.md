
### Description of Testing Process
This page illustrates the use of the profiles in the Vital Records Messaging IG using the records from the June 2022 NCHS Testing Event.
The intent is to show the complete content of communication between a jurisdiction and NCHS for each of the three test records.

We will illustrate using the first test decedent, [Twila Hilty](june2022testingeventexamples.html#record-1---twila-hilty), but the process and artifacts are the same for the [second](june2022testingeventexamples.html#record-2---fidelia-alsup) and [third](http://build.fhir.org/ig/nightingaleproject/vital_records_fhir_messaging_ig/branches/main/june2022testingeventexamples.html#record-3---davis-lineberry) test decedents.

The testing process proceeds as follows:
1. The jurisdiction (MA) generates [Death Record 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_record_537_example.json) based on the data in the Record 1 column of the [spreadsheet](june2022testingeventexamples.html#test-input-in-spreadsheet-form), and then builds [Death Record Submission Message 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_message_538_example.json) and sends this to NCHS via the NCHS Messaging API.
2. NCHS receives the message, and sends [Death Record Submission Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_acknowledgement_message_537_example.json) to the jurisdiction for receipt of that message; you can tell what message is being acknowledged by comparing the MessageHeader.response.identifier in the acknowledgement to the MessageHeader.id of the original message.
3. Some time later, NCHS sends [Cause of Death Coding Message 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_coding_response_message_537_example.json) to the jurisdiction, and the jurisdiction responds with [Cause of Death Coding Message Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_acknowledgement_message_537_example.json)
4. Some time later, NCHS sends [Demographic Coding Message 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_coding_response_message_537_example.json) to the jurisdiction, and the jurisdiction responds with [Demographic Coding Message Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_acknowledgement_message_537_example.json)


### Test Input in Spreadsheet Form
The specification of tests for the June 2022 Testing event was provided in this spreadsheet.

| Pos  | Length | Descr   | Var  | Record  1   | Record 2        | Record  3     | Notes         |
| ---- | ------ | --------| --------------- | ----------- | --------------- | ------------- | ------------- |
| 1    | 4      | Date of Death--Year   | DOD\_YR         | 2022   | 2022 | 2022         |      |
| 5    | 2      | State, U.S. Territory or Canadian Province of Death - code| DSTATE          | CT     | CT   | CT|      |
| 7    | 6      | Certificate Number    | FILENO          | 000001 | 000002          | 000003       |      |
| 14   | 12     | Auxiliary State file number         | AUXNO| ␢      | ␢    | ␢ |      |
| 26   | 1      | Source flag: paper/electronic       | MFILED          | 0      | 2    | 0 |      |
| 27   | 50     | Decedent's Legal Name--Given        | GNAME| Twila  | Fidelia         | Davis        |      |
| 77   | 1      | Decedent's Legal Name--Middle       | MNAME| R      | ␢    | ␢ |      |
| 78   | 50     | Decedent's Legal Name--Last         | LNAME| Hilty  | Alsup| Lineberry    |      |
| 128  | 10     | Decedent's Legal Name--Suffix       | SUFF | ␢      | ␢    | Jr|      |
| 139  | 50     | Father's Surname      | FLNAME          | Brown  | Dill | Lineberry    |      |
| 166  | 50     | Middle Name of Decedent   | DMIDDLE         | Roxanne| ␢    | ␢         | This data element was added to test one 'Must Support' eexample. |
| 189  | 1      | Sex        | SEX  | F      | F    | M |      |
| 191  | 9      | Soc-Sec-Num| S S N| 531869507 | 478151044       | 429471420    |      |
| 200  | 1      | Decedent's Age--Type  | AGETYPE         | 1      | 1    | 2 |      |
| 201  | 3      | Decedent's Age--Units | AGE  | 020    | 62   | 010          |      |
| 204  | 1      | Decedent's Age--Edit Flag| AGE\_BYPASS     | 0      | 0    | 0 |      |
| 205  | 4      | Date of Birth--Year   | DOB\_YR         | 2002   | 1960 | 2021         |      |
| 209  | 2      | Date of Birth--Month  | DOB\_MO         | 01     | 02   | 03|      |
| 211  | 2      | Date of Birth--Day    | DOB\_DY         | 01     | 29   | 04|      |
| 213  | 2      | Birthplace--Country   | BPLACE\_CNT     | US     | US   | US|      |
| 215  | 2      | State, U.S. Territory or Canadian Province of Birth - code| BPLACE\_ST      | CT     | CA<br>(California)         | CO|      |
| 217  | 5      | Decedent's Residence--City          | CITYC| 37000<br>(Hartford)  | 13014<br>(Chico)| 45050<br>(Laramie)      | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 222  | 3      | Decedent's Residence--County        | COUNTYC         | 003<br>(Hartford)    | 007<br>(Butte)  | 001<br>(Albany)         | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 225  | 2      | State, U.S. Territory or Canadian Province of Decedent's residence - code          | STATEC          | CT     | CA<br>(California)         | WY| These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 227  | 2      | Decedent's Residence--Country       | COUNTRYC        | US     | US   | US|      |
| 229  | 1      | Decedent's Residence--Inside City Limits       | LIMITS          | Y      | Y    | Y |      |
| 230  | 1      | Marital Status        | MARITAL         | S<br>(Never Married) | A<br>(Married but Separated)  | S<br>(Never Married)    | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 231  | 1      | Marital Status--Edit Flag| MARITAL\_BYPASS | 0      | 0    | 0 |      |
| 232  | 1      | Place of Death        | DPLACE          | 1<br>(Inpatient)     | 3<br>(Dead on Arrival)     | 1<br>(Inpatient)        | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 233  | 3      | County of Death Occurrence          | COD  | 001    | 001  | 001          | \[The actual county name will depend on the State of Occurrence\] |
| 236  | 1      | Method of Disposition | DISP | B<br>(Burial)        | O<br>(Other)    | B<br>(Burial)| These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 237  | 2      | Date of Death--Month  | DOD\_MO         | 01     | 03   | 01|      |
| 239  | 2      | Date of Death--Day    | DOD\_DY         | 10     | 16   | 17|      |
| 241  | 4      | Time of Death         | TOD  | 1000<br>(10:00am)    | 1040<br>(10:40am)          | 1823<br>(6:23pm)        | The text in parenthesis is provided only for user clarity.        |
| 245  | 1      | Decedent's Education  | DEDUC| 8<br>(Doctorate)     | 4<br>(Some College)        | 1<br>(No Education)     | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 246  | 1      | Decedent's Education--Edit Flag     | DEDUC\_BYPASS   | 0      | 0    | 0 |      |
| 247  | 1      | Decedent of Hispanic Origin?--Mexican          | DETHNIC1        | N      | N    | N |      |
| 248  | 1      | Decedent of Hispanic Origin?--Puerto Rican     | DETHNIC2        | N      | H<br>(Yes)      | N | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 249  | 1      | Decedent of Hispanic Origin?--Cuban | DETHNIC3        | N      | H<br>(Yes)      | N | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 250  | 1      | Decedent of Hispanic Origin?--Other | DETHNIC4        | N      | N    | N |      |
| 251  | 20     | Decedent of Hispanic Origin?--Other, Literal   | DETHNIC5        | ␢      | ␢    | ␢ |      |
| 271  | 1      | Decedent's Race--White| RACE1| Y<br>(Yes)| N    | Y<br>(Yes)   | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 272  | 1      | Decedent's Race--Black or African American     | RACE2| N      | Y<br>(Yes)      | N |      |
| 273  | 1      | Decedent's Race--American Indian or Alaska Native         | RACE3| N      | N    | Y<br>(Yes)   | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 274  | 1      | Decedent's Race--Asian Indian       | RACE4| N      | N    | N |      |
| 275  | 1      | Decedent's Race--Chinese | RACE5| N      | N    | N |      |
| 276  | 1      | Decedent's Race--Filipino| RACE6| N      | N    | N |      |
| 277  | 1      | Decedent's Race--Japanese| RACE7| N      | N    | N |      |
| 278  | 1      | Decedent's Race--Korean  | RACE8| N      | N    | N |      |
| 279  | 1      | Decedent's Race--Vietnamese         | RACE9| N      | N    | N |      |
| 280  | 1      | Decedent's Race--Other Asian        | RACE10          | N      | N    | N |      |
| 281  | 1      | Decedent's Race--Native Hawaiian    | RACE11          | N      | N    | N |      |
| 282  | 1      | Decedent's Race--Guamanian or Chamorro         | RACE12          | N      | N    | N |      |
| 283  | 1      | Decedent's Race--Samoan  | RACE13          | N      | N    | N |      |
| 284  | 1      | Decedent's Race--Other Pacific Islander        | RACE14          | N      | N    | N |      |
| 285  | 1      | Decedent's Race--Other| RACE15          | N      | N    | N |      |
| 286  | 30     | Decedent's Race--First American Indian or Alaska Native Literal         | RACE16          | ␢      | ␢    | Cheyenne     |      |
| 316  | 30     | Decedent's Race--Second American Indian or Alaska Native Literal        | RACE17          | ␢      | ␢    | ␢ |      |
| 346  | 30     | Decedent's Race--First Other Asian Literal     | RACE18          | ␢      | ␢    | ␢ |      |
| 376  | 30     | Decedent's Race--Second Other Asian Literal    | RACE19          | ␢      | ␢    | ␢ |      |
| 406  | 30     | Decedent's Race--First Other Pacific Islander Literal     | RACE20          | ␢      | ␢    | ␢ |      |
| 436  | 30     | Decedent's Race--Second Other Pacific Islander Literal    | RACE21          | ␢      | ␢    | ␢ |      |
| 466  | 30     | Decedent's Race--First Other Literal| RACE22          | ␢      | ␢    | ␢ |      |
| 496  | 30     | Decedent's Race--Second Other Literal          | RACE23          | ␢      | ␢    | ␢ |      |
| 574  | 1      | Decedent's Race--Missing | RACE\_MVR       | ␢      | ␢    | ␢ | May provide a value for this item if required by your system; it is optional for NCHS.  |
| 575  | 40     | Occupation -- Literal (REQUIRED)    | OCCUP| Teacher| Carpenter       | Infant       |      |
| 618  | 40     | Industry -- Literal (REQUIRED)      | INDUST          | Education | Construction    | Never Worked |      |
| 661  | 6      | Infant Death/Birth Linking - birth certificate number     | BCNO | ␢      | ␢    | 001023       |      |
| 667  | 4      | Infant Death/Birth Linking - year of birth     | IDOB\_YR        | ␢      | ␢    | 2021         |      |
| 671  | 2      | Infant Death/Birth Linking - State, U.S. Territory or Canadian Province of Birth - code       | BSTATE          | ␢      | ␢    | CA<br>(California)      | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 689  | 4      | Date of Registration--Year          | DOR\_YR         | ␢      | 03   | ␢ |      |
| 693  | 2      | Date of Registration--Month         | DOR\_MO         | ␢      | 18   | ␢ |      |
| 695  | 2      | Date of Registration--Day| DOR\_DY         | ␢      | 2022 | ␢ |      |
| 701  | 1      | Manner of Death       | MANNER          | N<br>(Natural)       | A<br>(Accident) | P<br>(Pending)          | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 976  | 1      | Was Autopsy performed | AUTOP| N      | N    | U<br>(Not Classifiable) | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 977  | 1      | Were Autopsy Findings Available to Complete the Cause of Death?         | AUTOPF          | X<br>(Not Applicable)| X<br>(Not Applicable)      | U<br>(Not Classifiable) | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 978  | 1      | Did Tobacco Use Contribute to Death?| TOBAC| U<br>(Not Classifiable)         | U<br>(Not Classifiable)    | N | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 979  | 1      | Pregnancy  | PREG | 2<br>(Pregnant at time of death)| 8<br>(Not Applicable)      | 8<br>(Not Applicable)   | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 980  | 1      | If Female--Edit Flag: From EDR only | PREG\_BYPASS    | 0      | 0    | 0 |      |
| 981  | 2      | Date of injury--month | DOI\_MO         | ␢      | 03   | ␢ |      |
| 983  | 2      | Date of injury--day   | DOI\_DY         | ␢      | 16   | ␢ |      |
| 985  | 4      | Date of injury--year  | DOI\_YR         | ␢      | 2022 | ␢ |      |
| 989  | 4      | Time of injury        | TOI\_HR         | ␢      | 1015<br>(10:15am)          | ␢ | The text in parenthesis is provided only for user clarity.        |
| 993  | 1      | Injury at work        | WORKINJ         | ␢      | Y<br>(Yes)      | ␢ | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 994  | 30     | Title of Certifier    | CERTL| D<br>(Certifying Physician)     | P<br>(Prononuncing and Certifying Physician)        | ␢ | This is a hybrid field.  Codes D, P and M are most commonly used.  Full text is used when another individual is legally allowed to certify.  May be left blank. |
| 1025 | 12     | Auxiliary State file number         | AUXNO2          | ␢      | ␢    | ␢ |      |
| 1037 | 30     | State Specific Data   | STATESP         | ␢      | 20220101        | ␢ |      |
| 1067 | 2      | Surgery Date--month   | SUR\_MO         | 01     | ␢    | ␢ |      |
| 1069 | 2      | Surgery Date--day     | SUR\_DY         | 10     | ␢    | ␢ |      |
| 1071 | 4      | Surgery Date--year    | SUR\_YR         | 2022   | ␢    | ␢ |      |
| 1075 | 1      | Time of Injury Unit   | TOI\_UNIT       | ␢      | ␢    | ␢ |      |
| 1485 | 10     | Decedent's Residence - Street number| STNUM\_R        | 4437   | 1829 | 2722         | This is Address Style 1 (parsed fields).  Use this style if available, or Address Style 2 if the individual components are not available  |
| 1495 | 10     | Decedent's Residence - Pre Directional         | PREDIR\_R       | North  | ␢    | N |
| 1505 | 28     | Decedent's Residence - Street name  | STNAME\_R       | Charles| Main | Pin Oak      |
| 1533 | 10     | Decedent's Residence - Street designator       | STDESIG\_R      | Avenue | St   | Dr|
| 1543 | 10     | Decedent's Residence - Post Directional        | POSTDIR\_R      | Southeast | ␢    | ␢ |
| 1553 | 7      | Decedent's Residence - Unit or apt number      | UNITNUM\_R      | Apt 2B | ␢    | ␢ |
| 1560 | 28     | Decedent's Residence - City or Town name       | CITYTEXT\_R     | Hartford  | Chico| Laramie      | Always submit these parsed components no matter which Address Style is used  |
| 1588 | 9      | Decedent's Residence - ZIP code     | ZIP9\_R         | 06107  | 95926| 82070        |
| 1597 | 28     | Decedent's Residence - County       | COUNTYTEXT\_R   | Hartford  | Butte| Albany       |
| 1625 | 28     | Decedent's Residence - State name   | STATETEXT\_R    | Connecticut          | California      | Wyoming      |
| 1653 | 28     | Decedent's Residence - COUNTRY name | COUNTRYTEXT\_R  | United States        | United States   | United States|
| 1681 | 50     | Long string address for decedent's place of residence same as above but allows states to choose the way they capture information. | ADDRESS\_R      | 4437 North Charles Avenue Southeast Apt 2B | 1829 Main St    | 2722 N Pin Oak Dr       | This is Address Style 2 (combined address).  Use this only if Address Style 1 is not available        |
| 2109 | 50     | Place of Injury- literal | POILITRL        | ␢      | Street          | ␢ |      |
| 2159 | 250    | Describe How Injury Occurred        | HOWINJ          | ␢      | Unrestrained ejected driver in rollover motor vehicle accident | ␢ |      |
| 2409 | 30     | If Transportation Accident, Specify | TRANSPRT        | ␢      | DR<br>(Driver/Operator)    | ␢ | These are coded data elements. The text in parenthesis is provided only for user clarity.  |
| 2542 | 120    | Cause of Death Part I Line a        | COD1A| Cardiopulmonary arrest          | Blunt head trauma          | Pending      |      |
| 2662 | 20     | Cause of Death Part I Interval, Line a         | INTERVAL1A      | 4 Hours| 30 Minutes      | ␢ |      |
| 2682 | 120    | Cause of Death Part I Line b        | COD1B| Eclampsia | Automobile accident        | ␢ |      |
| 2802 | 20     | Cause of Death Part I Interval, Line b         | INTERVAL1B      | 3 Months  | 30 Minutes      | ␢ |      |
| 2822 | 120    | Cause of Death Part I Line c        | COD1C| ␢      | Epilepsy        | ␢ |      |
| 2942 | 20     | Cause of Death Part I Interval, Line c         | INTERVAL1C      | ␢      | 20 Years        | ␢ |      |
| 2962 | 120    | Cause of Death Part I Line d        | COD1D| ␢      | ␢    | ␢ |      |
| 3082 | 20     | Cause of Death Part I Interval, Line d         | INTERVAL1D      | ␢      | ␢    | ␢ |      |
| 3102 | 240    | Cause of Death Part II| OTHERCONDITION  |        | Hypertension, Depression, Migraine       | ␢ |      |
| 4430 | 1      | Blank for One-Byte Field 1          | PLACE1\_1       | Y      | ␢    | ␢ |      |
| 4431 | 1      | Blank for One-Byte Field 2          | PLACE1\_2       | ␢      | ␢    | ␢ |      |
| 4432 | 1      | Blank for One-Byte Field 3          | PLACE1\_3       | ␢      | ␢    | ␢ |      |
| 4433 | 1      | Blank for One-Byte Field 4          | PLACE1\_4       | ␢      | ␢    | ␢ |      |
| 4434 | 1      | Blank for One-Byte Field 5          | PLACE1\_5       | ␢      | ␢    | ␢ |      |
| 4435 | 1      | Blank for One-Byte Field 6          | PLACE1\_6       | ␢      | ␢    | ␢ |      |
| 4436 | 8      | Blank for Eight-Byte Field 1        | PLACE8\_1       | ␢      | 00000033        | ␢ |      |
| 4444 | 8      | Blank for Eight-Byte Field 2        | PLACE8\_2       | ␢      | ␢    | ␢ |      |
| 4452 | 8      | Blank for Eight-Byte Field 3        | PLACE8\_3       | ␢      | ␢    | ␢ |      |
| 4460 | 20     | Blank for Twenty-Byte Field         | PLACE20         | ␢      | ␢    | 043-A-110234 |      |
{: .grid }

### Record 1 - Twila Hilty

| **Seq#** |  **JSON Content**   |  **Direction**  |
| :---------: | ------------- | ------------ |
| 1 | [Death Record 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_record_537_example.json) | EDRS to NCHS |
| 1 | [Death Record Submission Message 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_message_537_example.json) | EDRS to NCHS |
| 2 | [Death Record Submission Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_acknowledgement_message_537_example.json) | NCHS to EDRS|
| 3 |[Cause of Death Coding Message 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_coding_response_message_537_example.json) | NCHS to EDRS |
| 4 | [Cause of Death Coding Message Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_acknowledgement_message_537_example.json) | EDRS to NCHS|
| 5 |[Demographic Coding Message 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_coding_response_message_537_example.json) | NCHS to EDRS |
| 6 | [Demographic Coding Message Acknowledgement 537](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_acknowledgement_message_537_example.json) | EDRS to NCHS|
{: .grid }


### Record 2 - Fidelia Alsup
Note: Coding for the cause of death for this record cannot be done automatically, so codes of M99.9 are returned.

| **Seq#** |  **JSON Content**   |  **Direction**  |
| :---------: | ------------- | ------------ |
| 1 | [Death Record 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_record_538_example.json) | EDRS to NCHS |
| 1 | [Death Record Submission Message 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_message_538_example.json) | EDRS to NCHS |
| 2 | [Death Record Submission Acknowledgement 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_acknowledgement_message_538_example.json) | NCHS to EDRS|
| 3 |[Cause of Death Coding Message 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_coding_response_message_538_example.json) | NCHS to EDRS |
| 4 | [Cause of Death Coding Message Acknowledgement 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_acknowledgement_message_538_example.json) | EDRS to NCHS|
| 5 |[Demographic Coding Message 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_coding_response_message_538_example.json) | NCHS to EDRS |
| 6 | [Demographic Coding Message Acknowledgement 538](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_acknowledgement_message_538_example.json) | EDRS to NCHS|
{: .grid }

### Record 3 - Davis Lineberry

| **Seq#** |  **JSON Content**   |  **Direction**  |
| :---------: | ------------- | ------------ |
| 1 | [Death Record 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_record_539_example.json) | EDRS to NCHS |
| 1 | [Death Record Submission Message 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_message_539_example.json) | EDRS to NCHS |
| 2 | [Death Record Submission Acknowledgement 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/submission_acknowledgement_message_539_example.json) | NCHS to EDRS|
| 3 |[Cause of Death Coding Message 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_coding_response_message_539_example.json) | NCHS to EDRS |
| 4 | [Cause of Death Coding Message Acknowledgement 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/cause_of_death_acknowledgement_message_539_example.json) | EDRS to NCHS|
| 5 |[Demographic Coding Message 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_coding_response_message_539_example.json) | NCHS to EDRS |
| 6 | [Demographic Coding Message Acknowledgement 539](https://github.com/nightingaleproject/vital_records_fhir_messaging_ig/blob/main/June2022TestingEventContent/demographics_acknowledgement_message_539_example.json) | EDRS to NCHS|
{: .grid }