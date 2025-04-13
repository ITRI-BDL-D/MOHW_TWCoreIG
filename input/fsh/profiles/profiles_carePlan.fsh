Profile:        TWCoreCarePlan
Parent:         CarePlan
Id:             CarePlan-twcore
Title:          "TW Core CarePlan"
Description:    "此臺灣核心-照護計畫（TW Core CarePlan） Profile說明本IG如何進一步定義FHIR的CarePlan Resource以呈現照護計畫資料。"
* ^version = "0.3.2"
* text MS
* text ^short = "CarePlan Resource之內容摘要以供人閱讀"
* text.status MS
* text.status from TWNarrativeStatus
* text.status ^short = "generated | additional"
* text.status ^binding.description = "敘述狀態的受限值集。"
* text.div MS
* text.div ^short = "有限的xhtml內容"

* status MS
* status from RequestStatus (required)
* status ^requirements = "指出計畫是否正在實施、代表未來意圖或是現在的歷史記錄。"
* status ^binding.description = "指出計畫是否正在實施、代表未來意圖或是現在的歷史記錄。"
* status ^short = "照護計畫目前的狀態"
* status ^definition = "指明照護計畫是否正在執行中、表示未來意向或現在已成為歷史記錄。"

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
* encounter ^comment = "參照可以是相對的、絕對的或內部的。注意：如果Encounter參照是一個Episode of Care的一部分，則此資料點不足以隱含建立關聯。"

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
* addresses ^definition = "本照護計畫試圖解決的健康問題（例如：疾病、病情、問題）。"
* addresses ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.reference only Reference(Appointment or CommunicationRequest or DeviceRequest or TWCoreMedicationRequest or NutritionOrder or Task or ServiceRequest or VisionPrescription or RequestGroup)
* activity.reference ^short = "照護行動的明細"
* activity.reference ^definition = "包含照護計畫之照護行動（診斷、治療等）明細的request/request-like資源。"
* activity.reference ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.reasonReference only Reference(TWCoreCondition or TWCoreObservationClinicalResult or TWCoreDiagnosticReport or TWCoreDocumentReference)
* activity.detail.reasonReference ^short = "為何需要此行動"
* activity.detail.reasonReference ^definition = "指出為何此行動是此照護計畫的一部分。"

* activity.detail.location only Reference(TWCoreLocation)
* activity.detail.location ^short = "行動發生的地點"
* activity.detail.location ^definition = "預期要執行此行動的地點。"
* activity.detail.location ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.performer only Reference(TWCorePractitioner or TWCorePractitionerRole or TWCoreOrganization or TWCoreRelatedPerson or TWCorePatient or TWCoreCareTeam or  HealthcareService or TWCoreImplantableDevice)
* activity.detail.performer ^short = "執行或提供此行動的人員"
* activity.detail.performer ^definition = "確定預期要執行此行動的特定人員或組織。"
* activity.detail.performer ^comment = "參照可以是相對的、絕對的或內部的。"

* activity.detail.productReference only Reference(TWCoreMedication or Substance)
* activity.detail.productReference ^short = "物料/主題/產品資訊要參照的資源"
* activity.detail.productReference ^definition = "辨識行動所涉及的物料/主題/產品。"
* activity.detail.productReference ^comment = "參照可以是相對的、絕對的或內部的。"