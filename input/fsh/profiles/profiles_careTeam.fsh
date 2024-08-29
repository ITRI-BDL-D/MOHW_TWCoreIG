Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore

Profile: TWCoreCareTeam
Parent: CareTeam
Id: CareTeam-twcore
Title: "TW Core CareTeam"
Description: "此臺灣核心-照護團隊（TW Core CareTeam） Profile說明本IG如何進一步定義FHIR的CareTeam Resource以呈現照護團隊資料。"
* ^version = "0.2.3"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* status MS
* subject 1.. MS
* subject only Reference($Patient-twcore or Group)
* subject ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = true
* subject ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile[=].extension.valueBoolean = false
* participant 1.. MS
* participant.role 1..1 MS
* participant.role from ParticipantRoles (extensible)
* participant.member 1.. MS
* participant.member only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or TWCoreCareTeam or $RelatedPerson-twcore)
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