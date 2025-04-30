Profile:        TWCoreObservationSimple
Parent:         Observation
Id:             Observation-simple-twcore
Title:          "TW Core Simple Observation"
Description:    "此臺灣核心-通用檢驗檢查（TW Core Simple Observation） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現通用檢驗檢查資料。"
* ^version = "0.3.2"

* . ^short = "通用檢驗檢查結果或發現的測量和簡單聲明"
* . ^definition = "關於患者的通用檢驗檢查結果測量和簡單聲明，包括由設備或醫護人員觀察到的發現。"

* implicitRules ^short = "創建此內容所依據的一組規則"
* implicitRules ^definition = "構建 resource 時遵循的一系列規則的參照，在處理內容時必須理解這些規則。通常這是對 IG 所定義之特殊規則及其他 profiles 的參照。"

* status MS
* status ^definition = "該項檢驗檢查的狀態。"

* category 1.. MS
* category only CodeableConceptTW
* category ^short = "檢驗檢查的分類"
* category ^definition = "檢驗檢查的分類。"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains twcore 0..* MS
* category[twcore] from https://twcore.mohw.gov.tw/ig/twcore/ValueSet/category-code-tw
* category[twcore] ^short = "臺灣核心分類"
* category[twcore] ^definition = "臺灣核心檢驗檢查分類。"
* category[twcore] ^binding.description = "此 slice 綁定的值集之綁定強度雖為最高強度「要求使用 (Requird)」，但因 slice 之特性，其不會限制僅能填此值集中的代碼，故在實作時也可使用其他值集的代碼。"

* code MS
* code only CodeableConceptTW
* code ^short = "檢驗檢查類型"
* code ^definition = "描述該檢驗檢查所測量的內容"
* code ^binding.strength = #preferred
//* component.code only CodeableConceptTW

* subject 1.. MS
* subject only Reference(TWCorePatient or Group or Device or TWCoreLocation)
* subject ^short = "檢驗檢查關注的對象"
* subject ^definition = "檢驗檢查關注的主體 (如患者、群組、設備或位置)。"
* subject ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type[=].targetProfile[=].extension.valueBoolean = true

* performer MS
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam or TWCoreRelatedPerson)
* performer ^short = "負責該檢驗檢查的人員"
* performer ^definition = "執行或負責檢驗檢查的人員。"

* effective[x] 1..1
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^short = "檢驗檢查的時間或時段"
* effective[x] ^definition = "檢驗檢查進行的時間點或時間段。"
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true

* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^short = "檢驗檢查的結果值"
* value[x] ^definition = "檢驗檢查或觀察的實際結果。"
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true

* derivedFrom only Reference(Observation or TWCoreDocumentReference or TWCoreQuestionnaireResponse or TWCoreImagingStudy or TWCoreMedia or MolecularSequence)
* derivedFrom ^short = "觀察來源或依據"
* derivedFrom ^definition = "用於獲取此觀察結果的參考資源，如：來源觀察、文件引用、問卷回應等。"

* encounter only Reference(TWCoreEncounter)
* encounter ^short = "與此檢驗檢查相關的就醫事件"
* encounter ^definition = "此檢驗檢查是在哪個就醫情境產生的。"

* basedOn only Reference(TWCoreCarePlan or DeviceRequest or ImmunizationRecommendation or TWCoreMedicationRequest or NutritionOrder or TWCoreServiceRequest)
* basedOn ^short = "檢驗檢查的依據"
* basedOn ^definition = "產生此檢驗檢查的計畫或請求。"

* partOf only Reference(MedicationAdministration or TWCoreMedicationDispense or TWCoreMedicationStatement or TWCoreProcedure or TWCoreImmunization or TWCoreImagingStudy)
* partOf ^short = "作為較大項目的一部分"
* partOf ^definition = "表示此檢驗檢查是其他資源的一部分，例如：用藥給藥、調劑、用藥聲明、處置、免疫接種或影像檢查。"

* specimen only Reference(TWCoreSpecimen)
* specimen ^short = "檢驗檢查的檢體"
* specimen ^definition = "進行檢驗檢查的檢體。"

* hasMember only Reference(TWCoreObservationSimple or TWCoreQuestionnaireResponse or MolecularSequence)
* hasMember ^short = "包含的相關檢驗檢查"
* hasMember ^definition = "與此檢驗檢查相關聯的其他檢驗檢查或問卷回應。"

* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam)
