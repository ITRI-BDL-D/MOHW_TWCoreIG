Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

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
* valueCodeableConcept.coding = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/snomed-pregnancy-intent-code#454381000124105 "Finding related to pregnancy intention (finding)"
* valueCodeableConcept.text = "Pregnant"