Profile:        TWCoreImmunization
Parent:         Immunization
Id:             Immunization-twcore
Title:          "TW Core Immunization"
Description:    "此臺灣核心-疫苗接種（TW Core Immunization） Profile說明本IG如何進一步定義FHIR的Immunization Resource以呈現疫苗接種資料。"
* ^version = "0.3.2"
* obeys tw-core-10
* . ^mustSupport = false
* . ^short = "疫苗接種"
* . ^definition = "疫苗接種的記錄，包含接種的疫苗及事件的相關資訊。"

* status MS
* status ^short = "completed | entered-in-error | not-done"
* status ^definition = "疫苗接種事件的狀態，表示是否完成接種、記錄有誤或未接種。"

* statusReason MS
* statusReason ^short = "接種未完成的原因"
* statusReason ^definition = "表示為什麼疫苗接種未完成的原因，例如：禁忌症、病患拒絕等。"

* vaccineCode MS
* vaccineCode from http://hl7.org/fhir/ValueSet/vaccine-code (extensible)
* vaccineCode ^short = "疫苗產品類型 (綁定到CVX疫苗代碼系統)"
* vaccineCode ^definition = "用於識別施打的疫苗種類或類型。"
* vaccineCode ^condition = "tw-core-10"

* patient only Reference(TWCorePatient)
* patient MS
* patient ^short = "接種疫苗的病患"
* patient ^definition = "接受疫苗接種的患者參照。"

* encounter only Reference(TWCoreEncounter)
* encounter MS
* encounter ^short = "與疫苗接種相關的就醫事件"
* encounter ^definition = "表示疫苗接種發生時的就醫事件參照。"

* occurrence[x] only dateTime or string
* occurrence[x] MS
* occurrence[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* occurrence[x] ^type.extension.valueBoolean = true
* occurrence[x] ^short = "疫苗接種的發生日期/時間"
* occurrence[x] ^definition = "疫苗接種發生的日期與時間，或以字串描述的大概時間。"

* primarySource MS
* primarySource ^short = "資料來源是否為主要來源"
* primarySource ^definition = "指示記錄的資訊是否來自主要來源（如接種疫苗的人員），或是從次要來源（如病患本人回報）取得。"

* location only Reference(TWCoreLocation)
* location MS
* location ^short = "疫苗接種的地點"
* location ^definition = "進行疫苗接種的實際地點，如醫療院所、診所等。"

* manufacturer only Reference(TWCoreOrganization)
* manufacturer ^short = "疫苗製造商"
* manufacturer ^definition = "疫苗製造商的參照。"

* performer.actor only Reference(TWCorePractitioner or TWCorePractitionerRole or TWCoreOrganization)
* performer.actor ^short = "執行疫苗接種的人員或組織"
* performer.actor ^definition = "參與疫苗接種的醫療人員、醫療人員角色或組織的參照。"

* reasonReference only Reference(TWCoreCondition or TWCoreObservationClinicalResult or TWCoreDiagnosticReport)
* reasonReference ^short = "接種疫苗的原因"
* reasonReference ^definition = "進行此次疫苗接種的醫療原因參照，例如：特定疾病、臨床觀察或診斷報告。"

* reaction.detail only Reference(TWCoreObservationClinicalResult)
* reaction.detail ^short = "接種後反應的細節"
* reaction.detail ^definition = "疫苗接種後發生的不良反應參照，例如：過敏反應、發燒等臨床結果觀察。"

* protocolApplied.authority only Reference(TWCoreOrganization)
* protocolApplied.authority ^short = "疫苗接種計劃的權責組織"
* protocolApplied.authority ^definition = "提供或授權此疫苗接種計劃的組織參照。"