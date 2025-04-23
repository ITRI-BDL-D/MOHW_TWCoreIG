Profile:        TWCoreObservationBodyTemperature
Parent:         http://hl7.org/fhir/StructureDefinition/bodytemp
Id:             Observation-body-temperature-twcore
Title:          "TW Core Observation Body Temperature"
Description:    "此臺灣核心-體溫 (TW Core Observation Body Temperature) Profile 說明本 IG 如何進一步定義臺灣核心-生命體徵 (TW Core Observation Vital Signs) Profile 以呈現體溫資料。"
* ^version = "0.3.2"
* . ^short = "體溫測量結果"
* . ^definition = "測量身體產生的熱量。"
* id ^short = "不重複的 ID 用以識別儲存在特定 FHIR Server 中的 Observation 紀錄，通常又稱為邏輯性 ID。"
* id ^definition = "resource 的邏輯 ID，在 resource 的 URL 中使用。一旦指定，這個值永遠不會改變。"
* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"
* modifierExtension ^short = "能修改所包含資料項目解釋的擴充資料項目"
* modifierExtension ^definition = "可用於表示不屬於此資源基本定義的額外資訊，且會修改對資源的解釋。此類擴充資料項目的使用需特別謹慎。"
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "履行或延伸的資源"
* basedOn ^definition = "此觀察結果所履行的計畫、目標或要求。"
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "作為父資源的一部分"
* partOf ^definition = "記錄此觀察結果的事件的參照。"
* status ^definition = "Observation 的狀態。"
* category ^short = "Observation 的分類"
* category ^definition = "用於將 Observation 分組的分類。"
* code only CodeableConceptTW
//* code = http://loinc.org#8310-5
//* code MS
* code.coding 1..1
* code ^short = "體溫 (Body Temperature)"
* code ^definition = "描述被觀察的內容。"
* code.coding ^short = "用於識別觀察結果的編碼"
* code.coding ^definition = "用於識別觀察結果的編碼表示。"
* subject only Reference(TWCorePatient)
* subject ^short = "此 Observation 的對象"
* subject ^definition = "此 Observation 是關於哪個病患/群體。"
* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與此 Observation 相關的就醫事件"
* encounter ^definition = "產生此 Observation 的就醫事件。"
* effective[x] ^short = "測量體溫的時間"
* effective[x] ^definition = "進行觀察的臨床相關時間點或時間段。"
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行此 Observation 的人員或組織"
* performer ^definition = "誰負責此觀察結果。"
* valueQuantity ^short = "體溫測量值"
* valueQuantity ^definition = "觀察的實際結果。"
* valueQuantity.value ^short = "觀察結果的數值"
* valueQuantity.value ^definition = "觀察結果的數值。"
* valueQuantity.unit ^short = "觀察結果的單位"
* valueQuantity.unit ^definition = "觀察結果的單位。"
* valueQuantity.system ^short = "定義單位的系統"
* valueQuantity.system ^definition = "定義單位的系統 URI。"
* valueQuantity.code ^short = "單位的編碼表示"
* valueQuantity.code ^definition = "單位的編碼表示。"
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
* valueQuantity.code from BodyTemperatureUnits (required)*/
* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "與此 Observation 相關的檢體"
* specimen ^definition = "分析此觀察結果的檢體。"
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "此 Observation 包含的成員 Observation"
* hasMember ^definition = "此觀察是群組觀察的一部分，並包含對成員觀察的參照。"
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* derivedFrom ^short = "此 Observation 衍生自的資源"
* derivedFrom ^definition = "此觀察結果衍生自的資源。"
* component ^short = "Observation 的組成部分"
* component ^definition = "一些觀察結果由相關的觀察結果組成，這些觀察結果作為此觀察結果的組成部分進行測量和報告。"
* component.code ^short = "組成部分的觀察代碼"
* component.code ^definition = "描述此組成部分觀察的內容。"
* component.value[x] ^short = "組成部分的實際觀察結果"
* component.value[x] ^definition = "此組成部分的實際觀察結果。"
* component.dataAbsentReason ^short = "觀察結果缺失的原因"
* component.dataAbsentReason ^definition = "提供觀察結果值缺失的原因。"
