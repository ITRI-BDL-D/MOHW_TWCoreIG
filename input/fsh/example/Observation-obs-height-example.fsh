Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-height-example
InstanceOf: TWCoreBodyHeight
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-body-height-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code = $loinc#8302-2 "Body height"
* code.text = "身高"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "2022-07-31"
* valueQuantity = 151.5 'cm' "cm"