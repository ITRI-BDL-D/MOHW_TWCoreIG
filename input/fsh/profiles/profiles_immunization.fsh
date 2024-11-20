Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Encounter-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $Condition-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $Observation-clinical-result-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-clinical-result-twcore
Alias: $DiagnosticReport-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DiagnosticReport-twcore

Profile: TWCoreImmunization
Parent: Immunization
Id: Immunization-twcore
Title: "TW Core Immunization"
Description: "此臺灣核心-疫苗接種（TW Core Immunization） Profile說明本IG如何進一步定義FHIR的Immunization Resource以呈現疫苗接種資料。"
* ^version = "0.3.0"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* obeys tw-core-10
* . ^mustSupport = false
* status MS
* statusReason MS
* vaccineCode MS
* vaccineCode from VaccineAdministeredValueSet (extensible)
* vaccineCode ^short = "Vaccine Product Type (bind to CVX)"
* vaccineCode ^condition = "tw-core-10"
* patient only Reference($Patient-twcore)
* patient MS
* encounter only Reference($Encounter-twcore)
* encounter MS
* occurrence[x] only dateTime or string
* occurrence[x] MS
* occurrence[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* occurrence[x] ^type.extension.valueBoolean = true
* primarySource MS
* location only Reference($Location-twcore)
* location MS
* manufacturer only Reference($Organization-twcore)
* performer.actor only Reference($Practitioner-twcore or $PractitionerRole-twcore or $Organization-twcore)
* reasonReference only Reference($Condition-twcore or $Observation-clinical-result-twcore or $DiagnosticReport-twcore)
* reaction.detail only Reference($Observation-clinical-result-twcore)
* protocolApplied.authority only Reference($Organization-twcore)

Invariant: tw-core-10
Description: "SHOULD have a translation to the NDC value set"
* severity = #warning
* expression = "vaccineCode.coding.where(system='http://hl7.org/fhir/sid/cvx').exists() implies vaccineCode.coding.where(system='http://hl7.org/fhir/sid/ndc').exists()"
* xpath = "(exists(f:vaccineCode/f:coding/f:system[@value='http://hl7.org/fhir/sid/ndc']) and exists(f:vaccineCode/f:coding/f:system[@value='http://hl7.org/fhir/sid/cvx'])) or exists(f:vaccineCode/f:coding/f:system[@value='http://hl7.org/fhir/sid/cvx'])not()"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice"
* extension[0].valueBoolean = true