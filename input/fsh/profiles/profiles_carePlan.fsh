Profile:        TWCoreCarePlan
Parent:         CarePlan
Id:             CarePlan-twcore
Title:          "TW Core CarePlan"
Description:    "此臺灣核心-照護計畫(TW Core CarePlan) Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource 以呈現照護計畫資料。"
* ^version = "0.3.2"

* . ^short = "特定照護目標下為一位患者或一群患者識別的活動、干預和結果計畫"
* . ^definition = "描述為實現一個或多個目標而將為一位患者(或一群患者)進行的活動的計畫，包括診斷、監測、評估、治療、藥物治療、追蹤等。"
* id ^short = "不重複的 ID 用以識別儲存在特定 FHIR Server 中的 CarePlan 紀錄，通常又稱為邏輯性 ID。"
* id ^definition = "resource 的邏輯 ID，在 resource 的 URL 中使用。一旦指定，這個值永遠不會改變。"
* id ^comment = "一個 resource 使用新增操作(create operation)提交給伺服器時，此 resource 沒有 id，它的 id 在 resource 被創建後由伺器分配/指定。"
* meta ^short = "此 CarePlan Resource 的 metadata"
* meta ^definition = "關於 resource 的 metadata。這是由基礎建設維護的內容。內容的更改可能並不總是與 resource 的版本更改相關聯。"
* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解。這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，還沒有準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應該避免使用這個資料項目。通常在使用時，此 URL 是對 IG 的參照，此 IG 將這些特殊規則與其他 profiles、value sets 等一起定義為其敘述的一部分。"
* language ^short = "用以表述 CarePlan Resource 內容的語言"
* language ^definition = "編寫此 resource 的語言"
* language ^binding.description = "人類語言；鼓勵使用 CommonLanguages 代碼表中的代碼，但不強制一定要使用此代碼表，你也可使用其他代碼表的代碼或單純以文字表示。"
* language ^comment = "提供語言是為了支援索引和可存取性(通常，文字表述轉語音等服務使用此語言標籤)。html lanuage tag 適用於此敘述。resource 上的語言標籤可用於指定從 resource 中的資料所產成的其他表述之語言。不是所有的內容都必須使用此語言。不應該假定 Resource.language 自動適用於敘述。如果指定語言，它也應該被指定在 html 中的 div 資料項目(關於 xml:lang 和 html lang 屬性之間的關係，見 HTML5 中的規則)。"
* language ^example.label = "Value"
* language ^example.valueString = "zh-TW"

* text MS
* text ^short = "CarePlan Resource 之內容摘要以供人閱讀"
* text ^definition = "人可讀的敘述，包含 resource 的摘要，可用於向人表述 resource 的內容。敘述不需要對所有的結構化資料進行編碼，但需要包含足夠的細節使人在閱讀敘述時理解「臨床安全性」。resource 定義有哪些內容應該在敘述中表示，以確保臨床安全。"
* text ^comment = "內嵌(contained)的 resource 沒有敘述，非內嵌(contained)的 resource 則 **建議應該(SHOULD)** 有敘述。有時 resource 可能只有文字表述，很少或沒有額外的結構化資料(只要滿足所有 minOccurs=1 的資料項目)。這可能出現在舊系統的資料，當資訊以 「文字表述區塊(text blob)」的形式被取得，或者文字表述是原始輸入或說明，而編碼資訊稍後再添加。"

* text.status MS
* text.status from TWNarrativeStatus
* text.status ^short = "generated | additional"
* text.status ^binding.description = "敘述狀態的受限值集。"
* text.div MS
* text.div ^short = "有限的 xhtml 內容"

* status MS
* status from RequestStatus (required)
* status ^requirements = "指出計畫是否正在實施、代表未來意圖或是現在的歷史記錄。"
* status ^binding.description = "指出計畫是否正在實施、代表未來意圖或是現在的歷史記錄。"
* status ^short = "照護計畫目前的狀態"
* status ^definition = "指明照護計畫是否正在執行中、表示未來意向或現在已成為歷史記錄。"
* status ^comment = "可以在 [[event.html#statemachine | 事件模式]] 文件中找到一個標準的狀態轉換圖。「未知」不代表「其他」狀態 - 必須使用其中一個已定義的狀態，「未知」用於表示不確定當前狀態。"

* intent MS
* intent from CarePlanIntent (required)
* intent ^binding.description = "表示與照護計畫相關的權威性/意向性程度的代碼"
* intent ^short = "照護計畫的意圖"
* intent ^definition = "表示與照護計畫相關的權威性/意向性程度。"

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "照護計畫的類型。"
* category ^requirements = "識別這是什麼「種類」的計畫，以支援多個共存計畫之間的區分；例如：「居家健康」、「精神科」、「氣喘」、「疾病管理」、「保健計畫」等。"
* category ^short = "照護計畫的類型"

