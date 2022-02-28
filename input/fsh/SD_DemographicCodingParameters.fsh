Profile:  DemographicsCodingParameters
Parent: Parameters
Id: VRM-DemographicsCodingParameters
Title:  "Demographics Coding Message Parameters"
Description:   "Parameters for a Demographics Coding Message"
* meta.profile 1..*
* meta.profile = Canonical(DemographicsCodingParameters)
* insert ParameterSlicing
* insert BasicParameters
* parameter contains
     coded_ethnicity 0..1 and // part contains name=DETHNICE or DETHNIC5C codeable
     coded_race 0..1 and   // part contains list with name=RACE1E-8E and RACE16C-23C, etc codeable
     input_ethnicity 0..1 and // Input ethnicity DETHNIC1-5 and
     input_race_flags 0..1 and // Input race RACE1-15
     input_race_literals 0..1 // Input race RACE16-23
* parameter[coded_ethnicity] ^short = "Grouping for DETHNICE and DETHNIC5C parameters (NCHS->EDRS)"
* parameter[coded_race] ^short = "Grouping for RACE1E-8E and RACE16C-23C (NCHS->EDRS)"
* parameter[input_ethnicity] ^short = "Grouping for DETHNIC1-5 parameters (EDRS->NCHS)"
* parameter[input_race_flags] ^short = "Grouping for RACE1-15 (EDRS->NCHS)"
* parameter[input_race_literals] ^short = "Grouping for RACE16-23 (EDRS->NCHS)"
* insert ParameterName(coded_ethnicity, DETHNICE or DETHNIC5C coded ethnicity, coded ethnicity)
* insert ParameterName(coded_race, RACE1E-8E and RACE16C-23C coded race, coded race)
* insert ParameterName(input_ethnicity, DETHNIC1-5 input_ethnicity, input_ethnicity)
* insert ParameterName(input_race_flags, RACE1E-8E and RACE1-15 input-race flags, input-race flags)
* insert ParameterName(input_race_literals, RACE1E-8E and RACE16-23 input-race literals, input-race literals)
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
* parameter[coded_ethnicity].part.name only string
* parameter[coded_ethnicity].part.value[x] only Coding // bind to value set
* parameter[coded_ethnicity].part.value[x] from HispanicOriginVS (required)
* insert ParameterPartSliceByName(coded_ethnicity)
* parameter[coded_ethnicity].part contains
    DETHNICE 0..1 and
    DETHNIC5C 0..1
* parameter[coded_ethnicity].part[DETHNICE].name = "DETHNICE"
* parameter[coded_ethnicity].part[DETHNIC5C].name = "DETHNIC5C"
* parameter[coded_race].part.name only string
* insert ParameterPartSliceByName(coded_race)
* parameter[coded_race].part.value[x] only Coding
* parameter[coded_race].part.value[x] from RaceCodeVS (required)
* parameter[coded_race].part contains
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
* parameter[coded_race].part[RACE1E].name = "RACE1E"
* parameter[coded_race].part[RACE2E].name = "RACE2E"
* parameter[coded_race].part[RACE3E].name = "RACE3E"
* parameter[coded_race].part[RACE4E].name = "RACE4E"
* parameter[coded_race].part[RACE5E].name = "RACE5E"
* parameter[coded_race].part[RACE6E].name = "RACE6E"
* parameter[coded_race].part[RACE7E].name = "RACE7E"
* parameter[coded_race].part[RACE8E].name = "RACE8E"
* parameter[coded_race].part[RACE16C].name = "RACE16C"
* parameter[coded_race].part[RACE17C].name = "RACE17C"
* parameter[coded_race].part[RACE18C].name = "RACE18C"
* parameter[coded_race].part[RACE19C].name = "RACE19C"
* parameter[coded_race].part[RACE20C].name = "RACE20C"
* parameter[coded_race].part[RACE21C].name = "RACE21C"
* parameter[coded_race].part[RACE22C].name = "RACE22C"
* parameter[coded_race].part[RACE23C].name = "RACE23C"
* parameter[coded_ethnicity].value[x] 0..0
* parameter[coded_ethnicity].resource 0..0
* parameter[coded_race].value[x] 0..0
* parameter[coded_race].resource 0..0

