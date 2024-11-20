Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type
Alias: $provenance-participant-type-tw = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/provenance-participant-type-tw
Alias: $Location-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore
Alias: $Organization-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $Practitioner-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $PractitionerRole-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $RelatedPerson-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $CodeableConcept-tw = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw
Alias: $provenance-participant-type-hl7-tw = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/provenance-participant-type-hl7-tw

Profile: TWCoreProvenance
Parent: Provenance
Id: Provenance-twcore
Title: "TW Core Provenance"
Description: "此臺灣核心-出處（TW Core Provenance） Profile說明本IG如何進一步定義FHIR的Provenance Resource以呈現出處資料。"
* ^version = "0.3.0"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* target MS
* target.reference MS
* recorded MS
* location only Reference($Location-twcore)
* agent MS
* agent obeys provenance-1
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent.type MS
* agent.type from $provenance-participant-type-hl7-tw (extensible)
* agent.who only Reference($Organization-twcore or $Practitioner-twcore or $Patient-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore or Device)
* agent.who MS
* agent.who ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = true
* agent.who ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = false
* agent.who ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = false
* agent.who ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = false
* agent.who ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = false
* agent.who ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* agent.who ^type.targetProfile[=].extension.valueBoolean = false
* agent.onBehalfOf only Reference($Organization-twcore)
* agent.onBehalfOf MS
* agent contains
    ProvenanceAuthor 0..* MS and
    ProvenanceTransmitter 0..* MS
* agent[ProvenanceAuthor].type 1..
* agent[ProvenanceAuthor].type only $CodeableConcept-tw
* agent[ProvenanceAuthor].type = $provenance-participant-type#author
* agent[ProvenanceAuthor].who only Reference($Organization-twcore or $Practitioner-twcore or $Patient-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore or Device)
* agent[ProvenanceAuthor].who MS
* agent[ProvenanceAuthor].onBehalfOf only Reference($Organization-twcore)
* agent[ProvenanceAuthor].onBehalfOf MS
* agent[ProvenanceTransmitter] ^definition = "The entity that provided the copy to your system."
* agent[ProvenanceTransmitter].type 1..
* agent[ProvenanceTransmitter].type only $CodeableConcept-tw
* agent[ProvenanceTransmitter].type = $provenance-participant-type-tw#transmitter
* agent[ProvenanceTransmitter].who only Reference($Organization-twcore or $Practitioner-twcore or $Patient-twcore or $PractitionerRole-twcore or $RelatedPerson-twcore or Device)
* agent[ProvenanceTransmitter].who MS
* agent[ProvenanceTransmitter].onBehalfOf only Reference($Organization-twcore)
* agent[ProvenanceTransmitter].onBehalfOf MS

Invariant: provenance-1
Description: "onBehalfOf SHALL be present when Provenance.agent.who is a Practitioner or Device"
* severity = #error
* expression = "who.exists((resolve() is Practitioner) or (resolve() is Device)) implies onBehalfOf.exists()"