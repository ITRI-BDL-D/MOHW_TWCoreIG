Profile: TWCoreObservationSmokingStatus
Parent: Observation
Id: Observation-smoking-status-twcore
Title: "TW Core Observation Smoking Status"
Description: "此臺灣核心-吸菸狀態 (TW Core Observation Smoking Status) Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現吸菸狀態資料。"
* ^version = "0.3.2"

* . ^short = "吸菸狀態觀察值"
* . ^definition = "關於病患吸菸習慣與狀態的觀察結果紀錄。"
* . obeys tw-core-7
* . obeys tw-core-8

* status MS
* status ^definition = "觀察結果的狀態，指出此觀察值的可用性。"

* category 1.. MS
* category ^short = "觀察值分類"
* category ^definition = "此觀察值所屬的分類，用於搜尋、排序和顯示。"
* category only CodeableConceptTW
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open

* category contains twcore 0..1 MS
* category[twcore] ^short = "臺灣核心觀察值分類"
* category[twcore] ^definition = "臺灣核心定義的觀察值分類。"
* category[twcore].coding 1..* MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #social-history
* category[twcore].coding.code ^short = "社會史"
* category[twcore].coding.code ^definition = "社會史相關的觀察結果，包含吸菸、飲酒等習慣。"

* code MS
* code ^short = "觀察值的類型"
* code ^definition = "描述所執行的觀察項目或測量項目的代碼。"
* code only CodeableConceptTW
* code from SmokingStatusTypeCode (extensible)
* code ^condition[0] = "tw-core-7"
* code ^condition[+] = "tw-core-8"

* subject 1.. MS
* subject ^short = "觀察的對象"
* subject ^definition = "此觀察結果所關聯的病患。"
* subject only Reference(TWCorePatient)

* effective[x] 1.. MS
* effective[x] ^short = "觀察發生的時間"
* effective[x] ^definition = "此觀察是何時進行的，或是結果的相關時間。"
* effective[x] only dateTime or Period

* value[x] 1.. MS
* value[x] ^short = "觀察的結果或發現"
* value[x] ^definition = "觀察所得到的實際結果。"
* value[x] ^condition[0] = "tw-core-7"
* value[x] ^condition[+] = "tw-core-8"

* valueQuantity 0..1 MS
* valueQuantity ^short = "以數值表示的結果"
* valueQuantity ^definition = "以數量方式表達的觀察結果，如每日吸菸量等。"
* valueQuantity from UnitsOfMeasureCaseSensitive (required)

* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "以代碼表示的結果"
* valueCodeableConcept ^definition = "以代碼方式表達的觀察結果，如吸菸狀態分類等。"
* valueCodeableConcept from SmokingStatusComprehensiveCode (extensible)

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與此觀察相關的就醫事件"
* encounter ^definition = "此觀察記錄所屬的就醫情境。"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "此觀察的申請依據"
* basedOn ^definition = "此觀察記錄所依據的照護計畫或醫囑。"

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "此觀察所屬的更大程序"
* partOf ^definition = "此觀察記錄是哪些醫療程序或行為的一部分。"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "觀察使用的檢體"
* specimen ^definition = "此觀察結果所使用的檢體來源。"

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationSimple or MolecularSequence)
* derivedFrom ^short = "此觀察的衍生依據"
* derivedFrom ^definition = "此觀察記錄衍生自哪些其他資源。"

* hasMember only Reference(TWCoreObservationSimple or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "包含的相關觀察項目"
* hasMember ^definition = "此觀察記錄所包含的其他相關觀察項目或問卷。"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行觀察的人員"
* performer ^definition = "負責執行此觀察或產生此觀察結果的醫療人員或單位。"
