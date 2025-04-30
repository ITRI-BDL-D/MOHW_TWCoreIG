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
* encounter ^short = "與此觀察相關的就醫事件"
* encounter ^definition = "此觀察是在哪個就醫情境中進行的"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "取自患者的檢體"
* specimen ^definition = "觀察結果所基於的檢體"

* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* derivedFrom ^short = "此觀察所衍生的來源"
* derivedFrom ^definition = "此觀察的結果是基於其他觀察結果所衍生"

* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "相關觀察結果"
* hasMember ^definition = "屬於此觀察的相關結果群組"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "負責此觀察的人員"
* performer ^definition = "負責產生此觀察結果的人員"

* subject ^short = "觀察結果的對象"
* subject ^definition = "此兒童及青少年身體質量指數觀察結果所屬的患者，通常為2-20歲年齡段的兒童或青少年"
* subject ^comment = "參照可以是相對的、絕對的或內部的。"

* effective[x] ^short = "兒童及青少年身體質量指數測量的時間點或時間段"
* effective[x] ^definition = "進行兒童及青少年身體質量指數測量的臨床時間（可以是日期時間或期間），關鍵用於與年齡相關的百分位計算"
* effective[x] ^comment = "準確的時間對於依照年齡及性別的身體質量指數百分位計算至關重要。"


* dataAbsentReason ^short = "為何沒有身體質量指數值"
* dataAbsentReason ^definition = "提供缺少兒童及青少年身體質量指數百分位結果的原因"
* dataAbsentReason ^comment = "當沒有 value[x] 時，應提供 dataAbsentReason 說明原因，例如無法收集身高或體重數據等。"

* component ^short = "組成兒童及青少年身體質量指數觀察的成分項目"
* component ^definition = "兒童及青少年身體質量指數測量的組成部分，可能包含身高、體重、年齡等關鍵參數"
* component ^comment = "對於兒童及青少年身體質量指數，組件可能包括身高測量、體重測量等，這些參數用於計算BMI並與年齡性別相關的生長曲線對照。"
* component.code ^short = "組件類型的代碼，如身高、體重等"
* component.code ^definition = "描述此組件觀察的類型，例如使用LOINC代碼標識的身高或體重測量"
* component.value[x] ^short = "組件的實際結果，如身高或體重的具體數值"
* component.value[x] ^definition = "組件觀察的實際結果值，如以公分表示的身高或以公斤表示的體重"
* component.dataAbsentReason ^short = "為何組件沒有值，如無法測量身高/體重的原因"
* component.dataAbsentReason ^definition = "解釋為何特定組件（如身高或體重）沒有觀察結果值"
