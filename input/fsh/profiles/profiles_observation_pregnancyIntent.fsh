Alias: $loinc = http://loinc.org
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $MedicationDispense-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationDispense-twcore
Alias: $MedicationStatement-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationStatement-twcore
Alias: $Procedure-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore
Alias: $ImagingStudy-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ImagingStudy-twcore
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $Encounter-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $CareTeam-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore
Alias: $Specimen-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore
Alias: $Observation-simple-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $DocumentReference-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Alias: $Media-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Media-twcore
Alias: $snomed-pregnancy-intent-code = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/snomed-pregnancy-intent-code

Profile: TWCoreObservationPregnancyIntent
Parent: Observation
Id: Observation-pregnancy-intent-twcore
Title: "TW Core Observation Pregnancy Intent"
Description: "此臺灣核心-妊娠計畫（TW Core Observation Pregnancy Intent） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現妊娠計畫資料。"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or ServiceRequest)
* partOf only Reference(MedicationAdministration or $MedicationDispense-twcore or $MedicationStatement-twcore or $Procedure-twcore or Immunization or $ImagingStudy-twcore)
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
* code = $loinc#86645-9
* code MS
* code ^short = "Pregnancy Intent"
* subject 1.. MS
* subject only Reference($Patient-twcore)
* encounter only Reference($Encounter-twcore)
* effectiveDateTime 1..1 MS
* effectiveDateTime only dateTime
* effectiveDateTime ^sliceName = "effectiveDateTime"
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $CareTeam-twcore)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept only $CodeableConcept-tw
* valueCodeableConcept from $snomed-pregnancy-intent-code (preferred)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Coded Responses from Pregnancy Intent Value Set"
* specimen only Reference($Specimen-twcore)
* hasMember only Reference($Observation-simple-twcore or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference($DocumentReference-twcore or $ImagingStudy-twcore or $Media-twcore or QuestionnaireResponse or $Observation-simple-twcore or MolecularSequence)