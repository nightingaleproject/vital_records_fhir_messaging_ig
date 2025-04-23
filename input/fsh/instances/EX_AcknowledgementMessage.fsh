Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message - Example"
* timestamp = "2021-05-20T00:00:00Z"
//* insert addentry(Header, AcknowledgementHeader-Example1)
//* insert addentry(Parameters, Parameters-Example1)
* insert addentry(Header, AcknowledgementHeader-Example1)
* insert addentry(Parameters, Parameters-Example1)

Instance: AcknowledgementMessage-Example2
InstanceOf: AcknowledgementMessage
Usage: #example
Description: "Acknowledgement message with warnings- Example"
* timestamp = "2021-05-20T00:00:00Z"
* insert addentry(Header, AcknowledgementHeader-Example2)
* insert addentry(Parameters, Parameters-Example1)
* insert addentry(OperationOutcome, Outcome-Example2)

Instance: Outcome-Example2
InstanceOf: Outcome
Usage: #example
Description: "Extraction Warning Outcome - Example"
* issue.severity = #warning
* issue.code = #structure
* issue.diagnostics = "Description of How Injury Occurred (HOWINJ) in InjuryIncident(Observation).value.text exceeded IJE Field size (250) and was truncated."