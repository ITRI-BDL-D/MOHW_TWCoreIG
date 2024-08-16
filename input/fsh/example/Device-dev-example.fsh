Alias: $sct = http://snomed.info/sct
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $device-kind = http://hl7.org/fhir/ValueSet/device-kind

Instance: dev-example
InstanceOf: TWCoreImplantableDevice
Usage: #example
* udiCarrier.deviceIdentifier = "09504000059118"
* udiCarrier.carrierHRF = "(01)09504000059118(17)141120(10)7654321D(21)10987654d321"
* status = #active
* expirationDate = "2014-11-20"
* lotNumber = "7654321D"
* serialNumber = "10987654d321"
* type.coding.version = "http://snomed.info/sct/731000124108"
* type.coding = $sct#468063009 "Coated femoral stem prosthesis, modular"
* patient =  Reference(Patient/pat-example)