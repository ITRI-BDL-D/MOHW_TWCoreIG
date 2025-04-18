Profile:        TWCoreObservationRespiratoryRate
Parent:         http://hl7.org/fhir/StructureDefinition/resprate
Id:             Observation-respiratory-rate-twcore
Title:          "TW Core Observation Respiratory Rate"
Description:    "此臺灣核心-呼吸速率（TW Core Observation Respiratory Rate）Profile 說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile 以呈現呼吸速率資料。"
* ^version = "0.3.2"
* . ^short = "呼吸速率觀察紀錄"
* . ^definition = "The FHIR Vitals Signs profile 為觀察資源記錄、搜尋和取得與病患相關的生命徵象設定了最低期望值。"
* . ^comment = "用於簡單觀察，如儀器量測、實驗室原子結果、生命體徵、身高、體重、吸菸狀態、備註等。其他資源則用於提供觀察的上下文，例如實驗室報告等。"
* implicitRules ^short = "產生本內容時所依據的規則集"
* modifierExtension ^short = "不可忽略的擴充"
* basedOn ^short = "依據計畫、提案或醫囑執行"
* partOf ^short = "所屬的相關事件"
* category ^short = "觀察類型分類"
* category[VSCat] ^short = "觀察類型分類"
* category[VSCat] ^definition = "用於分類所做觀察的一般類型的代碼。"
* category[VSCat].coding ^short = "由術語系統定義的代碼"
* category[VSCat].coding.system ^short = "術語系統的識別碼"
* category[VSCat].coding.code ^short = "系統語法中所定義的符號"
* code only CodeableConceptTW
//* code = http://loinc.org#9279-1
//* code MS
* code.coding 1..1
* code ^short = "呼吸速率"
* code.coding ^short = "由術語系統定義的代碼"
* subject ^short = "此觀察所關聯的對象（人或物）"
* encounter ^short = "進行本觀察時的醫療事件"
* effective[x] ^short = "在記錄生命徵象時，常僅提供一個日期時間欄位。"
* performer ^short = "負責本觀察的執行者"
* value[x] ^short = "生命體徵數值，通常以 Quantity 資料型態記錄。輔助觀察如cuff size 可用其他型態如 CodeableConcept。"
* valueQuantity ^short = "生命體徵數值，通常以 Quantity 資料型態記錄。輔助觀察如cuff size可用其他型態如 CodeableConcept。"
* valueQuantity.value ^short = "數值（含隱含精確度）"
* valueQuantity.unit ^short = "單位顯示"
* valueQuantity.system ^short = "定義單位代碼的系統"
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
* valueQuantity.code = #/min (exactly)*/
* valueQuantity.code ^short = "以 UCUM 記錄的生命體徵值或組件結果"
* dataAbsentReason ^short = "結果缺漏的原因"
* specimen ^short = "本觀察所用檢體"
* hasMember ^short = "用於報告生命體徵組件"
* derivedFrom ^short = "本觀察所依據的相關量測"
* component ^short = "用於報告收縮壓與舒張壓等組件。"
* component.modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component.code ^short = "組件觀察的類型（代碼/型態）"
* component.value[x] ^short = "以 UCUM 記錄的生命體徵值或組件結果"
* component.dataAbsentReason ^short = "組件缺漏的原因"
* encounter only Reference(TWCoreEncounter)
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* specimen only Reference(TWCoreSpecimen)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* subject only Reference(TWCorePatient)
