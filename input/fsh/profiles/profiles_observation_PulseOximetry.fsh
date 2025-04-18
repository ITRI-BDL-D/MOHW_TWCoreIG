Profile:        TWCoreObservationPulseOximetry
Parent:         TWCoreObservationVitalSigns
Id:             Observation-pulse-oximetry-twcore
Title:          "TW Core Observation Pulse Oximetry"
Description:    "此臺灣核心-脈搏血氧飽和度（TW Core Observation Pulse Oximetry） Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現脈搏血氧飽和度資料。"
* ^version = "0.3.2"
* . ^short = "核心脈搏血氧飽和度樣板"
* . ^definition = "此 FHIR 生命體徵樣板為觀察資源記錄、搜尋和取得與病患相關的生命徵象設定了最低期望值。"
* modifierExtension ^short = "不可忽略的擴充"
* code only CodeableConceptTW
* code MS
* code ^short = "脈搏血氧飽和度"
* code.coding only CodingTW
* code.coding MS
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^short = "由術語系統定義的代碼"
* code.coding contains
    PulseOx 1..1 MS and 
    OxygenSatCode 1..1 MS 
* code.coding[OxygenSatCode] only CodingTW
* code.coding[OxygenSatCode] = http://loinc.org#2708-6
* code.coding[OxygenSatCode] ^short = "動脈血氧飽和度"
* code.coding[PulseOx] only CodingTW
* code.coding[PulseOx] = http://loinc.org#59408-5
* code.coding[PulseOx] ^short = "以脈搏血氧儀測得的動脈血氧飽和度"
* valueQuantity 0..1 MS
* valueQuantity ^short = "血氧飽和度數值"
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.value ^short = "數值（含隱含精確度）"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.unit ^short = "單位顯示"
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.system ^short = "單位系統"
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)
* valueQuantity.code ^short = "單位代碼"
* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^short = "用於報告流量率或氧氣濃度的組件。"
* component ^definition = "用於報告流量率或氧氣濃度的組件。"
* component.modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component.value[x] ^short = "以 UCUM 記錄的生命體徵值"
* component contains
    FlowRate 0..1 MS and
    Concentration 0..1 MS
* component[FlowRate] ^short = "吸入氧氣流量率"
* component[FlowRate].modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component[FlowRate].code only CodeableConceptTW
* component[FlowRate].code = http://loinc.org#3151-8
* component[FlowRate].code MS
* component[FlowRate].valueQuantity MS
* component[FlowRate].valueQuantity ^short = "生命體徵組件數值"
* component[FlowRate].value[x] ^short = "以 UCUM 記錄的生命體徵值"
* component[FlowRate].value[x][valueQuantity] ^short = "生命體徵組件數值"
* component[FlowRate].valueQuantity.value 1..1 MS
* component[FlowRate].valueQuantity.unit 1..1 MS
* component[FlowRate].valueQuantity.system 1..1 MS
* component[FlowRate].valueQuantity.system only uri
* component[FlowRate].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[FlowRate].valueQuantity.code 1..1 MS
* component[FlowRate].valueQuantity.code only code
* component[FlowRate].valueQuantity.code = #L/min (exactly)
* component[FlowRate].valueQuantity.code ^short = "單位代碼"
* component[FlowRate].valueQuantity.value ^short = "數值（含隱含精確度）"
* component[FlowRate].valueQuantity.unit ^short = "單位顯示"
* component[FlowRate].valueQuantity.system ^short = "定義單位代碼的系統"
* component[Concentration] ^short = "吸入氧氣濃度"
* component[Concentration].modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component[Concentration].code only CodeableConceptTW
* component[Concentration].code = http://loinc.org#3150-0
* component[Concentration].code MS
* component[Concentration].valueQuantity MS
* component[Concentration].valueQuantity ^short = "生命體徵組件數值"
* component[Concentration].valueQuantity.value ^short = "數值（含隱含精確度）"
* component[Concentration].valueQuantity.unit ^short = "單位顯示"
* component[Concentration].valueQuantity.system ^short = "定義單位代碼的系統"
* component[Concentration].valueQuantity.value 1..1 MS
* component[Concentration].valueQuantity.unit 1..1 MS
* component[Concentration].valueQuantity.system 1..1 MS
* component[Concentration].valueQuantity.system only uri
* component[Concentration].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[Concentration].valueQuantity.code 1..1 MS
* component[Concentration].valueQuantity.code only code
* component[Concentration].valueQuantity.code = #% (exactly)
* component[Concentration].valueQuantity.code ^short = "單位代碼"
* encounter only Reference(TWCoreEncounter)
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* specimen only Reference(TWCoreSpecimen)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
