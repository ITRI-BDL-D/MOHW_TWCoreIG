Profile:        TWCoreObservationPediatricBMIforAge
Parent:         TWCoreObservationVitalSigns
Id:             Observation-pediatric-bmi-age-twcore
Title:          "TW Core Pediatric BMI for Age Observation"
Description:    "此臺灣核心-兒童及青少年身體質量指數 (TW Core Pediatric BMI for Age Observation) Profile 說明本 IG 如何進一步定義臺灣核心-生命體徵 (TW Core Observation Vital Signs) Profile 以呈現兒童及青少年身體質量指數資料。"
* ^version = "0.3.2"

* . ^short = "兒童及青少年身體質量指數的測量和觀察結果"
* . ^definition = "兒童及青少年身體質量指數的測量與觀察結果，以百分位數表示，作為評估 2-20 歲兒童及青少年生長發育與體重狀態的重要指標。"

* code only CodeableConceptTW
* code = http://loinc.org#59576-9
* code MS
* code ^short = "依照年齡及性別的身體質量指數 (BMI) [百分位]"
* code ^definition = "用以識別此觀察類型的代碼"

* valueQuantity 0..1 MS
* valueQuantity ^short = "實際的觀察結果"
* valueQuantity ^definition = "使用數值結果表示觀察結果"
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "百分位數值"
* valueQuantity.value ^definition = "依照年齡及性別的身體質量指數百分位數值"
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "單位文字表示"
* valueQuantity.unit ^definition = "度量單位的文字表示"
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system ^short = "度量單位系統"
* valueQuantity.system ^definition = "定義單位代碼的系統"
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "單位代碼"
* valueQuantity.code ^definition = "度量單位的代碼表示"
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)

* encounter only Reference(TWCoreEncounter)

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)

* specimen only Reference(TWCoreSpecimen)

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)

* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "相關觀察結果"
* hasMember ^definition = "屬於此觀察的相關結果群組"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)

* component.modifierExtension ^short = "即使未被辨識，也不可忽略的擴展名"
* component.value[x] ^short = "組件的實際結果，如身高或體重的具體數值"
* component.value[x] ^definition = "組件觀察的實際結果值，如以公分表示的身高或以公斤表示的體重"
