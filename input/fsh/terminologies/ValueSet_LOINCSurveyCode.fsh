ValueSet: LOINCSurveyCode
Id: loinc-survey-codes
Title: "LOINC篩檢與評估值集"
Description: """LOINC篩檢與評估值集。
代碼版本：2.77；代碼更新日期：2024-06-14；資料所屬單位：Regenstrief Institute。"""
* ^version = "2.77"
* ^status = #active
* ^experimental = false
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* ^copyright = "This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* include codes from system http://loinc.org where CLASSTYPE = "Clinical class"
* include codes from system http://loinc.org where CLASSTYPE = "Surveys"
* include codes from system http://loinc.org where CLASS = "PANEL.NEONAT"