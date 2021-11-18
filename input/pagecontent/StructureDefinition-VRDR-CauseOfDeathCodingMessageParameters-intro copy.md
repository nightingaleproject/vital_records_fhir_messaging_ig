* Record Axis Codes (1..20)
  * record_cause_of_death 0..*
  * Ordered list of ICD-10 code (no duplicates)
    * First list underlying code
    * Where pregnancy status changes underlying code, 2nd code is what the underlying code would be otherwise with flag
    * All other codes in alphanumeric order
      * How is ‘pregnancy checkbox’ encoded?
* Entity Axis Codes: (1..20)
  * lineNumber + ICD-10 code


  ICD-10 codes are in the TRANSAX dialect of ICD-10.   I14.9 becomes I149.