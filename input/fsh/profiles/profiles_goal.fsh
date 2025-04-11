Profile:        TWCoreGoal
Parent:         Goal
Id:             Goal-twcore
Title:          "TW Core Goal"
Description:    "此臺灣核心-目標（TW Core Goal） Profile說明本IG如何進一步定義FHIR的Goal Resource以呈現目標資料。"
* ^version = "0.3.2"

* . ^short = "病人健康照護中預期達成的結果或目標"
* . ^definition = "在健康照護過程中，描述某患者或團體預期達成的結果或目標，是照護計畫的一部分，此目標可由患者、醫師或其他相關人員所提出。"

* id ^short = "不重複的ID用以識別儲存在特定FHIR Server中的Goal紀錄，通常又稱為邏輯性ID。"
* id ^definition = "resource的邏輯ID，在resource的URL中使用。一旦指定，這個值永遠不會改變。"
* id ^comment = "一個resource使用新增操作（create operation）提交給伺服器時，此resource沒有id，它的id在resource被創建後由伺器分配/指定。"

* lifecycleStatus MS
* lifecycleStatus ^short = "proposed | planned | accepted | active | on-hold | completed | cancelled | entered-in-error | rejected"
* lifecycleStatus ^definition = "表示目標的當前狀態，例如正在進行中或已完成。"
* lifecycleStatus ^binding.description = "表示目標當前狀態的代碼，必須使用所綁定的值集中的代碼。"

* description MS
* description ^short = "目標的文字敘述"
* description ^definition = "人可讀的目標敘述，描述要達成的目標。"
* description from http://hl7.org/fhir/ValueSet/clinical-findings (extensible)
* description ^binding.description = "應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"

* subject only Reference(TWCorePatient or Group or TWCoreOrganization)
* subject MS
* subject ^short = "此目標的對象是誰或什麼？"
* subject ^definition = "此目標針對的對象，可以是個人、群體或組織。"
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false

* start[x] only date or CodeableConcept
* start[x] MS
* start[x] ^short = "設定此目標的日期或事件"
* start[x] ^definition = "目標被識別或創建的日期或事件，表示何時開始追蹤此目標。"
* start[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* start[x] ^type.extension.valueBoolean = true

* target MS
* target ^short = "目標的測量內容和預期完成日期"
* target ^definition = "目標的具體測量內容，包括目標值和預期完成日期。"

* target.due[x] only date or Duration
* target.due[x] MS
* target.due[x] ^short = "完成目標的期限日期或持續時間"
* target.due[x] ^definition = "完成目標的預期日期或從目標創建起計算的持續時間。"
* target.due[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* target.due[x] ^type.extension.valueBoolean = true

* expressedBy only Reference(TWCorePatient or TWCorePractitioner or TWCorePractitionerRole or TWCoreRelatedPerson)
* expressedBy ^short = "誰記錄或負責此目標"
* expressedBy ^definition = "表明誰負責創建、記錄或負責此目標，可能是病人本人、醫師、其他照護人員或相關人士。"

* addresses only Reference(TWCoreCondition or TWCoreObservationClinicalResult or TWCoreMedicationStatement or NutritionOrder or TWCoreServiceRequest or RiskAssessment)
* addresses ^short = "此目標所針對的問題"
* addresses ^definition = "此目標所要解決或處理的健康狀況、藥物使用、檢查結果或其他臨床問題。"

* outcomeReference only Reference(TWCoreObservationClinicalResult)
* outcomeReference ^short = "追蹤目標結果的觀察紀錄"
* outcomeReference ^definition = "參照用於監測目標進展或最終結果的觀察紀錄。"