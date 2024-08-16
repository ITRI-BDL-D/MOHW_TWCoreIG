CodeSystem: TWObservationCategory
Id: observation-category
Title: "臺灣衛福部資訊處Observation類型"
Description: """臺灣衛福部資訊處Observation類型，  
代碼出版日期：2024-08-31；資料所屬單位：衛生福利部資訊處。  
"""
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/observation-category"
* ^version = "2024-08-31"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-31"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* ^copyright = "衛生福利部資訊處"
* ^caseSensitive = true
* ^content = #complete
* ^count = 8
* ^property[0].code = #effectiveDate
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#effectiveDate"
* ^property[=].description = "生效日期"
* ^property[=].type = #dateTime
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "狀態"
* ^property[=].type = #code
* #sdoh "SDOH" "Social Determinants of Health category"
* #sdoh ^property[0].code = #effectiveDate
* #sdoh ^property[=].valueDateTime = "2024-08"
* #sdoh ^property[+].code = #status
* #sdoh ^property[=].valueCode = #active
* #functional-status "Functional Status" "Functional Status category"
* #functional-status ^property[0].code = #effectiveDate
* #functional-status ^property[=].valueDateTime = "2024-08"
* #functional-status ^property[+].code = #status
* #functional-status ^property[=].valueCode = #active
* #disability-status "Disability Status" "Disability Status category"
* #disability-status ^property[0].code = #effectiveDate
* #disability-status ^property[=].valueDateTime = "2024-08"
* #disability-status ^property[+].code = #status
* #disability-status ^property[=].valueCode = #active
* #cognitive-status "Cognitive Status" "Cognitive Status category"
* #cognitive-status ^property[0].code = #effectiveDate
* #cognitive-status ^property[=].valueDateTime = "2024-08"
* #cognitive-status ^property[+].code = #status
* #cognitive-status ^property[=].valueCode = #active
* #treatment-intervention-preference "Treatment Intervention Preference" "A personal preference for a type of medical intervention (treatment) request under certain conditions."
* #treatment-intervention-preference ^property[0].code = #effectiveDate
* #treatment-intervention-preference ^property[=].valueDateTime = "2024-08"
* #treatment-intervention-preference ^property[+].code = #status
* #treatment-intervention-preference ^property[=].valueCode = #active
* #care-experience-preference "Care Experience Preference" "Personal thoughts about something a person feels is relevant to their care experience and may be pertinent when planning their care."
* #care-experience-preference ^property[0].code = #effectiveDate
* #care-experience-preference ^property[=].valueDateTime = "2024-08"
* #care-experience-preference ^property[+].code = #status
* #care-experience-preference ^property[=].valueCode = #active
* #social-history "Social History" "Social History (TBD)"
* #social-history ^property[0].code = #effectiveDate
* #social-history ^property[=].valueDateTime = "2024-08"
* #social-history ^property[+].code = #status
* #social-history ^property[=].valueCode = #active
* #survey "Survey" "Survey (TBD)"
* #survey ^property[0].code = #effectiveDate
* #survey ^property[=].valueDateTime = "2024-08"
* #survey ^property[+].code = #status
* #survey ^property[=].valueCode = #active