Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-screeningAssessment-example
InstanceOf: TWCoreObservationScreeningAssessment
Usage: #example
* status = #final
* category[survey] = $observation-category#survey "Survey"
* category[survey].text = "Survey"
* code = $loinc#32401-2 "10 minute Apgar Color"
* code.text = "Apgar color score"
* subject = Reference(Patient/pat-example)
* effectiveDateTime = "2016-05-18T22:33:22+00:00"
* performer = Reference(Practitioner/pra-dr-example)
* valueCodeableConcept.coding.extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* valueCodeableConcept.coding.extension.valueDecimal = 2
* valueCodeableConcept.coding = $loinc#LA6724-4 "Good color all over"
* valueCodeableConcept.text = "2. Good color all over"