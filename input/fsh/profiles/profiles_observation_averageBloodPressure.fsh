Alias: $loinc-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/loinc-tw
Alias: $sct = http://snomed.info/sct
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: TWCoreObservationAverageBloodPressure
Parent: Observation
Id: Observation-averageBloodPressure-twcore
Title: "TW Core Observation Average Blood Pressure"
Description: "此臺灣核心-平均血壓(TW Core Observation Average Blood Pressure) Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現平均血壓資料。"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-averageBloodPressure-twcore"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* status MS
* category only $CodeableConcept-tw
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains VSCat 0..1 MS
* category[VSCat].coding 1..
* category[VSCat].coding.system 1..
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code 1..
* category[VSCat].coding.code = #vital-signs
* code only $CodeableConcept-tw
* code = $loinc-tw#96607-7
* code MS
* code ^short = "血壓"
* subject only Reference($Patient-twcore)
* subject MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or CareTeam)
* performer MS
* value[x] ..0
* component MS
* component obeys tw-core-2
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Average systolic and diastolic blood pressure and other qualifiers."
* component.code only $CodeableConcept-tw
* component.value[x] MS
* component.value[x] ^short = "Vital Sign Component Value"
* component.value[x] ^definition = "Vital Signs value are typically recorded using the Quantity data type. For supporting observations such as cuff size could use other datatypes such as CodeableConcept."
* component.dataAbsentReason MS
* component.dataAbsentReason ^condition = "tw-core-2"
* component contains
    Systolic 1..1 MS and
    Diastolic 1..1 MS and
    Number 0..1 MS
* component[Systolic] ^short = "平均收縮壓"
* component[Systolic].code = $loinc-tw#96608-5
* component[Systolic].code MS
* component[Systolic].code ^short = "Systolic Average Blood Pressure Code"
* component[Systolic].value[x] only Quantity
* component[Systolic].value[x] ^short = "Systolic Average Blood Pressure Value"
* component[Systolic].value[x] ^condition = "tw-core-2"
* component[Systolic].value[x].value 1.. MS
* component[Systolic].value[x].unit 1.. MS
* component[Systolic].value[x].system 1.. MS
* component[Systolic].value[x].system = "http://unitsofmeasure.org"
* component[Systolic].value[x].code 1.. MS
* component[Systolic].value[x].code = #mm[Hg]
* component[Diastolic] ^short = "平均舒張壓"
* component[Diastolic].code = $loinc-tw#96609-3
* component[Diastolic].code MS
* component[Diastolic].code ^short = "Diastolic Average Blood Pressure Code"
* component[Diastolic].value[x] only Quantity
* component[Diastolic].value[x] ^short = "Diastolic Average Blood Pressure Value"
* component[Diastolic].value[x] ^condition = "tw-core-2"
* component[Diastolic].value[x].value 1.. MS
* component[Diastolic].value[x].unit 1.. MS
* component[Diastolic].value[x].system 1.. MS
* component[Diastolic].value[x].system = "http://unitsofmeasure.org"
* component[Diastolic].value[x].code 1.. MS
* component[Diastolic].value[x].code = #mm[Hg]
* component[Number] ^short = "測量次數"
* component[Number].code = $sct#246432004
* component[Number].code MS
* component[Number].value[x] only Quantity
* component[Number].value[x].value 1.. MS

Invariant: tw-core-2
Description: "If there is no value a data absent reason must be present"
* severity = #error
* expression = "value.exists() or dataAbsentReason.exists()"