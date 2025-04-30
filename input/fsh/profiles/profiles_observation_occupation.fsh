Profile:        TWCoreObservationOccupation
Parent:         Observation
Id:             Observation-occupation-twcore
Title:          "TW Core Observation Occupation"
Description:    "此臺灣核心-職業（TW Core Observation Occupation） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現職業資料。"
* ^version = "0.3.2"
* . ^short = "測量與簡單陳述"
* . ^definition = "關於病人、裝置或其他主體的測量與簡單陳述。"
* . ^comment = "用於簡單觀察，例如裝置測量、實驗室原子結果、生命徵象、身高、體重、吸菸狀態、備註等。其他資源則用於提供觀察的上下文，例如實驗室報告等。"

* implicitRules ^short = "建立本內容所依據的一組規則"
* implicitRules ^definition = "指向建構本 resource 時所遵循規則的參照，處理內容時必須理解這些規則。通常是參照定義特殊規則的實作指南（Implementation Guide），以及其他 profiles 等。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解，這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，尚未準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應避免使用此欄位。"

* modifierExtension ^short = "不可被忽略的擴充資訊"
* modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。"
* modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。"

* status MS
* status ^definition = "此欄位表示觀察結果的狀態。"
* status ^comment = "此元素被標記為修飾性（modifier），因為 status 可能包含標示資源目前無效的代碼。"

* category MS
* category ^short = "觀察類型的分類"
* category ^definition = "用於分類所進行觀察的一般類型的代碼。"
* category ^comment = "除了必要的 category 值集外，此元素也允許根據擁有者自訂的分類方案進行多元分類，且可同時使用多個分類。分類的細緻程度由值集中的 category 概念所決定。"

* category only CodeableConceptTW
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains twcore 0..1 MS
* category[twcore] ^short = "職業觀察"
* category[twcore].coding 1..* MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #social-history
* category[twcore].coding ^short = "由專門術語系統（terminology system）定義的代碼"
* category[twcore].coding.system ^short = "專門術語系統（terminology system）的識別碼"
* category[twcore].coding.code ^short = "系統定義的語法符號"

* code = http://loinc.org#11341-5
* code ^short = "職業歷史"
* code MS
* code.text MS
* code only CodeableConceptTW
* code ^binding.strength = #preferred
* code.coding ^short = "由專門術語系統（terminology system）定義的代碼"
* code.coding.system ^short = "專門術語系統（terminology system）的識別碼"
* code.coding.code ^short = "系統定義的語法符號"
* component.code only CodeableConceptTW
* subject 1.. MS
* subject ^short = "此觀察所關於的對象"
* subject ^definition = "此觀察所關於且將觀察記錄存入其病歷的病人、病人群組、地點或設備。"
* subject only Reference(TWCorePatient)
* encounter only Reference(TWCoreEncounter)
* encounter ^short = "進行此觀察時的醫療事件"
* encounter ^definition = "此觀察所發生的醫療事件（例如病人與醫療提供者的互動）。"
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* performer ^short = "對觀察結果負責的人"
* performer ^definition = "負責確認觀察數值為「真實」的人。"
* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "用於此觀察的標本"
* specimen ^definition = "進行此觀察時所使用的標本。"

* effective[x] only Period
* effective[x] MS
* effective[x] ^short = "觀察在臨床上相關的時間區間"
* effective[x] ^definition = "觀察值被視為有效的時間區間。對於生物主體（例如人類患者），這通常被稱為「生理相關時間」。"
* value[x] only CodeableConceptTW
* valueCodeableConcept 1.. MS
* valueCodeableConcept ^short = "職業代碼或文字"
* valueCodeableConcept ^definition = "進行觀察後所確定的職業資訊。"
* valueCodeableConcept from TWLIAROCOccupation (preferred)
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    LiaRocOccupation 0..1 MS and
    MolOccupation 0..1 MS
* valueCodeableConcept.coding[LiaRocOccupation] from TWLIAROCOccupation (required)
* valueCodeableConcept.coding[LiaRocOccupation].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/occupation-lia-roc-tw"
* valueCodeableConcept.coding[LiaRocOccupation].system MS
* valueCodeableConcept.coding[LiaRocOccupation].code 1..1 MS
* valueCodeableConcept.coding[MolOccupation] from TWMolOccupation (required)
* valueCodeableConcept.coding[MolOccupation].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw"
* valueCodeableConcept.coding[MolOccupation].system MS
* valueCodeableConcept.coding[MolOccupation].code 1..1 MS

* valueCodeableConcept.coding[LiaRocOccupation] ^short = "此為中華民國人壽保險商業同業公會(LIA-ROC)維護的臺灣地區傷害保險個人職業分類表，可免費使用，可依情境選用此代碼。"
* valueCodeableConcept.coding[LiaRocOccupation] ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* valueCodeableConcept.coding[MolOccupation] ^short = "此為中華民國勞動部(MOL)維護的職業標準分類，可免費使用，可依情境選用此代碼。"
* valueCodeableConcept.coding[MolOccupation] ^binding.description = "應填入所綁定值集中的其中一個代碼。"


* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains industry 0..1 MS
* component[industry] ^short = "行業"
* component[industry].modifierExtension ^short = "不可被忽略的擴充資訊"
* component[industry].code only CodeableConceptTW
* component[industry].code = $loinc#86188-0
* component[industry].code MS
* component[industry].code ^short = "行業觀察的類型（代碼／類型）"
* component[industry].code.coding ^short = "由專門術語系統（terminology system）定義的代碼"
* component[industry].code.coding.system ^short = "專門術語系統（terminology system）的識別碼"
* component[industry].code.coding.code ^short = "系統定義的語法符號"
//* component[industry].code ^short = "Occupation industry history"
* component[industry].valueCodeableConcept 1.. MS
* component[industry].valueCodeableConcept only CodeableConceptTW
* component[industry].valueCodeableConcept from TWIndustry (extensible)
* component[industry].valueCodeableConcept ^short = "此為行政院主計總處維護的行業分類，可免費使用，可依情境選用此代碼。"
* component[industry].valueCodeableConcept ^binding.description = "應填入所綁定值集中的其中一個代碼。"