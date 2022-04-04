
* All coded fields (strings of length 1) are encoded as per the definition in the [MRE documents](index.html#cdc-nchs-documentation).
* All parameters are named as per the MRE definitions.

| **Group** | **IJE Name**  |  **Encoding**  |
| ---------- | ---------------| ------------- |
| input_ethnicity   |  DETHNIC1-4    | string(1)    |
| input_race_flags   |  RACE1-15    | string(1)   |
| input_race_literals   |  RACE16-23    | string    |
| coded_race | RACE1E-8E, RACE16c-23C | string(3) |
| coded_ethnicity | DETHNICE, DETHNIC5E | string |
