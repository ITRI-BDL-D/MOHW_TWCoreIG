Profile:        TWCoreCareTeam
Parent:         CareTeam
Id:             CareTeam-twcore
Title:          "TW Core CareTeam"
Description:    "此臺灣核心-照護團隊（TW Core CareTeam） Profile說明本IG如何進一步定義FHIR的CareTeam Resource以呈現照護團隊資料。"
* ^version = "0.3.2"

* . ^short = "在健康照護過程中提供服務的照護團隊"
* . ^definition = "指明受照護者所需要的團隊，此資源用來識別參與關照受照護者或為受照護者（個人或群體）提供醫療保健服務的一群人及其在團隊中的角色。"

* id ^short = "不重複的ID用以識別儲存在特定FHIR Server中的CareTeam紀錄，通常又稱為邏輯性ID。"
* id ^definition = "resource的邏輯ID，在resource的URL中使用。一旦指定，這個值永遠不會改變。"
* id ^comment = "一個resource使用新增操作（create operation）提交給伺服器時，此resource沒有id，它的id在resource被創建後由伺器分配/指定。"

* meta ^short = "此CareTeam Resource的metadata"
* meta ^definition = "關於resource的metadata。這是由基礎建設維護的內容。內容的更改可能並不總是與resource的版本更改相關聯。"

* language ^short = "用以表述CareTeam Resource內容的語言。"
* language ^definition = "編寫此resource的語言"
* language ^binding.description = "人類語言；鼓勵使用CommonLanguages代碼表中的代碼，但不強制一定要使用此代碼表，你也可使用其他代碼表的代碼或單純以文字表示。"
* language ^comment = "提供語言是為了支援索引和可存取性（通常，文字表述轉語音等服務使用此語言標籤）。html lanuage tag適用於此敘述。resource上的語言標籤可用於指定從resource中的資料所產成的其他表述之語言。不是所有的內容都必須使用此語言。不應該假定Resource.language自動適用於敘述。如果指定語言，它也應該被指定在html中的div資料項目（關於xml:lang和html lang屬性之間的關係，見HTML5中的規則）。"

* status MS
* status ^short = "proposed | active | suspended | inactive | entered-in-error"
* status ^definition = "照護團隊目前的狀態。"
* status ^binding.description = "代表照護團隊狀態的代碼；應填入所綁定值集中的其中一個代碼。"

* subject 1.. MS
* subject only Reference(TWCorePatient or Group)
* subject ^short = "照護團隊所照護的對象是誰？"
* subject ^definition = "照護團隊所關照的個人或群體。"
* subject ^comment = "參照可能是相對的，絕對的或內部的。"
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false

* participant 1.. MS
* participant ^short = "照護團隊中的成員"
* participant ^definition = "照護團隊的成員，包含他們在團隊中扮演的角色和負責的時間段。"

* participant.role 1..1 MS
* participant.role from http://hl7.org/fhir/ValueSet/participant-role (extensible)
* participant.role ^short = "照護團隊成員的角色"
* participant.role ^definition = "指明此照護團隊成員在團隊中所扮演的角色。"
* participant.role ^binding.description = "應填入所綁定值集中適合的代碼，確定無適合的代碼才可以使用其他值集的代碼來表示。"

* participant.member 1.. MS
* participant.member only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam or TWCoreRelatedPerson)
* participant.member ^short = "團隊成員是誰"
* participant.member ^definition = "團隊成員可能是個人、組織、照護者，或是具有特定角色的醫事人員，或是將角色代表給特定個人或組織的醫事職務。"
* participant.member ^comment = "參照可能是相對的，絕對的或內部的。"
* participant.member ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = true
* participant.member ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = false
* participant.member ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = false
* participant.member ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = true
* participant.member ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = false
* participant.member ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* participant.member ^type.targetProfile[=].extension.valueBoolean = true

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與此CareTeam相關的就醫事件"
* encounter ^definition = "此CareTeam是在哪次就醫情境中確定或修正的。"
* encounter ^comment = "此資料項目不用於記錄照護團隊負責的所有就診。就診用來提供建立或變更照護團隊的情境。"

* participant.onBehalfOf only Reference(TWCoreOrganization)
* participant.onBehalfOf ^short = "組織成員代表誰"
* participant.onBehalfOf ^definition = "團隊成員代表的組織。"
* participant.onBehalfOf ^comment = "若成員是個人，此資料項目可用來表示此個人代表某個組織。"

* reasonReference only Reference(TWCoreCondition)
* reasonReference ^short = "為何需要此照護團隊"
* reasonReference ^definition = "描述建立照護團隊的原因或需要照護團隊服務的情況。"
* reasonReference ^comment = "可能的原因包括：病人目前的健康狀況、潛在的健康問題、複雜的醫療需求、已安排的程序（例如：手術）或出院後服務計畫。"

* managingOrganization only Reference(TWCoreOrganization)
* managingOrganization ^short = "照護團隊所屬的組織"
* managingOrganization ^definition = "負責召集或管理此照護團隊的組織。"
* managingOrganization ^comment = "此資料項目與participant.member中包含的組織不同，它特指負責管理照護團隊的組織。"