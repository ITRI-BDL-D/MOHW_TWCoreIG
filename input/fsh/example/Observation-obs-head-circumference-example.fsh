Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-head-circumference-example
InstanceOf: TWCorebservationHeadCircumference
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-head-circumference|7.0.0"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#9843-4 "Head Occipital-frontal circumference"
* code.text = "頭圍"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "2020-11-18T16:19:31-08:00"
* valueQuantity = 56.2 'cm' "cm"