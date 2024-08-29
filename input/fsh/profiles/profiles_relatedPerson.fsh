Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore

Profile: TWCoreRelatedPerson
Parent: RelatedPerson
Id: RelatedPerson-twcore
Title: "TW Core RelatedPerson"
Description: "此臺灣核心-相關人士（TW Core RelatedPerson） Profile說明本IG如何進一步定義FHIR的RelatedPerson Resource以呈現相關人士資料。"
* ^version = "0.2.3"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* active 1.. MS
* patient only Reference($Patient-twcore)
* patient MS
* relationship MS
* relationship from PatientRelationshipType (preferred)
* relationship ^condition = "tw-core-4"
* relationship ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* relationship ^binding.extension.valueString = "PatientRelationshipType"
* relationship ^binding.description = "病人與相關人士之間關係的類型。"
* name MS
* name ^condition = "tw-core-4"
* telecom MS
* address MS