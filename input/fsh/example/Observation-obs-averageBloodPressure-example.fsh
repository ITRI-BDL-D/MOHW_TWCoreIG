Instance: obs-averageBloodPressure-example
InstanceOf: TWCoreObservationAverageBloodPressure
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/loinc-tw#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* code.text = "平均血壓"
* subject.reference = "Patient/pat-example"
* effectiveDateTime = "2024-01-01"
* performer = Reference(Practitioner/pra-nurse-example)
* component[Systolic].code = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/loinc-tw#96608-5 "Systolic blood pressure mean"
* component[Systolic].code.text = "平均收縮壓"
* component[Systolic].valueQuantity = 120 'mm[Hg]' "mm[Hg]"
* component[Diastolic].code = https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/loinc-tw#96609-3 "Diastolic Average Blood Pressure Code"
* component[Diastolic].code.text = "平均舒張壓"
* component[Diastolic].valueQuantity = 80 'mm[Hg]' "mm[Hg]"
* component[Number].code = http://snomed.info/sct#246432004 "Number of occurrences (qualifier value)"
* component[Number].code.text = "測量次數"
* component[Number].valueQuantity.value = 3
* component[Number].valueQuantity.unit = "#"
