Profile:        TWCoreObservationAverageBloodPressure
Parent:         Observation
Id:             Observation-averageBloodPressure-twcore
Title:          "TW Core Observation Average Blood Pressure"
Description:    "此臺灣核心-平均血壓（TW Core Observation Average Blood Pressure）Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現平均血壓資料。"
* ^version = "0.3.2"
* . ^short = "測量與簡單陳述"
* . ^definition = "關於病人、裝置或其他主體的測量與簡單陳述。"
* . ^comment = "用於簡單觀察，例如裝置測量、實驗室原子結果、生命徵象、身高、體重、吸菸狀態、備註等。其他資源則用於提供觀察的上下文，例如實驗室報告等。"

* implicitRules ^short = "建立本內容所依據的一組規則"
* implicitRules ^definition = "指向建構本 resource 時所遵循規則的參照，處理內容時必須理解這些規則。通常是參照定義特殊規則的實作指南（Implementation Guide），以及其他 profiles 等。"
* implicitRules ^comment = "宣告這套規則限制了內容只能被有限的交易夥伴所理解，這從本質上限制了資料的長期有用性。然而，現有的健康生態體系高度分裂，尚未準備好以普遍可計算的方式定義、收集和交換資料。只要有可能，實作者和/或規範編寫者應避免使用此欄位。通常在使用時，此 URL 是對 IG 的參照，該 IG 將這些特殊規則與其他 profiles、value sets 等一起定義為其敘述的一部分。"

* modifierExtension ^short = "不可被忽略的擴充資訊"
* modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。任何實作者都可以定義擴充，但必須符合一系列要求。處理資源的應用程式必須檢查 modifier extensions。"
* modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。"

* basedOn ^short = "實現計畫、提案或指示"
* basedOn ^definition = "一個由本事件全部或部分實現的計畫、提案或指示。例如，MedicationRequest 可能要求在給藥前，病人需先進行實驗室檢查。"

* partOf ^short = "所屬的參照事件"
* partOf ^definition = "此 Observation 所屬的較大事件或步驟。例如，作為某個處置（procedure）的一部分的觀察。"
* partOf ^comment = "若要將 Observation 連結到 Encounter，請使用 encounter 欄位。關於如何參照其他 Observation，請參見下方說明。"

* status ^definition = "此欄位表示觀察結果的狀態。"
* status ^comment = "此元素被標記為修飾性（modifier），因為 status 可能包含標示資源目前無效的代碼。"
* status MS

* category ^short = "觀察類型的分類"
* category ^definition = "用於分類所進行觀察的一般類型的代碼。"
* category ^comment = "除了必要的 category 值集外，此元素也允許根據擁有者自訂的分類方案進行多元分類，且可同時使用多個分類。分類的細緻程度由值集中的 category 概念所決定。"

* category 1.. MS
* category only CodeableConceptTW
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains VSCat 0..1 MS
* category[VSCat] ^short = "觀察類型的分類"
* category[VSCat] ^definition = "用於分類所進行觀察的一般類型的代碼。"
* category[VSCat] ^comment = "除了必要的 category 值集外，此元素也允許根據擁有者自訂的分類方案進行多元分類，且可同時使用多個分類。分類的細緻程度由值集中的 category 概念所決定。"
* category[VSCat] 0..1 MS
* category[VSCat] only CodeableConceptTW
* category[VSCat].coding ^short = "由術語系統所定義的代碼"
* category[VSCat].coding ^definition = "參照由術語系統定義的代碼。"
* category[VSCat].coding ^comment = "代碼可以在列舉清單（enumerations）或代碼清單（code lists）中非常隨意地定義，直至有非常正式的定義，如 SNOMED CT—更多資訊見 HL7 v3 核心原則（Core Principles）。編碼的排序是未定義的因而 **必須沒有（SHALL NOT）** 被用來推斷意義。一般來說，最多只有一個編碼值（coding values）會被標記為 UserSelected = true。"
* category[VSCat].coding 1..* MS
* category[VSCat].coding.system ^short = "術語系統的識別碼"
* category[VSCat].coding.system ^definition = "定義代碼符號意義的代碼系統之識別。"
* category[VSCat].coding.system ^comment = "URI 可以是 OID（urn:oid:...）或 UUID（urn:uuid:...）。OID 和 UUID 應參考 HL7 OID 註冊表。否則，URI 應來自 HL7 的 FHIR 特殊 URI 定義列表，或參考某些能清楚且無歧義地建立系統的定義。"
* category[VSCat].coding.system 1..1 MS
* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code ^short = "由系統定義的語法符號"
* category[VSCat].coding.code ^definition = "由系統定義的語法符號。此符號可能是一個預定義的代碼，或是由編碼系統定義的語法中的表達式（例如 post-coordination）。"
* category[VSCat].coding.code 1..1 MS
* category[VSCat].coding.code = #vital-signs

