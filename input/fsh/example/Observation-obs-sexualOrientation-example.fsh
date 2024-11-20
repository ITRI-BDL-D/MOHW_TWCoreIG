Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-sexualOrientation-example
InstanceOf: TWCoreObservationSexualOrientation
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#76690-7 "Sexual orientation"
* code.text = "Sexual orientation"
* subject = Reference(Patient/pat-example)
* effectiveDateTime = "2021-11-11"
* performer = Reference(Practitioner/pra-dr-example)
* valueCodeableConcept = $loinc#38628009 "Homosexuality"
* valueCodeableConcept.text = "Homosexuality"