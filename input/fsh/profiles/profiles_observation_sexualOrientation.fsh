Profile: TWCoreObservationSexualOrientation
Parent: Observation
Id: Observation-sexual-orientation-twcore
Title: "TW Core Observation Sexual Orientation"
Description: "此臺灣核心-性傾向 (TW Core Observation Sexual Orientation) Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現性傾向資料。"
* ^version = "0.3.2"
* . obeys tw-core-4
* . ^short = "性傾向觀察相關之量測、評估或發現"
* . ^definition = "關於患者性傾向之觀察結果。"
* status MS
* status ^definition = "觀察的狀態，如登錄、初步、最終等。"
* code MS
* code only CodeableConceptTW
* code = http://loinc.org#76690-7 "性傾向"
* code ^short = "性傾向觀察類型"
* code ^definition = "描述觀察之內容，識別此觀察為性傾向資訊。"
* subject MS
* subject ^short = "觀察對象"
* subject ^definition = "此性傾向觀察的主體 (通常為患者)。"
* subject only Reference(TWCorePatient)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^short = "觀察時間"
* effective[x] ^definition = "此欄位紀錄患者表達其情感、浪漫、性或情愛吸引力於他人之時間。"
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* valueCodeableConcept MS
* valueCodeableConcept ^short = "性傾向觀察結果"
* valueCodeableConcept ^definition = "性傾向之觀察結果值。"
* valueCodeableConcept only CodeableConceptTW
* valueCodeableConcept from SexualOrientationCodeSCT (extensible)
* valueCodeableConcept ^binding.description = "性傾向編碼值集"
* valueCodeableConcept ^comment = "此欄位記錄患者自我認同的性傾向，如異性戀、同性戀、雙性戀等"
* encounter only Reference(TWCoreEncounter)
* encounter ^short = "就醫情境"
* encounter ^definition = "性傾向觀察之醫療服務情境。"
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "依據之請求"
* basedOn ^definition = "此性傾向觀察所基於的照護計畫或請求。"
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "此觀察所屬之程序"
* partOf ^definition = "此性傾向觀察作為其中一部分的醫療活動。"
* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "檢體來源"
* specimen ^definition = "此性傾向觀察所使用的檢體。"
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationSimple or MolecularSequence)
* derivedFrom ^short = "衍生來源"
* derivedFrom ^definition = "此性傾向觀察的來源或衍生基礎。"
* hasMember only Reference(TWCoreObservationSimple or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "相關觀察"
* hasMember ^definition = "與此性傾向觀察相關的其他觀察。"
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "執行者"
* performer ^definition = "負責取得或解釋此性傾向觀察的人員。"
