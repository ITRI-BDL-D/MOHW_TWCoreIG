Alias: $loinc = http://loinc.org
Alias: $CarePlan-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $MedicationRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ServiceRequest-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/ServiceRequest-twcore
Alias: $MedicationDispense-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationDispense-twcore
Alias: $MedicationStatement-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationStatement-twcore
Alias: $Procedure-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore
Alias: $Immunization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Immunization-twcore
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

Profile: TWCoreObservationTreatmentInterventionPreference
Parent: Observation
Id: Observation-treatment-intervention-preference-twcore
Title: "TW Core Observation Treatment Intervention Preference"
Description: "此臺灣核心-病人治療偏好註記（TW Core Observation Treatment Intervention Preference） Profile說明本IG如何進一步定義FHIR的Observation Profile以呈現病人治療偏好註記資料。"
* ^version = "0.3.0"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or $ServiceRequest-twcore)
* partOf only Reference(MedicationAdministration or $MedicationDispense-twcore or $MedicationStatement-twcore or $Procedure-twcore or $Immunization-twcore or $ImagingStudy-twcore)
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
* category[twcore].coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/category-code-tw"
* category[twcore].coding.code 1..
* category[twcore].coding.code = #treatment-intervention-preference
* code only $CodeableConcept-tw
* code = $loinc#75773-2
* code MS
* code ^short = "Goals, preferences, and priorities for medical treatment [Reported]"
* subject 1.. MS
* subject only Reference($Patient-twcore)
* encounter only Reference($Encounter-twcore)
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $CareTeam-twcore)
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = false
* specimen only Reference($Specimen-twcore)
* hasMember only Reference($Observation-simple-twcore or QuestionnaireResponse or MolecularSequence)
* derivedFrom only Reference($DocumentReference-twcore or $ImagingStudy-twcore or $Media-twcore or QuestionnaireResponse or $Observation-simple-twcore or MolecularSequence)