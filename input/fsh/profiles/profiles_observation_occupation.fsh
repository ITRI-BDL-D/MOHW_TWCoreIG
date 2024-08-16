Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $occupation-lia-roc-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/occupation-lia-roc-tw
Alias: $occupation-mol-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/occupation-mol-tw
Alias: $industry-dgbas-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/industry-dgbas-tw

Profile: TWCoreObservationOccupation
Parent: Observation
Id: Observation-occupation-twcore
Title: "TW Core Observation Occupation"
Description: "此臺灣核心-職業（TW Core Observation Occupation） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現職業資料。"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-occupation-twcore"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* status MS
* category only $CodeableConcept-tw
* category MS
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.code"
* category ^slicing.discriminator[+].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.ordered = false
* category ^slicing.rules = #open
* category contains twcore 0..1 MS
* category[twcore].coding 1..
* category[twcore].coding.system 1..
* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code 1..
* category[twcore].coding.code = #social-history
* code only $CodeableConcept-tw
* code = $loinc#11341-5
* code MS
* code from LOINCCodes (preferred)
* code ^short = "Occupation history"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* code ^binding.description = "Codes identifying names of simple observations."
* code.text MS
* subject only Reference($Patient-twcore)
* subject MS
* effective[x] only Period
* effective[x] MS
* value[x] only $CodeableConcept-tw
* value[x] MS
* value[x] from $occupation-lia-roc-tw (preferred)
* value[x] ^short = "職業代碼或文字"
* value[x].coding ^slicing.discriminator[0].type = #pattern
* value[x].coding ^slicing.discriminator[=].path = "$this"
* value[x].coding ^slicing.rules = #open
* value[x].coding contains
    LiaRocOccupation 0..1 MS and
    MolOccupation 0..1 MS
* value[x].coding[LiaRocOccupation] from $occupation-lia-roc-tw (required)
* value[x].coding[LiaRocOccupation] ^short = "此為中華民國人壽保險商業同業公會(LIA-ROC)維護的臺灣地區傷害保險個人職業分類表，可免費使用，可依情境選用此代碼。"
* value[x].coding[LiaRocOccupation] ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* value[x].coding[LiaRocOccupation].system = "http://loinc.org"
* value[x].coding[LiaRocOccupation].code 1..
* value[x].coding[MolOccupation] from $occupation-mol-tw (required)
* value[x].coding[MolOccupation] ^short = "此為中華民國勞動部(MOL)維護的職業標準分類，可免費使用，可依情境選用此代碼。"
* value[x].coding[MolOccupation] ^binding.description = "應填入所綁定值集中的其中一個代碼。"
* value[x].coding[MolOccupation].system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/medical-service-payment-tw"
* value[x].coding[MolOccupation].code 1..
* component MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component.code only $CodeableConcept-tw
* component contains industry 0..1 MS
* component[industry] ^short = "行業"
* component[industry].code = $loinc#86188-0
* component[industry].code MS
* component[industry].valueCodeableConcept 1..1 MS
* component[industry].valueCodeableConcept only $CodeableConcept-tw
* component[industry].valueCodeableConcept from $industry-dgbas-tw (extensible)
* component[industry].valueCodeableConcept ^sliceName = "valueCodeableConcept"
* component[industry].valueCodeableConcept ^short = "此為行政院主計總處維護的行業分類，可免費使用，可依情境選用此代碼。"
* component[industry].valueCodeableConcept ^binding.description = "應填入所綁定值集中的其中一個代碼。"