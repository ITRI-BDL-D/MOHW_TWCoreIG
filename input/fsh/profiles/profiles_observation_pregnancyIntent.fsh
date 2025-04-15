Profile: TWCoreObservationPregnancyIntent 
Parent: Observation
Id: Observation-pregnancy-intent-twcore
Title: "TW Core Observation Pregnancy Intent"
Description: "此臺灣核心-妊娠計畫（TW Core Observation Pregnancy Intent） Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現妊娠計畫資料。"
* ^version = "0.3.2"

* . ^short = "用於呈現妊娠計畫資料的觀察紀錄"
* . ^definition = "此 Profile 用於記錄與妊娠計畫（pregnancy intent）相關的觀察資料，包含受試者對於妊娠的意圖。"


* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"

* modifierExtension ^short = "用於擴充資料結構且會改變理解方式的擴充欄位"
* modifierExtension ^definition = "用於表示會改變基本元素理解方式的擴充內容。通常用於標示例外、否定或修正的情境。"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "依據的醫療計畫或請求"
* basedOn ^definition = "此觀察紀錄是根據哪些醫療計畫或請求所產生。"

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "所屬的醫療事件"
* partOf ^definition = "此觀察紀錄是哪些醫療事件的一部分。"

* status MS
* status ^definition = "指出此觀察紀錄目前的狀態，例如：已完成、草稿、修正等。"

* category MS
* category only CodeableConceptTW
* category ^short = "觀察紀錄的分類"
* category ^definition = "用於分類此觀察紀錄的類型，例如：社會史（social-history）等。"
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains twcore 0..1 MS
* category[twcore].coding 1..* MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #social-history
* category[twcore].coding.system ^short = "分類系統"
* category[twcore].coding.system ^definition = "此分類所使用的系統，固定為 observation-category。"
* category[twcore].coding.code ^short = "分類代碼"
* category[twcore].coding.code ^definition = "此分類的代碼，固定為 social-history（社會史）。"

* code MS
* code only CodeableConceptTW
* code = http://loinc.org#86645-9
* code ^short = "妊娠計畫（Pregnancy Intent）"
* code ^definition = "此觀察紀錄所記錄的主題，固定為妊娠計畫（LOINC 86645-9）。"

* subject 1.. MS
* subject only Reference(TWCorePatient)
* subject ^short = "觀察對象"
* subject ^definition = "此觀察紀錄所屬的個案（病人）。"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "相關就醫事件"
* encounter ^definition = "此觀察紀錄所屬的就醫事件。"

* effectiveDateTime 1.. MS
* effectiveDateTime ^short = "觀察紀錄的生效時間"
* effectiveDateTime ^definition = "此觀察資料的紀錄或生效時間。"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行者"
* performer ^definition = "負責執行此觀察紀錄的個人或組織。"

* valueCodeableConcept 1.. MS
* valueCodeableConcept only CodeableConceptTW
* valueCodeableConcept from LOINCPregnancyIntentCode (preferred)
* valueCodeableConcept ^short = "妊娠計畫的編碼回應（Coded Responses from Pregnancy Intent Value Set）"
* valueCodeableConcept ^definition = "此欄位用於記錄妊娠計畫的具體回應，需使用 LOINC Pregnancy Intent Value Set 之編碼。"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "檢體資訊"
* specimen ^definition = "此觀察紀錄所使用的檢體。"

* hasMember only Reference(TWCoreObservationSimple or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "組成項目"
* hasMember ^definition = "此觀察紀錄所包含的其他觀察項目。"

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationSimple or MolecularSequence)
* derivedFrom ^short = "資料來源"
* derivedFrom ^definition = "此觀察紀錄所衍生自的其他資料來源。"
