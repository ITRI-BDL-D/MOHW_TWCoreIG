Alias: $loinc = http://loinc.org
Alias: $Observation-vitalSigns-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore

Profile: TWCoreObservationPediatricBMIforAge
Parent: TWCoreObservationVitalSigns
Id: Observation-pediatric-bmi-age-twcore
Title: "TW Core Pediatric BMI for Age Observation"
Description: "此臺灣核心-兒童及青少年身體質量指數（TW Core Pediatric BMI for Age Observation） Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現兒童及青少年身體質量指數資料。"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or $ServiceRequest-twcore)
* code = $loinc#59576-9
* code ^short = "Body mass index (BMI) [Percentile] Per age and sex"
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

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: TWCoreObservationPediatricBMIforAge
Target: "http://snomed.org/attributebinding"