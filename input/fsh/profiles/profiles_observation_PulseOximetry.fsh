Alias: $loinc = http://loinc.org
Alias: $Observation-vitalSigns-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore
Alias: $Coding-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Coding-tw

Profile: TWCoreObservationPulseOximetry
Parent: TWCoreObservationVitalSigns
Id: Observation-pulse-oximetry-twcore
Title: "TW Core Observation Pulse Oximetry"
Description: "此臺灣核心-脈搏血氧飽和度（TW Core Observation Pulse Oximetry） Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現脈搏血氧飽和度資料。"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or $ServiceRequest-twcore)
* code.coding only $Coding-tw
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    PulseOx 1..1 MS and
    O2Sat 1..1 MS
* code.coding[PulseOx] = $loinc#59408-5
* code.coding[PulseOx] ^short = "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.coding[O2Sat] = $loinc#2708-6
* code.coding[O2Sat] ^short = "Oxygen saturation in Arterial blood"
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
* valueQuantity.code = #% (exactly)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^short = "Used when reporting flow rates or oxygen concentration."
* component ^definition = "Used when reporting flow rates or oxygen concentration."
* component contains
    FlowRate 0..1 MS and
    Concentration 0..1 MS
* component[FlowRate] ^short = "Inhaled oxygen flow rate"
* component[FlowRate].code = $loinc#3151-8
* component[FlowRate].valueQuantity 0..1 MS
* component[FlowRate].valueQuantity only Quantity
* component[FlowRate].valueQuantity ^sliceName = "valueQuantity"
* component[FlowRate].valueQuantity ^short = "Vital Sign Component Value"
* component[FlowRate].valueQuantity ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* component[FlowRate].valueQuantity ^type.extension.valueBoolean = true
* component[FlowRate].valueQuantity.value 1.. MS
* component[FlowRate].valueQuantity.unit 1.. MS
* component[FlowRate].valueQuantity.system 1.. MS
* component[FlowRate].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[FlowRate].valueQuantity.code 1.. MS
* component[FlowRate].valueQuantity.code = #L/min (exactly)
* component[Concentration] ^short = "Inhaled oxygen concentration"
* component[Concentration].code = $loinc#3150-0
* component[Concentration].valueQuantity 0..1 MS
* component[Concentration].valueQuantity only Quantity
* component[Concentration].valueQuantity ^sliceName = "valueQuantity"
* component[Concentration].valueQuantity ^short = "Vital Sign Component Value"
* component[Concentration].valueQuantity ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* component[Concentration].valueQuantity ^type.extension.valueBoolean = true
* component[Concentration].valueQuantity.value 1.. MS
* component[Concentration].valueQuantity.unit 1.. MS
* component[Concentration].valueQuantity.system 1.. MS
* component[Concentration].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[Concentration].valueQuantity.code 1.. MS
* component[Concentration].valueQuantity.code = #% (exactly)