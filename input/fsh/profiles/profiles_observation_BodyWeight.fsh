Profile:        TWCoreObservationBodyWeight
Parent:         http://hl7.org/fhir/StructureDefinition/bodyweight
Id:             Observation-body-weight-twcore
Title:          "TW Core Observation Body Weight"
Description:    "此臺灣核心-體重（TW Core Observation Body Weight）Profile 說明本 IG 如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs）Profile 以呈現體重資料。"
* ^version = "0.3.2"
* . ^short = "用於記錄個案的體重觀察結果（Body Weight Observation）"
* . ^definition = "此 Profile 用於描述個案於特定時點的體重觀察資料，包含數值、單位、執行者、相關事件等資訊。"
* id ^short = "不重複的 ID 用以識別儲存在特定 FHIR Server 中的 Observation 紀錄，通常又稱為邏輯性 ID。"
* id ^definition = "resource 的邏輯 ID，在 resource 的 URL 中使用。一旦指定，這個值永遠不會改變。"
* id ^comment = "一個 resource 使用新增操作（create operation）提交給伺服器時，此 resource 沒有 id，它的 id 在 resource 被創建後由伺服器分配/指定。"
* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解。這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，還沒有準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應該避免使用這個資料項目。通常在使用時，此 URL 是對 IG 的參照，此 IG 將這些特殊規則與其他 profiles、value sets 等一起定義為其敘述的一部分。"

* modifierExtension ^short = "能修改所包含資料項目解釋的擴充資料項目"
* modifierExtension ^definition = "可用於表示不屬於此資源基本定義的額外資訊，且會修改對資源的解釋。此類擴充資料項目的使用需特別謹慎。"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "依據的照護計畫或醫療請求（basedOn）"
* basedOn ^definition = "本次 Observation 依據的照護計畫或醫療請求。"

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "隸屬於的醫療事件（partOf）"
* partOf ^definition = "本次 Observation 隸屬於的醫療事件或程序。"

* status ^definition = "指明此 Observation 是否正在執行中、表示未來意向或現在已成為歷史記錄。"

* category ^short = "觀察紀錄的類型"
* category ^definition = "用於區分此 Observation 屬於哪一類型（如生命體徵、實驗室檢查等）。"

* code only CodeableConceptTW
//* code = http://loinc.org#29463-7
//* code MS
* code.coding 1..1
* code ^short = "體重（Body Weight）"
* code ^definition = "此欄位用於記錄本次觀察的檢驗檢查項目，體重建議使用 LOINC 29463-7 代碼。"

* subject only Reference(TWCorePatient)
* subject ^short = "觀察對象（Subject）"
* subject ^definition = "本次 Observation 的觀察對象，僅限病人（Patient）。"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與本次體重觀察相關的就醫事件（Encounter）"
* encounter ^definition = "此 Observation 是在哪個就醫情境產生的。"

* effective[x] ^short = "測量體重的時間"
* effective[x] ^definition = "進行觀察的臨床相關時間點或時間段。"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行者（Performer）"
* performer ^definition = "執行本次 Observation 的人員或組織。"

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
* valueQuantity.code from BodyWeightUnits (required)*/
* valueQuantity ^short = "體重數值（ValueQuantity）"
* valueQuantity ^definition = "記錄本次體重觀察的數值與單位。"
* valueQuantity.value ^short = "體重數值"
* valueQuantity.value ^definition = "實際量測到的體重數值。"
* valueQuantity.unit ^short = "體重單位"
* valueQuantity.unit ^definition = "體重的單位，建議使用 kg。"
* valueQuantity.system ^short = "單位系統"
* valueQuantity.system ^definition = "單位的系統，建議固定為 http://unitsofmeasure.org。"
* valueQuantity.code ^short = "單位代碼"
* valueQuantity.code ^definition = "體重單位的代碼，建議使用 kg。"

* dataAbsentReason ^short = "數據未提供的原因"
* dataAbsentReason ^definition = "描述為什麼沒有觀測結果值的原因，如測量無法完成或患者拒絕等"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "檢體（Specimen）"
* specimen ^definition = "本次 Observation 所用的檢體。"

* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "組成成員（hasMember）"
* hasMember ^definition = "本次 Observation 所組成的其他 Observation 或資源。"

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* derivedFrom ^short = "衍生來源（derivedFrom）"
* derivedFrom ^definition = "本次 Observation 衍生自的其他資源。"

* component ^short = "身高測量的組成部分"
* component ^definition = "身高觀測結果中可能包含的其他相關組件"
* component.code ^short = "組件的類型"
* component.code ^definition = "識別組件及其值的含義的代碼"
* component.value[x] ^short = "組件的實際結果"
* component.value[x] ^definition = "組件測量的結果或發現值"
* component.dataAbsentReason ^short = "組件數據未提供的原因"
* component.dataAbsentReason ^definition = "組件為什麼沒有值的原因"