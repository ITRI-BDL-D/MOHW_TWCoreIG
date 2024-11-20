Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-weight-example
InstanceOf: TWCoreBodyWeight
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-body-weight-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#29463-7 "Body Weight"
* code.text = "體重"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "2022-07-31"
* valueQuantity = 52.7 'kg' "kg"