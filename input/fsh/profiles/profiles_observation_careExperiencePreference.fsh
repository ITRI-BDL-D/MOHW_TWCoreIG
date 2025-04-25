Profile:        TWCoreObservationCareExperiencePreference
Parent:         Observation
Id:             Observation-careExperiencePreference-twcore
Title:          "TW Core Observation Care Experience Preference"
Description:    "此臺灣核心-病人照護偏好註記（TW Core Observation Care Experience Preference）Profile 說明本IG如何進一步定義 FHIR 的 Observation Resource 以呈現照護經驗偏好資料。  
(可填寫文字或代碼等說明)"
* ^version = "0.3.2"
* . ^short = "測量與簡單陳述"
* . ^definition = "關於病人、裝置或其他主體的測量與簡單陳述。"
* . ^comment = "用於簡單觀察，例如裝置測量、實驗室原子結果、生命徵象、身高、體重、吸菸狀態、備註等。其他資源則用於提供觀察的上下文，例如實驗室報告等。"

* implicitRules ^short = "建立本內容所依據的一組規則"
* implicitRules ^definition = "指向建構本 resource 時所遵循規則的參照，處理內容時必須理解這些規則。通常是參照定義特殊規則的實作指南（Implementation Guide），以及其他 profiles 等。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解，這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，尚未準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應避免使用此欄位。"

* status ^definition = "此欄位表示照護偏好觀察結果的狀態。"
* status ^comment = "此元素被標記為修飾性（modifier），因為 status 可能包含標示資源目前無效的代碼。"
* status MS

* category ^short = "觀察類型的分類"
* category ^definition = "用於分類所進行觀察的一般類型的代碼。"
* category ^comment = "除了必要的 category 值集外，此元素也允許根據擁有者自訂的分類方案進行多元分類，且可同時使用多個分類。分類的細緻程度由值集中的 category 概念所決定。"
* category MS
* category only CodeableConceptTW
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains twcore 0..1 MS
* category[twcore] 0..1 MS
* category[twcore].coding 1..* MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/category-code-tw"
* category[twcore].coding.code = #care-experience-preference

* category[twcore] ^short = "照護偏好類型的分類"
* category[twcore] ^definition = "用於分類照護偏好觀察的類型代碼。"
* category[twcore].coding ^short = "由術語系統所定義的代碼"
* category[twcore].coding ^definition = "參照由術語系統定義的代碼。"
* category[twcore].coding.system ^short = "術語系統的識別碼"
* category[twcore].coding.system ^definition = "定義代碼符號意義的代碼系統之識別。"
* category[twcore].coding.code ^short = "照護偏好的代碼符號"
* category[twcore].coding.code ^definition = "由系統定義的語法符號，代表照護偏好的類型。"

* code = http://loinc.org#95541-9
* code ^short = "照護偏好代碼"
* code ^definition = "描述所觀察到的照護偏好內容。此處使用 LOINC 代碼表示病人的照護偏好。"
* code ^comment = "所有的 code-value 配對需要被考慮，才能正確理解照護偏好觀察的意義。"
* code MS

* category only CodeableConceptTW
* code only CodeableConceptTW
* component.code only CodeableConceptTW
* code MS
* code.text MS

* subject ^short = "此照護偏好觀察所關於的病人"
* subject ^definition = "此照護偏好觀察所關於且將觀察記錄存入其病歷的病人。"
* subject ^comment = "照護偏好觀察通常關聯到特定病人，用於記錄其治療和照護方式的偏好。"
* subject MS
* subject only Reference(TWCorePatient)

* encounter ^short = "進行此照護偏好觀察時的醫療事件"
* encounter ^definition = "此照護偏好觀察所發生的醫療事件（例如病人與醫療提供者的會談）。"
* encounter ^comment = "這通常是記錄照護偏好時的就診（encounter），可能是諮詢、收案或評估的場合。"
* encounter only Reference(TWCoreEncounter)

* performer ^short = "記錄照護偏好的負責人"
* performer ^definition = "負責記錄或確認照護偏好觀察為「真實」的人員。"
* performer ^comment = "通常是醫護人員、社工或病人本人記錄照護偏好。"
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)

* specimen ^short = "用於此觀察的標本"
* specimen ^definition = "進行此觀察時所使用的標本。"
* specimen ^comment = "照護偏好觀察通常不涉及標本，但此欄位保留以維持與 Observation 資源的一致性。"
* specimen only Reference(TWCoreSpecimen)

/* performer MS
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
*/
* effective[x] ^short = "照護偏好觀察在臨床上的相關時間/時間區間"
* effective[x] ^definition = "照護偏好被紀錄或被視為有效的時間或時間區間。"
* effective[x] ^comment = "照護偏好的記錄時間非常重要，因為病人的偏好可能隨時間而變化。"
* effective[x] 1..1
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true

* value[x] ^short = "照護偏好的實際內容"
* value[x] ^definition = "照護偏好觀察的實際內容，可能是文字描述或代碼化的偏好記錄。"
* value[x] ^comment = "照護偏好可以多種形式表達，包括自由文字陳述或使用預定義的偏好選項代碼。"
* value[x] only Quantity or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
//* value[x] only string or CodeableConcept or Quantity or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].code = #string
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[=].code = #CodeableConcept