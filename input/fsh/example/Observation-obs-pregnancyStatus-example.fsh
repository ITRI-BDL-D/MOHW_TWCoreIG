Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-pregnancyStatus-example
InstanceOf: TWCoreObservationPregnancyStatus
Usage: #example
* status = #final
* category = $observation-category#social-history "Social History"
* category.text = "Social History"
* code = $loinc#82810-3 "Pregnancy status"
* code.text = "Pregnancy Status"
* subject = Reference(Patient/pat-example)
* effectiveDateTime = "2022-08-24T10:39:52Z"
* valueCodeableConcept.coding.version = "http://snomed.info/sct/731000124108"
* valueCodeableConcept.coding = https://twcore.mohw.gov.tw/ig/twcore/ValueSet/snomed-pregnancy-status-code#77386006 "Pregnancy"
* valueCodeableConcept.text = "Pregnancy"