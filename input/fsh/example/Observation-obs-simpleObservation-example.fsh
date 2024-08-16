Instance: obs-simpleObservation-example
InstanceOf: TWCoreObservation
Usage: #example
* status = #final
* category[twcore] = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/loinc-tw#75276-6 "Functional status [Interpretation]"
* code.text = "老年評估"
* subject = Reference(Patient/pat-example)
* effectiveDateTime = "2023-11-24T21:26:59Z"
* performer = Reference(Practitioner/pra-nurse-example)
* valueCodeableConcept = http://snomed.info/sct#129035000 "Independent with dressing (finding)"
* valueCodeableConcept.text = "獨立穿脫衣服"