* code = http://loinc.org#96607-7
* code ^short = "血壓"
* code ^definition = "描述所觀察到的內容。有時這也被稱為觀察的「名稱」。"
* code ^comment = "所有的 code-value 配對，以及（若有的話）component.code 與 component.value 的配對，都需要被考慮，才能正確理解此觀察的意義。"

* subject ^short = "此觀察所關於的對象"
* subject ^definition = "此觀察所關於且將觀察記錄存入其病歷的病人、病人群組、地點或設備。如果觀察的實際焦點與主體不同（或是主體的樣本、部分或區域），則由 focus 元素或代碼本身指定觀察的實際焦點。"
* subject ^comment = "一般預期此元素的基數為 1..1。唯一可能缺少 subject 的情況是當觀察由不知道病人身分的設備所進行時。在此情況下，觀察必須（SHALL）通過某些上下文/通道匹配技術與病人配對，此時觀察應被更新。"

* encounter ^short = "進行此觀察時的醫療事件"
* encounter ^definition = "此觀察所發生的醫療事件（例如病人與醫療提供者的互動）。"
* encounter ^comment = "這通常是發生事件時的就診（encounter），但有些事件可能在就診正式結束之前或之後發起，但仍與就診的上下文有關（例如入院前的實驗室檢查）。"

* effective[x] ^short = "觀察在臨床上相關的時間/時間區間"
* effective[x] ^definition = "觀察值被視為有效的時間或時間區間。對於生物主體（例如人類患者），這通常被稱為「生理相關時間」。這通常是處置的時間或標本採集的時間，但很多情況下時間/日期的來源是未知的，僅知道時間/日期本身。"
* effective[x] ^comment = "除非此觀察是歷史記錄，否則至少應該有一個日期。對於記錄不精確或「模糊」的時間（例如「早餐後」測量的血糖），使用 Timing 資料型別，它允許將測量與日常生活事件相關聯。"
* effective[x] 1..1
//* effective[x] only dateTime
* effective[x] MS
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].code = #Period
* effective[x] ^type[=].extension.valueBoolean = true
* effective[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].code = #dateTime
* effective[x] ^type[=].extension.valueBoolean = false

* performer ^short = "對觀察結果負責的人"
* performer ^definition = "負責確認觀察數值為「真實」的人。"

* value[x] ^short = "實際結果"
* value[x] ^definition = "進行觀察後所確定的資訊，若該資訊具有簡單值。"
* value[x] ^comment = "一個觀察可能有：1）在此處有單一值，2）同時有一個值和一組相關或組成值，或 3）只有一組相關或組成值。如果存在值，此元素的資料類型應由 Observation.code 決定。如果欄位通常是編碼的，或者與 Observation.code 相關聯的類型定義了一個編碼值，則應使用只有文字的 CodeableConcept 而非字串。更多指引請參見下方備註。"
* value[x] ..0

* specimen ^short = "用於此觀察的標本"
* specimen ^definition = "進行此觀察時所使用的標本。"
* specimen ^comment = "僅在 Observation.code 的代碼中未隱含標本資訊時才應使用。觀察並非對標本本身進行，而是對主體進行，但許多情況是通過標本進行的。請注意，雖然標本常常會被使用，但並非總是被明確追蹤和報告。同時也請注意，觀察資源可能被用在明確追蹤標本的情境中（例如診斷報告）。"

* hasMember ^short = "屬於觀察群組的相關資源"
* hasMember ^definition = "此觀察是一個群組觀察（例如一組檢測、一系列檢驗或一組生命徵象測量），包含目標作為群組的成員。"
* hasMember ^comment = "使用此元素時，一個觀察通常會有一個值或一組相關資源，但在某些情況下兩者都可能存在。關於觀察如何在群組中組合的方式討論，請參見下方備註。請注意，系統可能會從 QuestionnaireResponse 中計算結果到最終分數，並將該分數表示為一個觀察。"

