Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $postal-code3-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/postal-code3-tw
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

Instance: pat-child-example
InstanceOf: TWCorePatient
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore"
* extension[0].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age"
* extension[=].valueAge = 10 'a'
* extension[+].extension.url = "code"
* extension[=].extension.valueCodeableConcept = urn:iso:std:iso:3166#TW
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding = $v2-0203#NNxxx
* identifier[idCardNumber].type.coding.code.extension.extension[0].url = "suffix"
* identifier[idCardNumber].type.coding.code.extension.extension[=].valueString = "TWN"
* identifier[idCardNumber].type.coding.code.extension.extension[+].url = "valueSet"
* identifier[idCardNumber].type.coding.code.extension.extension[=].valueCanonical = "http://hl7.org/fhir/ValueSet/iso3166-1-3"
* identifier[idCardNumber].type.coding.code.extension.url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/identifier-suffix"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A122345678"
* identifier[medicalRecord].use = #official
* identifier[medicalRecord].type = $v2-0203#MR
* identifier[medicalRecord].system = "https://www.tph.mohw.gov.tw"
* identifier[medicalRecord].value = "8862169"
* active = true
* name.use = #official
* name.text = "陳加玲"
* name.family = "Chen"
* name.given = "Chia Lin"
* telecom.system = #phone
* telecom.value = "03-5555555"
* telecom.use = #home
* telecom.period.start = "2020-07-31"
* telecom.period.end = "2024-07-31"
* gender = #male
* birthDate = "2014-10-10"
* address.extension[0].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section"
* address.extension[=].valueString = "三段"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number"
* address.extension[=].valueString = "210號"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village"
* address.extension[=].valueString = "大有里"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood"
* address.extension[=].valueString = "19鄰"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane"
* address.extension[=].valueString = "52巷"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley"
* address.extension[=].valueString = "6弄"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor"
* address.extension[=].valueString = "2樓"
* address.extension[+].url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room"
* address.extension[=].valueString = "B室"
* address.text = "臺北市大同區大有里19鄰承德路三段52巷6弄210號2樓B室"
* address.line = "承德路"
* address.city = "大同區"
* address.district = "臺北市"
* address.postalCode.extension.url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code"
* address.postalCode.extension.valueCodeableConcept = $postal-code3-tw#103
* address.country = "TW"
* contact.relationship = $v3-RoleCode#MTH
* contact.name.use = #official
* contact.name.text = "陳加玲"
* contact.name.family = "Chen"
* contact.name.given = "Chia Lin"
* contact.telecom.system = #phone
* contact.telecom.value = "0911327999"
* contact.telecom.use = #mobile
* contact.telecom.period.start = "2022-07-31"
* contact.telecom.period.end = "2024-07-31"
* communication.language = urn:ietf:bcp:47#zh-TW
* managingOrganization = Reference(Organization/org-hosp-example)