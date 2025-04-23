Profile:        TWCoreObservationBodyHeight
Parent:         http://hl7.org/fhir/StructureDefinition/bodyheight
Id:             Observation-body-height-twcore
Title:          "TW Core Observation Body Height"
Description:    "此臺灣核心-身高 (TW Core Observation Body Height) Profile 說明本 IG 如何進一步定義臺灣核心-生命體徵 (TW Core Observation Vital Signs) Profile 以呈現身高資料。"
* ^version = "0.3.2"

* . ^short = "身高相關測量"
* . ^definition = "關於測量和檢查結果的測量，對患者、裝置或其他主體的評估，或健康相關觀察或事件的確認。"

* id ^short = "身高測量紀錄的邏輯 ID"
* id ^definition = "此資源的邏輯 ID，在資源的 URL 中使用。此值一旦指定就不應更改。"
* id ^comment = "當一個資源通過新增操作 (create operation) 提交給伺服器時，此資源沒有邏輯 ID，其邏輯 ID 會在資源被創建後由伺服器指定。"

* implicitRules ^short = "用於處理資源內容的規則集 URL"
* implicitRules ^definition = "用於處理內容的一系列規則的 URL 參考，這些規則必須被了解才能正確處理內容。通常，這是對 IG 的引用，該 IG 定義了特殊的規則以及其他引用的 profiles、value sets 等。"

* modifierExtension ^short = "能修改所包含資料項目解釋的擴充資料項目"
* modifierExtension ^definition = "可用於表示不屬於此資源基本定義的額外資訊，且會修改對資源的解釋。此類擴充資料項目的使用需特別謹慎。"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "此觀測的起源請求"
* basedOn ^definition = "此觀測所依據的計劃、提案或指令"

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "此觀測所屬的較大事件"
* partOf ^definition = "與此觀測相關的較大事件的一部分"

* status ^definition = "觀測結果的狀態，例如：註冊、初步結果、最終結果等"

* category ^short = "觀測結果的分類"
* category ^definition = "用於分類觀測結果的代碼，例如：生命體徵、實驗室檢查、社會歷史等"

* code only CodeableConceptTW
//* code = http://loinc.org#8302-2
//* code MS
* code.coding 1..1
* code ^short = "身高 (Body height)"

* subject only Reference(TWCorePatient)
* subject ^short = "測量的主體"
* subject ^definition = "被記錄身高的人"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與測量相關的就診"
* encounter ^definition = "此觀測結果形成其一部分的就診"

* effective[x] ^short = "觀測時間或時間區間"
* effective[x] ^definition = "進行觀測的臨床相關時間或時間區間"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "負責身高測量的人員"
* performer ^definition = "執行身高測量的人員"

* valueQuantity ^short = "身高測量結果值"
* valueQuantity ^definition = "以可測量單位表示的身高值"
* valueQuantity.value ^short = "數值結果"
* valueQuantity.value ^definition = "身高測量的數值"
* valueQuantity.unit ^short = "單位表示 (如：公分)"
* valueQuantity.unit ^definition = "用於測量值的單位"
* valueQuantity.system ^short = "單位系統"
* valueQuantity.system ^definition = "單位的系統，例如 UCUM"
* valueQuantity.code ^short = "單位的代碼表示"
* valueQuantity.code ^definition = "代表測量單位的標準符號"

* dataAbsentReason ^short = "數據未提供的原因"
* dataAbsentReason ^definition = "描述為什麼沒有觀測結果值的原因，如測量無法完成或患者拒絕等"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "此觀測衍生的檢體"
* specimen ^definition = "此觀測結果所來源的檢體參考"

* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "包含的觀測組件"
* hasMember ^definition = "通常用於結果群組、群組檢驗，此資源指向相關資源"

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
