Instance: Outcome-Example2
InstanceOf: Outcome
Usage: #example
Description: "Extraction Warning Outcome - Example"
* issue.severity = #warning
* issue.code = #structure
* issue.diagnostics = "Description of How Injury Occurred (HOWINJ) in InjuryIncident(Observation).value.text exceeded IJE Field size (250) and was truncated."

Instance: Outcome-Example1
InstanceOf: Outcome
Usage: #example
Description: "Extraction Error Outcome - Example"
* issue.severity = #error
* issue.code = #structure
* issue.diagnostics = "Expected 1 or more Cause of Death Condition resources, received 0."

