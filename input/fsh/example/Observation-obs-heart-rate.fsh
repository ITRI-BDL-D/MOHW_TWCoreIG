Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-heart-rate-example
InstanceOf: TWCoreObservationHeartRate
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-heart-rate-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#8867-4 "Heart Rate"
* code.text = "心率"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "1999-07-02"
* valueQuantity = 44 '/min' "beats/min"