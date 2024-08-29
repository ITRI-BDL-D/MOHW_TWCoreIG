Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $DocumentReference-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Alias: $ImagingStudy-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ImagingStudy-twcore
Alias: $Media-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Media-twcore

Profile: TWCoreObservation
Parent: Observation
Id: Observation-simple-twcore
Title: "TW Core Simple Observation"
Description: "此臺灣核心-通用檢驗檢查（TW Core Simple Observation） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現通用檢驗檢查資料。"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* status MS
* category only $CodeableConcept-tw
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains twcore 0..* MS
* category[twcore] from https://twcore.mohw.gov.tw/ig/twcore/ValueSet/observation-category (required)
* category[twcore] ^binding.description = "此slice綁定的值集之綁定強度雖為最高強度「要求使用(Requird)」，但因slice之特性，其不會限制僅能填此值集中的代碼，故在實作時也可使用其他值集的代碼。"
* code only $CodeableConcept-tw
* code MS
* code from LOINCCodes (preferred)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.description = "Codes identifying names of simple observations."
* code.text MS
* subject only Reference($Patient-twcore or Group or Device or $Location-twcore)
* subject MS
* subject ^type[0].targetProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type[=].targetProfile.extension.valueBoolean = true
* effective[x] 1.. MS
* effective[x] only dateTime or Period or Timing or instant
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or CareTeam)
* performer MS
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* derivedFrom only Reference(Observation or $DocumentReference-twcore or QuestionnaireResponse or $ImagingStudy-twcore or $Media-twcore or MolecularSequence)
* component.code only $CodeableConcept-tw