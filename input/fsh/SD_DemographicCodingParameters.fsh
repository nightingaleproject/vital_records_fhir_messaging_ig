Profile:  DemographicsCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-DemographicCodingMessageParameters
Title:  "Demographic Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(DemographicsCodingMessageParameters)
* insert BasicParameters
* parameter contains
     coded-ethnicity 0..1 and // part contains name=DETHNICE or DETHNIC5C codeable
     coded-race 0..1 and   // part contains list with name=RACE1E-8E and RACE16C-23C, etc codeable
     input-ethnicity 0..1 and // Input ethnicity DETHNIC1-5 and
     input-race-flags 0..1 and // Input race RACE1-15
     input-race-literals 0..1 // Input race RACE16-23
* insert ParameterName(coded-ethnicity, DETHNICE or DETHNIC5C coded ethnicity, coded ethnicity)
* insert ParameterName(coded-race, RACE1E-8E and RACE16C-23C coded race, coded race)
* insert ParameterName(input-ethnicity, DETHNIC1-5 input-ethnicity, input-ethnicity)
* insert ParameterName(input-race-flags, RACE1E-8E and RACE1-15 input-race flags, input-race flags)
* insert ParameterName(input-race-literals, RACE1E-8E and RACE16-23 input-race literals, input-race literals)
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
* parameter[coded-ethnicity].part.name only string
* parameter[coded-ethnicity].part.value[x] only Coding // bind to value set
* parameter[coded-ethnicity].part.value[x] from HispanicOriginVS (required)
* parameter[coded-ethnicity].part ^slicing.discriminator.type = #value
* parameter[coded-ethnicity].part ^slicing.discriminator.path = "name"
* parameter[coded-ethnicity].part ^slicing.rules = #closed
* parameter[coded-ethnicity].part contains
    DETHNICE 0..1 and
    DETHNIC5C 0..1
* parameter[coded-ethnicity].part[DETHNICE].name = "DETHNICE"
* parameter[coded-ethnicity].part[DETHNIC5C].name = "DETHNIC5C"
* parameter[coded-race].part.name only string
* parameter[coded-race].part ^slicing.discriminator.type = #value
* parameter[coded-race].part ^slicing.discriminator.path = "name"
* parameter[coded-race].part ^slicing.rules = #closed
* parameter[coded-race].part.value[x] only Coding
* parameter[coded-race].part.value[x] from RaceCodeListVS (required)
* parameter[coded-race].part contains
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
* parameter[coded-race].part[RACE1E].name = "RACE1E"
* parameter[coded-race].part[RACE2E].name = "RACE2E"
* parameter[coded-race].part[RACE3E].name = "RACE3E"
* parameter[coded-race].part[RACE4E].name = "RACE4E"
* parameter[coded-race].part[RACE5E].name = "RACE5E"
* parameter[coded-race].part[RACE6E].name = "RACE6E"
* parameter[coded-race].part[RACE7E].name = "RACE7E"
* parameter[coded-race].part[RACE8E].name = "RACE8E"
* parameter[coded-race].part[RACE16C].name = "RACE16C"
* parameter[coded-race].part[RACE17C].name = "RACE17C"
* parameter[coded-race].part[RACE18C].name = "RACE18C"
* parameter[coded-race].part[RACE19C].name = "RACE19C"
* parameter[coded-race].part[RACE20C].name = "RACE20C"
* parameter[coded-race].part[RACE21C].name = "RACE21C"
* parameter[coded-race].part[RACE22C].name = "RACE22C"
* parameter[coded-race].part[RACE23C].name = "RACE23C"
* parameter[coded-ethnicity].value[x] 0..0
* parameter[coded-ethnicity].resource 0..0
* parameter[coded-race].value[x] 0..0
* parameter[coded-race].resource 0..0

* parameter[input-race-literals].part.name only string
* parameter[input-race-literals].part ^slicing.discriminator.type = #value
* parameter[input-race-literals].part ^slicing.discriminator.path = "name"
* parameter[input-race-literals].part ^slicing.rules = #closed
* parameter[input-race-literals].part contains
    RACE16 0..1 and
    RACE17 0..1 and
    RACE18 0..1 and
    RACE19 0..1 and
    RACE20 0..1 and
    RACE21 0..1 and
    RACE22 0..1 and
    RACE23 0..1
* parameter[input-race-literals].part[RACE16].name = "RACE16"
* parameter[input-race-literals].part[RACE17].name = "RACE17"
* parameter[input-race-literals].part[RACE18].name = "RACE18"
* parameter[input-race-literals].part[RACE19].name = "RACE19"
* parameter[input-race-literals].part[RACE20].name = "RACE20"
* parameter[input-race-literals].part[RACE21].name = "RACE21"
* parameter[input-race-literals].part[RACE22].name = "RACE22"
* parameter[input-race-literals].part[RACE23].name = "RACE23"
* parameter[input-race-literals].part.value[x] only string

* parameter[input-race-flags].part.name only string
* parameter[input-race-flags].part ^slicing.discriminator.type = #value
* parameter[input-race-flags].part ^slicing.discriminator.path = "name"
* parameter[input-race-flags].part ^slicing.rules = #closed
* parameter[input-race-flags].part contains
    RACE1 1..1 and
    RACE2 1..1 and
    RACE3 1..1 and
    RACE4 1..1 and
    RACE5 1..1 and
    RACE6 1..1 and
    RACE7 1..1 and
    RACE8 1..1 and
    RACE9 1..1 and
    RACE10 1..1 and
    RACE11 1..1 and
    RACE12 1..1 and
    RACE13 1..1 and
    RACE14 1..1 and
    RACE15 1..1
* parameter[input-race-flags].part.value[x] only string
* parameter[input-race-literals].part.valueString ^maxLength = 1

* parameter[input-race-flags].part[RACE1].name = "RACE1"
* parameter[input-race-flags].part[RACE2].name = "RACE2"
* parameter[input-race-flags].part[RACE3].name = "RACE3"
* parameter[input-race-flags].part[RACE4].name = "RACE4"
* parameter[input-race-flags].part[RACE5].name = "RACE5"
* parameter[input-race-flags].part[RACE6].name = "RACE6"
* parameter[input-race-flags].part[RACE7].name = "RACE7"
* parameter[input-race-flags].part[RACE8].name = "RACE8"
* parameter[input-race-flags].part[RACE9].name = "RACE9"
* parameter[input-race-flags].part[RACE10].name = "RACE10"
* parameter[input-race-flags].part[RACE11].name = "RACE11"
* parameter[input-race-flags].part[RACE12].name = "RACE12"
* parameter[input-race-flags].part[RACE13].name = "RACE13"
* parameter[input-race-flags].part[RACE14].name = "RACE14"
* parameter[input-race-flags].part[RACE15].name = "RACE15"





* parameter[input-ethnicity].value[x] 0..0
* parameter[input-ethnicity].resource 0..0
* parameter[input-race-flags].value[x] 0..0
* parameter[input-race-flags].resource 0..0
* parameter[input-race-literals].value[x] 0..0
* parameter[input-race-literals].resource 0..0