* category contains AssessPlan 1..1 MS
* category[AssessPlan] = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw#assess-plan
* category[AssessPlan] ^definition = "照護計畫的類型。"
* category[AssessPlan] ^requirements = "識別這是什麼「種類」的計畫，以支援多個共存計畫之間的區分；例如：「居家健康」、「精神科」、「氣喘」、「疾病管理」、「保健計畫」等。"
* category[AssessPlan] ^short = "評估計畫"

* subject only Reference(TWCorePatient or Group)
* subject MS
* subject ^definition = "照護計畫是為了誰。"
* subject ^requirements = "識別計畫描述其意圖照護的病人或群體。"
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* subject ^short = "照護計畫的對象"

* basedOn only Reference(TWCoreCarePlan)
* basedOn ^short = "履行或延伸的照護計畫"
* basedOn ^definition = "識別此照護計畫所建立的父計畫。"
* basedOn ^comment = "參照可以是相對的、絕對的或內部的。"

* replaces only Reference(TWCoreCarePlan)
* replaces ^short = "被此計畫取代的照護計畫"
* replaces ^definition = "識別被此照護計畫所取代的照護計畫。"
* replaces ^comment = "參照可以是相對的、絕對的或內部的。"

* partOf only Reference(TWCoreCarePlan)
* partOf ^short = "作為父照護計畫的一部分"
* partOf ^definition = "此照護計畫是另一個照護計畫的一部分。例如，專門針對骨折修復或糖尿病控制的計畫可能是出院護理計畫的一部分。"
* partOf ^comment = "參照可以是相對的、絕對的或內部的。"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與此照護計畫相關的就醫事件"
* encounter ^definition = "此照護計畫是在哪個就醫情境產生的。"
* encounter ^comment = "參照可以是相對的、絕對的或內部的。注意：如果 Encounter 參照是一個 Episode of Care 的一部分，則此資料點不足以隱含建立關聯。"

* author only Reference(TWCorePatient or TWCorePractitioner or TWCorePractitionerRole or TWCoreImplantableDevice or TWCoreRelatedPerson or TWCoreOrganization or TWCoreCareTeam)
* author ^short = "照護計畫的作者"
* author ^definition = "負責建立照護計畫內容的個人或組織。"
* author ^comment = "參照可以是相對的、絕對的或內部的。"

* contributor only Reference(TWCorePatient or TWCorePractitioner or TWCorePractitionerRole or TWCoreImplantableDevice or TWCoreRelatedPerson or TWCoreOrganization or TWCoreCareTeam)
* contributor ^short = "對計畫提供資訊的人員"
* contributor ^definition = "對照護計畫的建立提供資訊的個人或組織，但不對照護計畫負責。"
* contributor ^comment = "參照可以是相對的、絕對的或內部的。"

* careTeam only Reference(TWCoreCareTeam)
* careTeam ^short = "執行照護工作的團隊"
* careTeam ^definition = "確定負責執行此照護計畫的照護團隊。"
* careTeam ^comment = "參照可以是相對的、絕對的或內部的。"

* addresses only Reference(TWCoreCondition)
* addresses ^short = "本計畫處理的健康問題"
* addresses ^definition = "本照護計畫試圖解決的健康問題(例如：疾病、病情、問題)。"
* addresses ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.reference only Reference(Appointment or CommunicationRequest or DeviceRequest or TWCoreMedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup)
* activity.reference ^short = "照護行動的明細"
* activity.reference ^definition = "包含照護計畫之照護行動(診斷、治療等)明細的 request/request-like 資源。"
* activity.reference ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.reasonReference only Reference(TWCoreCondition or TWCoreObservationClinicalResult or TWCoreDiagnosticReport or TWCoreDocumentReference)
* activity.detail.reasonReference ^short = "為何需要此行動"
* activity.detail.reasonReference ^definition = "指出為何此行動是此照護計畫的一部分。"

* activity.detail.location only Reference(TWCoreLocation)
* activity.detail.location ^short = "行動發生的地點"
* activity.detail.location ^definition = "預期要執行此行動的地點。"
* activity.detail.location ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.performer only Reference(TWCorePractitioner or TWCorePractitionerRole or TWCoreOrganization or TWCoreRelatedPerson or TWCorePatient or TWCoreCareTeam or HealthcareService or TWCoreImplantableDevice)
* activity.detail.performer ^short = "執行或提供此行動的人員"
* activity.detail.performer ^definition = "確定預期要執行此行動的特定人員或組織。"
* activity.detail.performer ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.productReference only Reference(TWCoreMedication or Substance)
* activity.detail.productReference ^short = "物料/主題/產品資訊要參照的資源"
* activity.detail.productReference ^definition = "辨識行動所涉及的物料/主題/產品。"
* activity.detail.productReference ^comment = "參照可以是相對的、絕對的或內部的。"