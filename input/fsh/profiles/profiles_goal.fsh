Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $Condition-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $Observation-clinical-result-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-clinical-result-twcore
Alias: $MedicationStatement-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationStatement-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore

Profile: TWCoreGoal
Parent: Goal
Id: Goal-twcore
Title: "TW Core Goal"
Description: "此臺灣核心-目標（TW Core Goal） Profile說明本IG如何進一步定義FHIR的Goal Resource以呈現目標資料。"
* ^version = "0.3.0"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* lifecycleStatus MS
* description MS
* description from SNOMEDCTClinicalFindings (extensible)
* subject only Reference($Patient-twcore or Group or $Organization-twcore)
* subject MS
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* start[x] only date or CodeableConcept
* start[x] MS
* start[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* start[x] ^type.extension.valueBoolean = true
* target MS
* target.due[x] only date or Duration
* target.due[x] MS
* target.due[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* target.due[x] ^type.extension.valueBoolean = true
* expressedBy only Reference($Patient-twcore or $Practitioner-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore)
* addresses only Reference($Condition-twcore or $Observation-clinical-result-twcore or $MedicationStatement-twcore or NutritionOrder or $ServiceRequest-twcore or RiskAssessment)
* outcomeReference only Reference($Observation-clinical-result-twcore)