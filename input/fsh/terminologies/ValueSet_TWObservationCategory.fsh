ValueSet: TWObservationCategory
Id: observation-category
Title: "臺灣衛福部資訊處Observation類型值集"
Description: "臺灣衛福部資訊處Observation類型值集"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/ValueSet/observation-category"
* ^version = "0.1.2"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-31"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* include codes from system TWObservationCategory
* include codes from system http://hl7.org/fhir/secondary-finding