* parameter[input_race_literals].part.name only string
* insert ParameterPartSliceByName(input_race_literals)
* parameter[input_race_literals].part contains
    RACE16 0..1 and
    RACE17 0..1 and
    RACE18 0..1 and
    RACE19 0..1 and
    RACE20 0..1 and
    RACE21 0..1 and
    RACE22 0..1 and
    RACE23 0..1
* parameter[input_race_literals].part[RACE16].name = "RACE16"
* parameter[input_race_literals].part[RACE17].name = "RACE17"
* parameter[input_race_literals].part[RACE18].name = "RACE18"
* parameter[input_race_literals].part[RACE19].name = "RACE19"
* parameter[input_race_literals].part[RACE20].name = "RACE20"
* parameter[input_race_literals].part[RACE21].name = "RACE21"
* parameter[input_race_literals].part[RACE22].name = "RACE22"
* parameter[input_race_literals].part[RACE23].name = "RACE23"
* parameter[input_race_literals].part.value[x] only string

* parameter[input_race_flags].part.name only string
* insert ParameterPartSliceByName(input_race_flags)
* parameter[input_race_flags].part contains
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
* parameter[input_race_flags].part.value[x] only string
* parameter[input_race_flags].part.value[x] ^maxLength = 1

* parameter[input_race_flags].part[RACE1].name = "RACE1"
* parameter[input_race_flags].part[RACE2].name = "RACE2"
* parameter[input_race_flags].part[RACE3].name = "RACE3"
* parameter[input_race_flags].part[RACE4].name = "RACE4"
* parameter[input_race_flags].part[RACE5].name = "RACE5"
* parameter[input_race_flags].part[RACE6].name = "RACE6"
* parameter[input_race_flags].part[RACE7].name = "RACE7"
* parameter[input_race_flags].part[RACE8].name = "RACE8"
* parameter[input_race_flags].part[RACE9].name = "RACE9"
* parameter[input_race_flags].part[RACE10].name = "RACE10"
* parameter[input_race_flags].part[RACE11].name = "RACE11"
* parameter[input_race_flags].part[RACE12].name = "RACE12"
* parameter[input_race_flags].part[RACE13].name = "RACE13"
* parameter[input_race_flags].part[RACE14].name = "RACE14"
* parameter[input_race_flags].part[RACE15].name = "RACE15"

* parameter[input_ethnicity].part.name only string
* insert ParameterPartSliceByName(input_ethnicity)
* parameter[input_ethnicity].part contains
    DETHNIC1 0..1 and
    DETHNIC2 0..1 and
    DETHNIC3 0..1 and
    DETHNIC4 0..1 and
    DETHNIC5 0..1
* parameter[input_ethnicity].part[DETHNIC1].name = "DETHNIC1"
* parameter[input_ethnicity].part[DETHNIC2].name = "DETHNIC2"
* parameter[input_ethnicity].part[DETHNIC3].name = "DETHNIC3"
* parameter[input_ethnicity].part[DETHNIC4].name = "DETHNIC4"
* parameter[input_ethnicity].part[DETHNIC5].name = "DETHNIC5"
* parameter[input_ethnicity].part.value[x] only string
* parameter[input_ethnicity].part[DETHNIC1].value[x] ^maxLength = 1
* parameter[input_ethnicity].part[DETHNIC2].value[x] ^maxLength = 1
* parameter[input_ethnicity].part[DETHNIC3].value[x] ^maxLength = 1
* parameter[input_ethnicity].part[DETHNIC4].value[x] ^maxLength = 1

* parameter[input_ethnicity].value[x] 0..0
* parameter[input_ethnicity].resource 0..0
* parameter[input_race_flags].value[x] 0..0
* parameter[input_race_flags].resource 0..0
* parameter[input_race_literals].value[x] 0..0
* parameter[input_race_literals].resource 0..0
