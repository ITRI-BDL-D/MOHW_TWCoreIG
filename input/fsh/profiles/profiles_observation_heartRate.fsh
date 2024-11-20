Alias: $loinc = http://loinc.org
Alias: $Observation-vitalSigns-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore

Profile: TWCoreObservationHeartRate
Parent: TWCoreObservationVitalSigns
Id: Observation-heart-rate-twcore
Title: "TW Core Observation Heart Rate"
Description: "此臺灣核心-心率（TW Core Observation Heart Rate） Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現心率資料。"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or $ServiceRequest-twcore)
* code = $loinc#8867-4
* code ^short = "Heart Rate"
* valueQuantity 0..1 MS
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* valueQuantity ^type.extension.valueBoolean = true
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueQuantity.code = #/min (exactly)