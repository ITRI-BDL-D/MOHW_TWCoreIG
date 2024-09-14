Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-pediatric-bmi-example
InstanceOf: TWCoreObservationPediatricBMIforAge
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/Observation-pediatric-bmi-age-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#59576-9 "Body mass index (BMI) [Percentile] Per age and sex"
* code.text = "BMI"
* subject = Reference(Patient/pat-example-child) "陳曉第"
* effectiveDateTime = "2022-07-31"
* valueQuantity = 65 '%' "%"