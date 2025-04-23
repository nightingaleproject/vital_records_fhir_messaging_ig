
Profile: StatusParameters
Parent: Parameters
Id: VRM-StatusParameters
Title:  "Status Message Parameters"
Description:   "Parameters for a Status Message"
* insert BaseMessageParameters
* parameter contains
    status 1..1
* insert ParameterNameType(status, string, status type,status type)
* parameter[status].valueString from StatusVS (required)

