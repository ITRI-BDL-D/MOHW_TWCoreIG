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
Alias: $snomed-sexual-orientation-code = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/snomed-sexual-orientation-code

Profile: TWCoreObservationSexualOrientation
Parent: Observation
Id: Observation-sexual-orientation-twcore
Title: "TW Core Observation Sexual Orientation"
Description: "此臺灣核心-性傾向（TW Core Observation Sexual Orientation） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現性傾向資料。"
* ^version = "0.2.3"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* obeys tw-core-4
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or ServiceRequest)
* partOf only Reference(MedicationAdministration or $MedicationDispense-twcore or $MedicationStatement-twcore or $Procedure-twcore or Immunization or $ImagingStudy-twcore)
* status MS
* code only $CodeableConcept-tw
* code = $loinc#76690-7 "Sexual orientation"
* code MS
* subject only Reference($Patient-twcore)
* subject MS
* encounter only Reference($Encounter-twcore)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^definition = "This records the time during which the patient had identified their emotional, romantic, sexual, or affectional attraction to another person."
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $CareTeam-twcore)
* valueCodeableConcept 0..1 MS
* valueCodeableConcept only $CodeableConcept-tw
* valueCodeableConcept from $snomed-sexual-orientation-code (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* specimen only Reference($Specimen-twcore)
* hasMember only Reference($Observation-simple-twcore or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference($DocumentReference-twcore or $ImagingStudy-twcore or $Media-twcore or QuestionnaireResponse or $Observation-simple-twcore or MolecularSequence)