* derivedFrom ^short = "此觀察值衍生自的相關測量"
* derivedFrom ^definition = "代表本觀察值衍生來源的目標資源。例如，根據測量計算的陰離子間隙，或基於超音波影像的胎兒測量。"
* derivedFrom ^comment = "此元素中列出的所有參考選擇都可以代表臨床觀察和其他可能作為衍生值來源的測量。最常見的參考將是另一個觀察（Observation）。關於觀察如何在群組中組合的方式討論，請參見下方備註。"

* category only CodeableConceptTW
* code only CodeableConceptTW
* component.code only CodeableConceptTW
* code MS
* code.text MS
* subject MS
* subject only Reference(TWCorePatient)

* component MS
* component obeys tw-core-2
* component ^short = "平均收縮壓、平均舒張壓及其他相關指標"
* component ^definition = "某些觀察有多個組件觀察。這些組件觀察表示為共享相同屬性的獨立代碼-數值對。例如血壓測量的收縮壓和舒張壓組件觀察，以及基因觀察的多個組件觀察。"
* component ^comment = "關於觀察如何在群組中組合的方式討論，請參見下方備註。"
* component.modifierExtension ^short = "不可被忽略的擴充資訊"
* component.modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。任何實作者都可以定義擴充，但必須符合一系列要求。處理資源的應用程式必須檢查修飾擴充。"
* component.modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。修飾擴充不得改變資源或領域資源上任何元素的意義（包括不能改變修飾擴充本身的意義）。"
* component.code ^short = "組件觀察的類型（代碼/類型）"
* component.code ^definition = "描述觀察到的內容。有時這被稱為觀察「代碼」。"
* component.code ^comment = "所有的代碼-數值配對和組件.代碼-組件.數值配對都需要被考慮，才能正確理解此觀察的意義。"
* component.value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* component.value[x] MS
* component.value[x] ^short = "生命徵象組成項目數值"
* component.value[x] ^definition = "生命徵象的值通常使用 Quantity 資料型別記錄。對於支援觀察（例如 cuff size）等其他資料型別，可以使用其他資料型別，例如 CodeableConcept。"
* component.value[x] ^comment = "用於觀察具有一組組件觀察時。一個觀察可能同時有一個值（例如 Apgar score）和組件觀察（用於推導 Apgar score 的觀察）。如果存在值，此元素的資料類型應由 Observation.code 決定。如果欄位通常是編碼的，或者與 Observation.code 相關聯的類型定義了一個編碼值，則應使用只有文字的 CodeableConcept 而非字串。更多指引請參見下方備註。"
/* component.value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* component.value[x] ^type[=].extension.valueBoolean = true*/
* component.dataAbsentReason MS
* component.dataAbsentReason ^condition = "tw-core-2"
* component.dataAbsentReason ^short = "為什麼組成項目的結果會缺少"
* component.dataAbsentReason ^definition = "提供 Observation.component.value[x] 元素中預期值缺失的原因。"
* component.dataAbsentReason ^comment = "在 FHIR 觀察中，「空值」或例外值可以通過兩種方式表示。一種方式是直接將它們包含在值集中並在值中表示例外情況。例如，血清學檢測的測量值可以是「已檢測到」、「未檢測到」、「結果不確定」或「未完成檢測」。另一種方式是使用 value 元素來記錄實際觀察值，並使用明確的 dataAbsentReason 元素來記錄例外值。例如，當測量未完成時，可以使用 dataAbsentReason 代碼「error」。由於存在這些選項，因此需要用例協議來解釋例外值的一般觀察。"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    Systolic 1..1 MS and
    Diastolic 1..1 MS and
    Number 0..1 MS
