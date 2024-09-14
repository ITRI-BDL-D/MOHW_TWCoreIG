Alias: $category-code-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/category-code-tw

ValueSet: TWServiceRequestCategory
Id: serviceRequest-category
Title: "臺灣衛福部資訊處ServiceRequest類型值集"
Description: "臺灣衛福部資訊處ServiceRequest類型值集"
* ^version = "0.3.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-31"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* include codes from system $category-code-tw
* http://snomed.info/sct#386053000
* http://snomed.info/sct#410606002
* http://snomed.info/sct#108252007
* http://snomed.info/sct#363679005
* http://snomed.info/sct#409063005
* http://snomed.info/sct#409073007
* http://snomed.info/sct#387713003