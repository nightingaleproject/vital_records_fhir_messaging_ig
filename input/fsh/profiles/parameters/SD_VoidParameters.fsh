Profile: VoidParameters
Parent: Parameters
Id: VRM-VoidParameters
Title:  "Void Message Parameters"
Description:   "Parameters for a Void Message"
* insert BaseMessageParameters
* parameter contains
    block_count 1..1
* insert ParameterNameType(block_count, unsignedInt, number of records to void, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of `1` is assumed meaning only a single record will be voided.)
