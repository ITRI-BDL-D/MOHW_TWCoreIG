Extension: QuestionnaireUrl
Id: questionnaire-url
Title: "Questionnaire Url"
Description: "Questionnaire URI"
Context: QuestionnaireResponse
* ^version = "0.3.0"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* . ^short = "Questionnaire Url"
* . ^definition = "Questionnaire URI"
* value[x] only uri