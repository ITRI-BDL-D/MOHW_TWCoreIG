Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Device-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Device-twcore
Alias: $Encounter-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $Condition-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $Observation-clinical-result-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-clinical-result-twcore
Alias: $DiagnosticReport-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DiagnosticReport-twcore
Alias: $DocumentReference-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Alias: $Coverage-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Coverage-twcore
Alias: $Specimen-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore
Alias: $serviceRequest-category = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/serviceRequest-category
Alias: $icd-10-pcs-2023-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/icd-10-pcs-2023-tw
Alias: $icd-10-pcs-2014-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/icd-10-pcs-2014-tw
Alias: $procedure-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/procedure-tw
Alias: $procedure-code = http://hl7.org/fhir/ValueSet/procedure-code
Alias: $condition-code-sct-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/condition-code-sct-tw

Profile: TWCoreServiceRequest
Parent: ServiceRequest
Id: ServiceRequest-twcore
Title: "TW Core ServiceRequest"
Description: "此臺灣核心-服務請求（TW Core ServiceRequest） Profile說明本IG如何進一步定義FHIR的ServiceRequest Resource以呈現服務請求資料。"
* ^version = "0.3.0"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or TWCoreServiceRequest or $MedicationRequest-twcore)
* replaces only Reference(TWCoreServiceRequest)
* status MS
* intent MS
* category only $CodeableConcept-tw
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains twcore 0..* MS
* category[twcore] from $serviceRequest-category (required)
* category[twcore] ^binding.description = "此slice綁定的值集之綁定強度雖為最高強度「要求使用(Requird)」，但因slice之特性，其不會限制僅能填此值集中的代碼，故在實作時也可使用其他值集的代碼。"
* code 1.. MS
* code only $CodeableConcept-tw
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    icd10-pcs-2023 0..1 MS and
    icd10-pcs-2021 0..1 MS and
    icd10-pcs-2014 0..1 MS and
    medical-service-payment 0..1 MS and
    sct-procedures 0..1 MS and
    loinc-procedures 0..1 MS
* code.coding[icd10-pcs-2023] from $icd-10-pcs-2023-tw (required)
* code.coding[icd10-pcs-2021] from $icd-10-pcs-2021-tw (required)
* code.coding[icd10-pcs-2014] from $icd-10-pcs-2014-tw (required)
* code.coding[medical-service-payment] from $procedure-tw (required)
* code.coding[sct-procedures] from $procedure-code (required)
* code.coding[loinc-procedures] from LOINCCodes (required)
* subject only Reference($Patient-twcore or Group or $Location-twcore or $Device-twcore)
* subject MS
* subject ^type.targetProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type.targetProfile.extension.valueBoolean = true
* encounter only Reference($Encounter-twcore)
* occurrence[x] only dateTime or Period or Timing
* occurrence[x] MS
* occurrence[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* occurrence[x] ^type.extension.valueBoolean = true
* authoredOn MS
* requester only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore or $Device-twcore)
* requester MS
* requester ^type.targetProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* requester ^type.targetProfile.extension.valueBoolean = true
* locationReference only Reference($Location-twcore)
* reasonCode from $condition-code-sct-tw (extensible)
* reasonReference only Reference($Condition-twcore or $Observation-clinical-result-twcore or $DiagnosticReport-twcore or $DocumentReference-twcore)
* insurance only Reference($Coverage-twcore or ClaimResponse)
* specimen only Reference($Specimen-twcore)