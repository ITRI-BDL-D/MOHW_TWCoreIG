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
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Encounter-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $CareTeam-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CareTeam-twcore
Alias: $Specimen-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore
Alias: $DocumentReference-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Alias: $Media-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Media-twcore
Alias: $observation-clinical-result-category = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/observation-clinical-result-category

Profile: TWCoreObservationClinicalResult
Parent: Observation
Id: Observation-clinical-result-twcore
Title: "TW Core Observation Clinical Result"
Description: "此臺灣核心-臨床檢驗檢查（TW Core Observation Clinical Result） Profile說明本IG如何進一步定義FHIR的Observation Resource以呈現臨床檢驗檢查資料。"
* ^version = "0.3.0"
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* obeys tw-core-4
* basedOn only Reference($CarePlan-twcore or DeviceRequest or ImmunizationRecommendation or $MedicationRequest-twcore or NutritionOrder or $ServiceRequest-twcore)
* partOf only Reference(MedicationAdministration or $MedicationDispense-twcore or $MedicationStatement-twcore or $Procedure-twcore or $Immunization-twcore or $ImagingStudy-twcore)
* status MS
* category 1.. MS
* category only $CodeableConcept-tw
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains twcore 0..* MS
* category[twcore] from $observation-clinical-result-category (required)
* category[twcore] ^binding.description = "此slice綁定的值集之綁定強度雖為最高強度「要求使用(Requird)」，但因slice之特性，其不會限制僅能填此值集中的代碼，故在實作時也可使用其他值集的代碼。"
* code only $CodeableConcept-tw
* code MS
* code from LOINCCodes (extensible)
* subject 1.. MS
* subject only Reference($Patient-twcore or $Location-twcore or Group or Device)
* encounter only Reference($Encounter-twcore)
* encounter MS
* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] obeys tw-core-3
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true
* performer only Reference($Practitioner-twcore or $Organization-twcore or $Patient-twcore or $PractitionerRole-twcore or $CareTeam-twcore)
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] MS
* value[x] obeys tw-core-5
* value[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* value[x] ^type[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* value[x] ^type[=].extension.valueBoolean = true
* dataAbsentReason only $CodeableConcept-tw
* dataAbsentReason MS
* specimen only Reference($Specimen-twcore)
* derivedFrom only Reference($DocumentReference-twcore or $ImagingStudy-twcore or $Media-twcore or QuestionnaireResponse or Observation or MolecularSequence)

Invariant: tw-core-4
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
* severity = #error
* expression = "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"

Invariant: tw-core-3
Description: "Datetime must be at least to day."
* severity = #error
* expression = "$this is dateTime implies $this.toString().length() >= 10"

Invariant: tw-core-5
Description: "SHALL use UCUM for coded quantity units."
* severity = #error
* expression = "ofType(Quantity).system.empty() or ofType(Quantity).system = 'http://unitsofmeasure.org'"