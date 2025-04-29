Profile: TWCoreObservationScreeningAssessment
Parent: Observation
Id: Observation-screening-assessment-twcore
Title: "TW Core Observation Screening Assessment"
Description: "此臺灣核心-健康狀態篩檢與評估 (TW Core Observation Screening Assessment) Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource 以呈現健康狀態篩檢與評估資料。"
* ^version = "0.3.2"
* . ^short = "健康狀態篩檢與評估"
* . ^definition = "描述此 Observation Resource 用於呈現健康狀態篩檢與評估之資料。"
* . obeys tw-core-4
* status MS
* status ^definition = "觀察的狀態，例如已註記完成或暫停。"
* category MS
* category ^short = "類別"
* category ^definition = "觀察的類別，例如篩檢或評估。"
* category only CodeableConceptTW
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    survey 1..1 MS and
    twcore 0..* MS
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* category[survey] ^short = "調查篩檢"
* category[survey] ^definition = "用於篩檢或評估觀察的過濾。"
* category[twcore] from TWObservationScreeningAssessmentCategory (required)
* code MS
* code ^short = "代碼"
* code ^definition = "描述此觀察項目的識別代碼。"
* code only CodeableConceptTW
* code from LOINCSurveyCode (preferred)
* subject 1.. MS
* subject ^short = "受試者"
* subject ^definition = "觀察所屬的個體或團體。"
* subject only Reference(TWCorePatient or TWCoreLocation or Group or Device)
* effective[x] obeys tw-core-3
* effective[x] MS
* effective[x] ^short = "生效時間"
* effective[x] ^definition = "觀察的生效時間或期間。"
* effective[x] only dateTime or Period or Timing or instant
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* performer MS
* performer ^short = "執行者"
* performer ^definition = "執行此觀察的個人或組織。"
* performer only Reference(TWCorePractitioner or TWCoreOrganization or TWCorePatient or TWCorePractitionerRole or TWCoreCareTeam or TWCoreRelatedPerson)
* value[x] obeys tw-core-5
* value[x] ^short = "觀察值"
* value[x] ^definition = "觀察所記錄的值，可為數值、代碼或文字等。"
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* dataAbsentReason MS
* dataAbsentReason ^short = "缺失資料原因"
* dataAbsentReason ^definition = "因無法取得觀察值而記錄的原因。"
* dataAbsentReason only CodeableConceptTW
* hasMember MS
* hasMember ^short = "關聯成員"
* hasMember ^definition = "與此觀察相關的子觀察或回應。"
* hasMember only Reference(TWCoreObservationScreeningAssessment or TWCoreQuestionnaireResponse or MolecularSequence)
* derivedFrom MS
* derivedFrom ^short = "來源參照"
* derivedFrom ^definition = "用於產生此觀察的來源資源參考。"
* derivedFrom ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* derivedFrom ^type[=].targetProfile[=].extension.valueBoolean = true
* derivedFrom only Reference(TWCoreObservationScreeningAssessment or TWCoreQuestionnaireResponse or TWCoreDocumentReference or ImagingStudy or Media or MolecularSequence)
* derivedFrom ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
