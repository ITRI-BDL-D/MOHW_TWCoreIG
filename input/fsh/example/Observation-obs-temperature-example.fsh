Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-temperature-example
InstanceOf: TWCoreObservationBodyTemperature
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-body-temperature-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#8310-5 "Body temperature"
* code.text = "體溫"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "2022-07-31"
* valueQuantity = 36.55556 'Cel' "Cel"