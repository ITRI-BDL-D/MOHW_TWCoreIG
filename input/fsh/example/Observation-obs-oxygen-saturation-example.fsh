Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Instance: obs-oxygen-saturation-example
InstanceOf: TWCoreObservationPulseOximetry
Usage: #example
* meta.profile = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-pulse-oximetry-twcore"
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "生命體徵"
* code.coding[O2Sat] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[PulseOx] = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.text = "脈搏血氧飽和度"
* subject = Reference(Patient/pat-example) "陳加玲"
* effectiveDateTime = "2022-07-31"
* valueQuantity = 99 '%' "%"
* component[FlowRate].code = $loinc#3151-8 "Inhaled oxygen flow rate"
* component[FlowRate].code.text = "吸入氧氣流速"
* component[FlowRate].valueQuantity = 6 'L/min' "liters/min"
* component[Concentration].code = $loinc#3150-0 "Inhaled oxygen concentration"
* component[Concentration].code.text = "吸入氧氣濃度"
* component[Concentration].valueQuantity = 21 '%' "%"