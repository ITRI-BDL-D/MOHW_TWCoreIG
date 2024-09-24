Alias: $sdc-questionnaireresponse = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore
Alias: $Observation-clinical-result-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-clinical-result-twcore
Alias: $Procedure-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore
Alias: $questionnaire-url = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/questionnaire-url
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Encounter-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $Device-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Device-twcore

Profile: TWCoreQuestionnaireResponse
Parent: $sdc-questionnaireresponse
Id: QuestionnaireResponse-twcore
Title: "TW Core QuestionnaireResponse"
Description: "此臺灣核心-問卷題目回覆（TW Core QuestionnaireResponse）Profile說明本IG如何進一步定義FHIR的QuestionnaireResponse  Resource以呈現問卷題目回覆資料。"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or $ServiceRequest-twcore)
* partOf only Reference($Observation-clinical-result-twcore or $Procedure-twcore)
* questionnaire.extension contains $questionnaire-url named url 0..1 MS
* subject 1..
* subject only Reference($Patient-twcore)
* encounter only Reference($Encounter-twcore)
* author only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore or $Device-twcore)
* author ^type[0].targetProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* author ^type[=].targetProfile.extension.valueBoolean = true
* source only Reference($Patient-twcore or $Practitioner-twcore or $PractitionerRole-twcore or RelatedPerson)
* item.answer.value[x] only boolean or date or dateTime or time or decimal or integer or string or Coding or uri or Quantity or Attachment
* item.answer.value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* item.answer.value[x] ^type[=].extension.valueBoolean = true
* item.answer.value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* item.answer.value[x] ^type[=].extension.valueBoolean = true
* item.answer.value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* item.answer.value[x] ^type[=].extension.valueBoolean = true