* component[Systolic] ^short = "平均收縮壓"
* component[Systolic] ^definition = "某些觀察有多個組件觀察。這些組件觀察表示為共享相同屬性的獨立代碼-數值對。例如血壓測量的收縮壓和舒張壓組件觀察，以及基因觀察的多個組件觀察。"
* component[Systolic] ^comment = "關於觀察如何在群組中組合的方式討論，請參見下方備註。"
* component[Systolic].modifierExtension ^short = "不可被忽略的擴充資訊"
* component[Systolic].modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。任何實作者都可以定義擴充，但必須符合一系列要求。處理資源的應用程式必須檢查修飾擴充。修飾擴充不得改變資源或領域資源上任何元素的意義（包括不能改變修飾擴充本身的意義）。"
* component[Systolic].modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。"
* component[Systolic].code 1..1 MS
* component[Systolic].code = http://loinc.org#96608-5
* component[Systolic].code ^short = "平均收縮壓代碼"
* component[Systolic].code ^definition = "描述觀察到的內容。有時這被稱為觀察「代碼」。"
* component[Systolic].code ^comment = "所有的 code-value 配對和 component.code-component.value 配對都需要被考慮，才能正確理解此觀察的意義。"
* component[Systolic].value[x] only Quantity
* component[Systolic].valueQuantity only Quantity
* component[Systolic].valueQuantity MS
* component[Systolic].valueQuantity ^short = "平均收縮壓數值"
* component[Systolic].valueQuantity ^definition = "生命徵象的值通常使用 Quantity 資料型別記錄。對於支援觀察（例如 cuff size）等其他資料型別，可以使用其他資料型別，例如 CodeableConcept。進行觀察後所確定的資訊，若該資訊具有簡單值。"
* component[Systolic].valueQuantity ^comment = "用於觀察具有一組組件觀察時。一個觀察可能同時有一個值（例如 Apgar score）和組件觀察（用於推導 Apgar score 的觀察）。如果存在值，此元素的資料類型應由 Observation.code 決定。如果欄位通常是編碼的，或者與 Observation.code 相關聯的類型定義了一個編碼值，則應使用只有文字的 CodeableConcept 而非字串。更多指引請參見下方備註。"
* component[Systolic].valueQuantity ^condition = "tw-core-2"
* component[Systolic].valueQuantity.value 1..1 MS
* component[Systolic].valueQuantity.value ^short = "數值（具隱含精確度）"
* component[Systolic].valueQuantity.value ^definition = "測量數值的大小。此數值在呈現時包含隱含的精確度。"
* component[Systolic].valueQuantity.value ^comment = "數值中隱含的精確度應始終被尊重。貨幣值有其自己的精確度處理規則（請參照 standard accounting text books）。"
* component[Systolic].valueQuantity.comparator ^short = "< | <= | >= | > - 如何理解數值"
* component[Systolic].valueQuantity.comparator ^definition = "說明如何理解與呈現此數值——即實際數值是否因測量問題而大於或小於所述數值。例如，若 comparator 為「<」，則實際數值小於所述數值。"
* component[Systolic].valueQuantity.unit 1..1 MS
* component[Systolic].valueQuantity.unit ^short = "單位表示"
* component[Systolic].valueQuantity.unit ^definition = "單位的人類可讀形式。"
* component[Systolic].valueQuantity.system 1..1 MS
* component[Systolic].valueQuantity.system ^short = "定義單位編碼形式的系統"
* component[Systolic].valueQuantity.system ^definition = "提供單位編碼形式的系統識別。"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code 1..1 MS
* component[Systolic].valueQuantity.code ^short = "單位的編碼形式"
* component[Systolic].valueQuantity.code ^definition = "單位在某些單位表示系統中的可供電腦處理的編碼形式。"
* component[Systolic].valueQuantity.code ^comment = "建議使用 UCUM 系統，但也可使用 SNOMED CT（慣用單位）或 ISO 4217（貨幣）。使用情境可能會要求來自特定系統的代碼。"
* component[Systolic].valueQuantity.code = #mm[Hg]
* component[Systolic].dataAbsentReason ^short = "為什麼組成項目的結果會缺少"
* component[Systolic].dataAbsentReason ^definition = "提供 Observation.component.value[x] 元素中預期值缺失的原因。"
* component[Systolic].dataAbsentReason ^comment = "在 FHIR 觀察中，「空值」或例外值可以通過兩種方式表示。一種方式是直接將它們包含在值集中並在值中表示例外情況。例如，血清學檢測的測量值可以是「已檢測到」、「未檢測到」、「結果不確定」或「未完成檢測」。另一種方式是使用 value 元素來記錄實際觀察值，並使用明確的 dataAbsentReason 元素來記錄例外值。例如，當測量未完成時，可以使用 dataAbsentReason 代碼「error」。由於存在這些選項，因此需要用例協議來解釋例外值的一般觀察。"
* component[Diastolic] ^short = "平均舒張壓"
* component[Diastolic] ^definition = "某些觀察有多個組件觀察。這些組件觀察表示為共享相同屬性的獨立代碼-數值對。例如血壓測量的收縮壓和舒張壓組件觀察，以及基因觀察的多個組件觀察。"
* component[Diastolic] ^comment = "關於觀察如何在群組中組合的方式討論，請參見下方備註。"
* component[Diastolic].modifierExtension ^short = "不可被忽略的擴充資訊"
* component[Diastolic].modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。任何實作者都可以定義擴充，但必須符合一系列要求。處理資源的應用程式必須檢查修飾擴充。修飾擴充不得改變資源或領域資源上任何元素的意義（包括不能改變修飾擴充本身的意義）。"
* component[Diastolic].modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。"
* component[Diastolic].code 1..1 MS
* component[Diastolic].code = http://loinc.org#96609-3
* component[Diastolic].code ^short = "平均舒張壓代碼"
* component[Diastolic].code ^definition = "描述觀察到的內容。有時這被稱為觀察『代碼』。"
* component[Diastolic].code ^comment = "所有的 code-value 配對和 component.code-component.value 配對都需要被考慮，才能正確理解此觀察的意義。"
* component[Diastolic].value[x] only Quantity
* component[Diastolic].valueQuantity only Quantity
* component[Diastolic].valueQuantity MS
* component[Diastolic].valueQuantity ^short = "平均舒張壓數值"
* component[Diastolic].valueQuantity ^definition = "生命徵象的值通常使用 Quantity 資料型別記錄。對於支援觀察（例如袖帶大小）等其他資料型別，可以使用其他資料型別，例如 CodeableConcept。進行觀察後所確定的資訊，若該資訊具有簡單值。"
* component[Diastolic].valueQuantity ^comment = "用於觀察具有一組組件觀察時。一個觀察可能同時有一個值（例如 Apgar score）和組件觀察（用於推導 Apgar score 的觀察）。如果存在值，此元素的資料類型應由 Observation.code 決定。如果欄位通常是編碼的，或者與 Observation.code 相關聯的類型定義了一個編碼值，則應使用只有文字的 CodeableConcept 而非字串。更多指引請參見下方備註。"
* component[Diastolic].valueQuantity ^condition = "tw-core-2"
* component[Diastolic].valueQuantity.value 1..1 MS
* component[Diastolic].valueQuantity.value ^short = "數值（具隱含精確度）"
* component[Diastolic].valueQuantity.value ^definition = "測量數值的大小。此數值在呈現時包含隱含的精確度。"
* component[Diastolic].valueQuantity.value ^comment = "數值中隱含的精確度應始終被尊重。貨幣值有其自己的精確度處理規則（請參照 standard accounting text books）。"
* component[Diastolic].valueQuantity.comparator ^short = "< | <= | >= | > - 如何理解數值"
* component[Diastolic].valueQuantity.comparator ^definition = "說明如何理解與呈現此數值——即實際數值是否因測量問題而大於或小於所述數值。例如，若 comparator 為「<」，則實際數值小於所述數值。"
* component[Diastolic].valueQuantity.unit 1..1 MS
* component[Diastolic].valueQuantity.unit ^short = "單位表示"
* component[Diastolic].valueQuantity.unit ^definition = "單位的人類可讀形式。"
* component[Diastolic].valueQuantity.system 1..1 MS
* component[Diastolic].valueQuantity.system ^short = "定義單位編碼形式的系統"
* component[Diastolic].valueQuantity.system ^definition = "提供單位編碼形式的系統識別。"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code 1..1 MS
* component[Diastolic].valueQuantity.code ^short = "單位的編碼形式"
* component[Diastolic].valueQuantity.code ^definition = "單位在某些單位表示系統中的可供電腦處理的編碼形式。"
* component[Diastolic].valueQuantity.code ^comment = "建議使用 UCUM 系統，但也可使用 SNOMED CT（慣用單位）或 ISO 4217（貨幣）。使用情境可能會要求來自特定系統的代碼。"
* component[Diastolic].valueQuantity.code = #mm[Hg]
* component[Diastolic].dataAbsentReason ^short = "為什麼組成項目的結果會缺少"
* component[Diastolic].dataAbsentReason ^definition = "提供 Observation.component.value[x] 元素中預期值缺失的原因。"
* component[Diastolic].dataAbsentReason ^comment = "在 FHIR 觀察中，「空值」或例外值可以通過兩種方式表示。一種方式是直接將它們包含在值集中並在值中表示例外情況。例如，血清學檢測的測量值可以是「已檢測到」、「未檢測到」、「結果不確定」或「未完成檢測」。另一種方式是使用 value 元素來記錄實際觀察值，並使用明確的 dataAbsentReason 元素來記錄例外值。例如，當測量未完成時，可以使用 dataAbsentReason 代碼「error」。由於存在這些選項，因此需要用例協議來解釋例外值的一般觀察。"
* component[Number] ^short = "測量次數"
* component[Number] ^definition = "某些觀察有多個組件觀察。這些組件觀察表示為共享相同屬性的獨立代碼-數值對。例如血壓測量的收縮壓和舒張壓組件觀察，以及基因觀察的多個組件觀察。"
* component[Number] ^comment = "關於觀察如何在群組中組合的方式討論，請參見下方備註。"
* component[Number].modifierExtension ^short = "不可被忽略的擴充資訊"
* component[Number].modifierExtension ^definition = "可用於表示不屬於資源基本定義、且會改變所屬元素或其子元素意義的額外資訊。通常這類元素用於否定或限定。為了讓擴充的使用安全且可管理，FHIR 對擴充的定義與使用有嚴格治理規範。任何實作者都可以定義擴充，但必須符合一系列要求。處理資源的應用程式必須檢查修飾擴充。修飾擴充不得改變資源或領域資源上任何元素的意義（包括不能改變修飾擴充本身的意義）。"
* component[Number].modifierExtension ^comment = "任何應用、專案或標準都不應因使用擴充而受到歧視，無論其定義或使用的機構或法域為何。擴充的使用讓 FHIR 規範能維持核心簡潔性。"
* component[Number].code 1..1 MS
* component[Number].code ^short = "組件觀察的類型（代碼/類型）"
* component[Number].code ^definition = "描述觀察到的內容。有時這被稱為觀察「代碼」。"
* component[Number].code ^comment = "所有的 code-value 配對和 component.code-component.value 配對都需要被考慮，才能正確理解此觀察的意義。"
* component[Number].code = http://snomed.info/sct#246432004
* component[Number].valueQuantity ^short = "生命徵象組成項目數值"
* component[Number].valueQuantity ^definition = "生命徵象的值通常使用 Quantity 資料型別記錄。對於支援觀察（例如袖帶大小）等其他資料型別，可以使用其他資料型別，例如 CodeableConcept。進行觀察後所確定的資訊，若該資訊具有簡單值。"
* component[Number].valueQuantity ^comment = "用於觀察具有一組組件觀察時。一個觀察可能同時有一個值（例如 Apgar score）和組件觀察（用於推導 Apgar score 的觀察）。如果存在值，此元素的資料類型應由 Observation.code 決定。如果欄位通常是編碼的，或者與 Observation.code 相關聯的類型定義了一個編碼值，則應使用只有文字的 CodeableConcept 而非字串。更多指引請參見下方備註。"
* component[Number].valueQuantity.value ^short = "數值（具隱含精確度）"
* component[Number].valueQuantity.value ^definition = "測量數值的大小。此數值在呈現時包含隱含的精確度。"
* component[Number].valueQuantity.value ^comment = "數值中隱含的精確度應始終被尊重。貨幣值有其自己的精確度處理規則（請參照 standard accounting text books）。"
* component[Number].valueQuantity.comparator ^short = "< | <= | >= | > - 如何理解數值"
* component[Number].valueQuantity.comparator ^definition = "說明如何理解與呈現此數值——即實際數值是否因測量問題而大於或小於所述數值。例如，若 comparator 為「<」，則實際數值小於所述數值。"
* component[Number].dataAbsentReason ^short = "為什麼組成項目的結果會缺少"
* component[Number].dataAbsentReason ^definition = "提供 Observation.component.value[x] 元素中預期值缺失的原因。"
* component[Number].dataAbsentReason ^comment = "在 FHIR 觀察中，「空值」或例外值可以通過兩種方式表示。一種方式是直接將它們包含在值集中並在值中表示例外情況。例如，血清學檢測的測量值可以是「已檢測到」、「未檢測到」、「結果不確定」或「未完成檢測」。另一種方式是使用 value 元素來記錄實際觀察值，並使用明確的 dataAbsentReason 元素來記錄例外值。例如，當測量未完成時，可以使用 dataAbsentReason 代碼「error」。由於存在這些選項，因此需要用例協議來解釋例外值的一般觀察。"
* component[Number].value[x] only Quantity
* component[Number].valueQuantity only Quantity
* component[Number].valueQuantity MS
* component[Number].valueQuantity.value 1..1 MS

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* encounter only Reference(TWCoreEncounter)
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
* specimen only Reference(TWCoreSpecimen)
* derivedFrom only Reference(TWCoreDocumentReference or TWCoreImagingStudy or TWCoreMedia or TWCoreQuestionnaireResponse or TWCoreObservationVitalSigns or MolecularSequence)
* hasMember only Reference(TWCoreObservationVitalSigns or TWCoreQuestionnaireResponse or MolecularSequence)
