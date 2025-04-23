Profile: TWCoreObservationPregnancyStatus
Parent: Observation
Id: Observation-pregnancy-status-twcore
Title: "TW Core Observation Pregnancy Status"
Description: "此臺灣核心-妊娠狀態 (TW Core Observation Pregnancy Status) Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現妊娠狀態資料。"
* ^version = "0.3.2"

* . ^short = "用於呈現妊娠狀態資料的觀察紀錄"
* . ^definition = "此 Profile 用於記錄患者的妊娠狀態，依據臺灣核心規範進行定義。"

* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解。這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，還沒有準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應該避免使用這個資料項目。通常在使用時，此 URL 是對 IG 的參照，此 IG 將這些特殊規則與其他 profiles、value sets 等一起定義為其敘述的一部分。"

* modifierExtension ^short = "用於擴充資料結構且會改變理解方式的擴充欄位"
* modifierExtension ^definition = "用於表示會改變基本元素理解方式的擴充內容。通常用於標示例外、否定或修正的情境。"
* modifierExtension ^comment = "modifierExtension 必須不會改變 resource 的基本意義，只能用於修飾、標示或限定內容。"

* status MS
* status ^definition = "指出妊娠狀態觀察紀錄目前的狀態，例如：已完成、進行中等。"

* category MS
* category only CodeableConceptTW
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category ^short = "觀察紀錄的分類"
* category ^definition = "用於分類本觀察紀錄的性質，例如：社會史 (social-history) 等。"
* category contains twcore 0..1 MS
* category[twcore].coding 1..* MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #social-history
* category[twcore].coding.system ^short = "分類系統網址"
* category[twcore].coding.code ^short = "分類代碼"

* code MS
* code only CodeableConceptTW
* code = http://loinc.org#82810-3
* code ^short = "妊娠狀態 (Pregnancy Status)"
* code ^definition = "本觀察紀錄所記錄的主題為妊娠狀態，對應 LOINC 代碼 82810-3。"

* subject 1.. MS
* subject only Reference(TWCorePatient)
* subject ^short = "觀察對象 (患者)"
* subject ^definition = "此觀察紀錄所屬的患者。"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "相關就醫事件"
* encounter ^definition = "本觀察紀錄所屬的就醫事件。"

* effectiveDateTime 1.. MS
* effectiveDateTime ^short = "觀察紀錄的生效時間"
* effectiveDateTime ^definition = "妊娠狀態觀察紀錄的生效或觀察時間。"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行觀察的對象"
* performer ^definition = "負責執行本觀察紀錄的個人、組織或團隊。"

* valueCodeableConcept 1.. MS
* valueCodeableConcept only CodeableConceptTW
* valueCodeableConcept from PregnancyStatusCodeSCT (preferred)
* valueCodeableConcept ^short = "妊娠狀態的編碼回應 (Coded Responses from Pregnancy Status Value Set)"
* valueCodeableConcept ^definition = "妊娠狀態的具體值，需使用 Pregnancy Status Value Set 內的編碼。"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "檢體資訊"
* specimen ^definition = "本觀察紀錄所使用的檢體。"

* hasMember only Reference(TWCoreObservationSimple or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "組成本觀察的子項目"
* hasMember ^definition = "本觀察紀錄所包含的子觀察項目。"

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationSimple or MolecularSequence)
* derivedFrom ^short = "資料來源參照"
* derivedFrom ^definition = "本觀察紀錄所引用的其他資料來源。"
