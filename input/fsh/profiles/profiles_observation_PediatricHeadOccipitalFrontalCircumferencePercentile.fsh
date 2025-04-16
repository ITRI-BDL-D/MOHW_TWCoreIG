Profile:        TWCoreObservationPediatricHeadOccipitalFrontalCircumferencePercentile
Parent:         TWCoreObservationVitalSigns
Id:             Observation-pediatric-head-circumference-twcore
Title:          "臺灣核心-兒童頭圍枕額圍百分位數觀察紀錄"
Description:    "此臺灣核心-兒童頭圍百分位數（TW Core Observation Pediatric Head Occipital Frontal Circumference Percentile） Profile 說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile 以呈現兒童頭圍百分位數資料。"
* ^version = "0.3.2"
* . ^short = "兒童頭圍百分位數觀察紀錄"
* . ^definition = "記錄兒童頭圍枕額圍百分位數的觀察資料。"
* . ^comment = "用於簡單觀察，如儀器量測、實驗室原子結果、生命體徵、身高、體重、吸菸狀態、備註等。其他資源則用於提供觀察的上下文，例如實驗室報告等。"
* modifierExtension ^short = "不可忽略的擴充"
* code only CodeableConceptTW
* code = http://loinc.org#8289-1
* code MS
* code ^short = "頭圍枕額圍百分位數"
* valueQuantity 0..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.value ^short = "數值（含隱含精確度）"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.unit ^short = "單位顯示"
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.system ^short = "單位系統"
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)
* valueQuantity.code ^short = "單位代碼"
* component.modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component.value[x] ^short = "以 UCUM 記錄的生命體徵值或組件結果"
* encounter only Reference(TWCoreEncounter)
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* specimen only Reference(TWCoreSpecimen)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* subject only Reference(TWCorePatient)