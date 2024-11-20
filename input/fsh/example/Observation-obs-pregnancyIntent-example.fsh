Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org


Instance: obs-pregnancyIntent-example
InstanceOf: TWCoreObservationPregnancyIntent
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#86645-9 "Pregnancy intention in the next year - Reported"
* code.text = "Pregnancy Intent"
* subject = Reference(Patient/pat-example)
* effectiveDateTime = "2022-09-23T22:39:43Z"
* valueCodeableConcept.coding = $loinc#LA26438-4 "Yes, I want to become pregnant"
* valueCodeableConcept.text = "Yes, I want to become pregnant"