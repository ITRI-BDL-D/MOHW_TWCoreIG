Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: TWCoreObservationCareExperiencePreference
Parent: Observation
Id: Observation-careExperiencePreference-twcore
Title: "TW Core Observation Care Experience Preference"
Description: """此臺灣核心-病人照護偏好註記（TW Core Observation Care Experience Preference） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現照護經驗偏好資料。  
(可填寫文字或代碼等說明)"""
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-careExperiencePreference-twcore"
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
* category contains twcore 0..1 MS
* category[twcore].coding 1..
* category[twcore].coding.system 1..
* category[twcore].coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/observation-category"
* category[twcore].coding.code 1..
* category[twcore].coding.code = #care-experience-preference
* code only $CodeableConcept-tw
* code = $loinc#95541-9
* code MS
* code ^short = "Care experience preferences code"
* subject only Reference($Patient-twcore)
* subject MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period or Timing or instant
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or CareTeam)
* performer MS
* value[x] only string or CodeableConcept or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* component.code only $CodeableConcept-tw