Alias: $careplan-category-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $narrative-status = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/narrative-status

Profile: TWCoreCarePlan
Parent: CarePlan
Id: CarePlan-twcore
Title: "TW Core CarePlan"
Description: "此臺灣核心-照護計畫（TW Core CarePlan） Profile說明本IG如何進一步定義FHIR的CarePlan Resource以呈現照護計畫資料。"
* ^version = "0.2.3"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* text MS
* text ^short = "CarePlan Resource之內容摘要以供人閱讀"
* text.status MS
* text.status from $narrative-status (required)
* text.status ^short = "generated | additional"
* text.status ^binding.description = "Constrained value set of narrative statuses."
* text.div MS
* status MS
* status from RequestStatus (required)
* status ^requirements = "Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record."
* status ^binding.description = "Indicates whether the plan is currently being acted upon, represents future intentions or is now a historical record."
* intent MS
* intent from CarePlanIntent (required)
* intent ^binding.description = "Codes indicating the degree of authority/intentionality associated with a care plan"
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^definition = "Type of plan."
* category ^requirements = "Identifies what \"kind\" of plan this is to support differentiation between multiple co-existing plans; e.g., \"Home health\", \"psychiatric\", \"asthma\", \"disease management\", \"wellness plan\", etc."
* category contains AssessPlan 1..1 MS
* category[AssessPlan] = $careplan-category-tw#assess-plan
* subject only Reference($Patient-twcore or Group)
* subject MS
* subject ^definition = "Who care plan is for."
* subject ^requirements = "Identifies the patient or group whose intended care is described by the plan."
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false