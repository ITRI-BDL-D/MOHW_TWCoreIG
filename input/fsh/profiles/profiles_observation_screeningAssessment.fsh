Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $CareTeam-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $DocumentReference-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Alias: $observation-screening-assessment-category = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/observation-screening-assessment-category
Alias: $loinc-survey-codes = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/loinc-survey-codes

Profile: TWCoreObservationScreeningAssessment
Parent: Observation
Id: Observation-screening-assessment-twcore
Title: "TW Core Observation Screening Assessment"
Description: "此臺灣核心-健康狀態篩檢與評估（TW Core Observation Screening Assessment） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現健康狀態篩檢與評估資料。"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* obeys tw-core-4
* status MS
* category only $CodeableConcept-tw
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    survey 1..1 MS and
    twcore 0..* MS
* category[survey] = $observation-category#survey
* category[survey] ^requirements = "Used for filtering if the observation is an assessment or screening."
* category[twcore] from $observation-screening-assessment-category (required)
* code only $CodeableConcept-tw
* code MS
* code from $loinc-survey-codes (preferred)
* subject 1.. MS
* subject only Reference($Patient-twcore or $Location-twcore or Group or Device)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] obeys tw-core-3
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $CareTeam-twcore or $RelatedPerson-twcore)
* performer MS
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] obeys tw-core-5
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* dataAbsentReason only $CodeableConcept-tw
* dataAbsentReason MS
* hasMember only Reference(TWCoreObservationScreeningAssessment or QuestionnaireResponse or MolecularSequence)
* hasMember MS
* derivedFrom only Reference(TWCoreObservationScreeningAssessment or QuestionnaireResponse or $DocumentReference-twcore or ImagingStudy or Media or MolecularSequence)
* derivedFrom MS
* derivedFrom ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* derivedFrom ^type[=].targetProfile[=].extension.valueBoolean = true
* derivedFrom ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* derivedFrom ^type[=].targetProfile[=].extension.valueBoolean = true

Invariant: tw-core-4
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"

Invariant: tw-core-3
Description: "Datetime must be at least to day."
* severity = #error
* expression = "$this is dateTime implies $this.toString().length() >= 10"

Invariant: tw-core-5
Description: "SHALL use UCUM for coded quantity units."
* severity = #error
* expression = "ofType(Quantity).system.empty() or ofType(Quantity).system = 'http://unitsofmeasure.org'"