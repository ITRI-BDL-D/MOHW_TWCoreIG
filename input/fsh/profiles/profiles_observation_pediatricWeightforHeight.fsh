Profile:        TWCoreObservationPediatricWeightforHeight
Parent:         TWCoreObservationVitalSigns
Id:             Observation-pediatric-weight-height-twcore
Title:          "TW Core Pediatric Weight for Height Observation"
Description:    "此臺灣核心-兒童生長曲線（TW Core Pediatric Weight for Height Observation）Profile說明本IG如何進一步定義臺灣核心-生命體徵（TW Core Observation Vital Signs） Profile以呈現兒童生長曲線資料。"
* ^version = "0.3.2"
* . ^short = "兒童生長曲線樣板"
* .modifierExtension ^short = "不可忽略的擴充"
* code only CodeableConceptTW
* code = http://loinc.org#77606-2
* code MS
* code ^short = "依年齡和性別的身高別體重"
* code.coding ^short = "由術語系統定義的代碼"
* code.coding.system ^short = "術語系統的識別"
* code.coding.code ^short = "系統定義的語法符號"
* valueQuantity.value ^short = "數值（含隱含精確度）"
* valueQuantity.unit ^short = "單位顯示"
* valueQuantity.system ^short = "單位系統"
* valueQuantity.code ^short = "單位的編碼形式"
* valueQuantity 0..1 MS
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)
* component.modifierExtension ^short = "即使無法識別也不可忽略的擴充"
* component.value[x] ^short = "以 UCUM 記錄的生命體徵值"
* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* specimen only Reference(TWCoreSpecimen)
* device only Reference(TWCoreImplantableDevice or DeviceMetric)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* encounter only Reference(TWCoreEncounter)