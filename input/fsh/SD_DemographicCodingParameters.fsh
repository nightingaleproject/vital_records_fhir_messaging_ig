Profile:  DemographicsCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-DemographicCodingMessageParameters
Title:  "Demographic Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(DemographicsCodingMessageParameters)
* insert BasicParameters
* parameter contains
     ethnicity 0..1 and // part contains name=DETHNICE or DETHNIC5C codeable
     race 1..*   // part contains list with name=RACE1E-8E and RACE16C-23C, etc codeable
* insert ParameterName(ethnicity, DETHNICE or DETHNIC5C ethnicity, ethnicity)
* insert ParameterName(race, RACE1E-8E and RACE16C-23C race, race)
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
* parameter[ethnicity].part.name only string
* parameter[ethnicity].part.value[x] only Coding // bind to value set
* parameter[ethnicity].part.value[x] from HispanicOriginVS (required)
* parameter[ethnicity].part ^slicing.discriminator.type = #value
* parameter[ethnicity].part ^slicing.discriminator.path = "name"
* parameter[ethnicity].part ^slicing.rules = #closed
* parameter[ethnicity].part contains
    DETHNICE 0..1 and
    DETHNIC5C 0..1
* parameter[ethnicity].part[DETHNICE].name = "DETHNICE"
* parameter[ethnicity].part[DETHNIC5C].name = "DETHNIC5C"
* parameter[race].part.name only string
* parameter[race].part ^slicing.discriminator.type = #value
* parameter[race].part ^slicing.discriminator.path = "name"
* parameter[race].part ^slicing.rules = #closed
* parameter[race].part.value[x] only Coding
* parameter[race].part.value[x] from RaceCodeListVS (required)
* parameter[race].part contains
    RACE1E 0..1 and
    RACE2E 0..1 and
    RACE3E 0..1 and
    RACE4E 0..1 and
    RACE5E 0..1 and
    RACE6E 0..1 and
    RACE7E 0..1 and
    RACE8E 0..1 and
    RACE16C 0..1 and
    RACE17C 0..1 and
    RACE18C 0..1 and
    RACE19C 0..1 and
    RACE20C 0..1 and
    RACE21C 0..1 and
    RACE22C 0..1 and
    RACE23C 0..1
* parameter[race].part[RACE1E].name = "RACE1E"
* parameter[race].part[RACE2E].name = "RACE2E"
* parameter[race].part[RACE3E].name = "RACE3E"
* parameter[race].part[RACE4E].name = "RACE4E"
* parameter[race].part[RACE5E].name = "RACE5E"
* parameter[race].part[RACE6E].name = "RACE6E"
* parameter[race].part[RACE7E].name = "RACE7E"
* parameter[race].part[RACE8E].name = "RACE8E"
* parameter[race].part[RACE16C].name = "RACE16C"
* parameter[race].part[RACE17C].name = "RACE17C"
* parameter[race].part[RACE18C].name = "RACE18C"
* parameter[race].part[RACE19C].name = "RACE19C"
* parameter[race].part[RACE20C].name = "RACE20C"
* parameter[race].part[RACE21C].name = "RACE21C"
* parameter[race].part[RACE22C].name = "RACE22C"
* parameter[race].part[RACE23C].name = "RACE23C"
* parameter[ethnicity].value[x] 0..0
* parameter[ethnicity].resource 0..0
* parameter[race].value[x] 0..0
* parameter[race].resource 0..0
