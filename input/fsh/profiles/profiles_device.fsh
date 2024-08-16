Alias: $sct = http://snomed.info/sct
Alias: $Patient-twcore = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $device-kind = http://hl7.org/fhir/ValueSet/device-kind

Profile: TWCoreImplantableDevice
Parent: Device
Id: Device-twcore
Title: "TW Core Implantable Device"
Description: "此臺灣核心-植入式裝置（TW Core Implantable Device） Profile說明本IG如何進一步定義FHIR的Device Resource以呈現植入式裝置資料。"
* ^url = "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Device-twcore"
* ^version = "0.2.3"
* ^status = #active
* ^contact.name = "衛生福利部"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://www.mohw.gov.tw/"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "CCYU@mohw.gov.tw"
* udiCarrier ..1 MS
* udiCarrier.deviceIdentifier 1.. MS
* udiCarrier.carrierHRF MS
* udiCarrier.carrierHRF ^alias[0] = "UDI"
* udiCarrier.carrierHRF ^alias[+] = "Barcode String"
* distinctIdentifier MS
* manufactureDate MS
* expirationDate MS
* lotNumber MS
* serialNumber MS
* type 1.. MS
* type from $device-kind (extensible)
* type ^binding.description = "Codes to identify medical devices"
* patient 1.. MS
* patient only Reference($Patient-twcore)