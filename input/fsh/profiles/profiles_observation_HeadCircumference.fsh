Profile:        TWCoreObservationHeadCircumference
Parent:         http://hl7.org/fhir/StructureDefinition/headcircum
Id:             Observation-head-circumference-twcore
Title:          "TW Core Observation Head Circumference"
Description:    "此臺灣核心-頭圍（TW Core Observation Head Circumference） Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現頭圍資料。"
* ^version = "0.3.2"
* . ^short = "FHIR 頭圍 Profile"
* implicitRules ^short = "此內容創建所依據的一組規則"
* modifierExtension ^short = "不可忽略的擴充"
* basedOn ^short = "實現計畫、提案或醫囑"
* partOf ^short = "引用事件的一部分"
* category ^short = "觀察類型分類" 
* category[VSCat] ^short = "觀察類型的分類"
* category[VSCat].coding ^short = "由術語系統定義的代碼"
* category[VSCat].coding.system ^short = "術語系統的識別碼"
* category[VSCat].coding.code ^short = "系統中定義的符號"
* code only CodeableConceptTW
//* code = http://loinc.org#9843-4
//* code MS
* code.coding 1..1
* code ^short = "頭部枕額周長"
* code.coding ^short = "由術語系統定義的代碼"
* code.coding[HeadCircumCode] ^short = "由術語系統定義的代碼"
* code.coding[HeadCircumCode].system ^short = "術語系統的識別碼"
* code.coding[HeadCircumCode].code ^short = "系統中定義的符號"
* subject ^short = "觀察對象是誰和/或什麼"
* encounter ^short = "進行此觀察的醫療事件"
* effective[x] ^short = "生命體徵通常僅為日期時間"
* performer ^short = "負責觀察的人員"
* value[x] ^short = "生命體徵值使用 Quantity 資料類型記錄。對於支持性觀察（例如Cuff size），可以使用其他資料類型，例如 CodeableConcept。"
* value[x][valueQuantity] ^short = "生命體徵值使用 Quantity 資料類型記錄。對於支持性觀察（例如Cuff size），可以使用其他資料類型，例如 CodeableConcept。"
* value[x][valueQuantity].value ^short = "數值（具有隱含精度）"
* value[x][valueQuantity].unit ^short = "單位表示"
* value[x][valueQuantity].system ^short = "定義編碼單位形式的系統"
* value[x][valueQuantity].code ^short = "來自生命體徵值集的通用 UCUM 單位的編碼響應。"
/* valueQuantity 0..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code from BodyLengthUnits (required)*/
* dataAbsentReason ^short = "結果缺失的原因"
* specimen ^short = "用於此觀察的檢體"
* hasMember ^short = "用於報告生命體徵組合項目時"
* derivedFrom ^short = "觀察結果的相關測量"
* component ^short = "組成觀察"
* component.modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component.code ^short = "編碼的生命體徵結果類型"
* component.value[x] ^short = "使用 UCUM 記錄的生命體徵值"
* component.dataAbsentReason ^short = "組成結果缺失的原因"
* encounter only Reference(TWCoreEncounter)
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* specimen only Reference(TWCoreSpecimen)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
