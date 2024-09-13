ValueSet: PregnancyIntentCodeSCT
Id: snomed-pregnancy-intent-code
Title: "臺灣妊娠計畫值集"
Description: "臺灣妊娠計畫值集。"
* ^version = "0.2.3"
* ^status = #active
* ^experimental = false
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
// * LOINC#LA26438-4 "Yes, I want to become pregnant"
// * LOINC#LA26439-2 "I'm OK either way"
// * LOINC#LA26440-0 "No, I don't want to become pregnant"
// * LOINC#LA14072-5 "Unsure"
// * include codes from system http://loinc.org where code = "LL4053-6"
// * include codes from system http://loinc.org where answers-for = "86645-9"
* http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK