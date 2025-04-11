Profile:        TWCoreCoverage
Parent:         Coverage
Id:             Coverage-twcore
Title:          "TW Core Coverage"
Description:    "此臺灣核心-給付範圍（TW Core Coverage） Profile說明本IG如何進一步定義FHIR的Coverage Resource以呈現給付範圍資料。"
* ^version = "0.3.2"
* . obeys tw-core-9
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^short = "會員ID及其他識別碼"
* identifier contains memberid 0..1 MS
* identifier[memberid] ^short = "會員ID"
* identifier[memberid] ^condition = "tw-core-3"
* identifier[memberid].type 1.. MS
* identifier[memberid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MB
* identifier[memberid].type ^short = "會員號碼識別碼類型"
* status MS
* status ^comment = "`Coverage.status`本身並不表示個人的保險是否已終止或個人未被保險。也需要考慮`Coverage.period`。"
* type MS
* type from http://hl7.org/fhir/ValueSet/coverage-type (extensible)
* subscriberId MS
* subscriberId ^comment = "支付者在訂閱者ID卡上分配的識別碼"
* subscriberId ^condition = "tw-core-3"
* beneficiary only Reference(TWCorePatient)
* beneficiary MS
* beneficiary ^comment = "支付者分配給會員的識別碼。"
* relationship 1.. MS
//* relationship from $subscriber-relationship (extensible)
* relationship ^comment = "會員與被保險人（訂閱者）的關係"
* period MS
* period ^comment = "合約生效日期和合約終止或保險變更的日期。"
* payor ..1 MS
* payor only Reference(TWCoreOrganization or TWCorePatient or TWCoreRelatedPerson)
* payor ^comment = "保單的發行機構"
* payor ^type.targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* payor ^type.targetProfile[=].extension.valueBoolean = true
* payor ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* payor ^type.targetProfile[=].extension.valueBoolean = false
* payor ^type.targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* payor ^type.targetProfile[=].extension.valueBoolean = false
* class MS
* class ^slicing.discriminator.type = #pattern
* class ^slicing.discriminator.path = "type"
* class ^slicing.description = "基於值模式的切片"
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class contains
    group 0..1 MS and
    plan 0..1 MS
* class[group] ^short = "群組"
* class[group].type = http://terminology.hl7.org/CodeSystem/coverage-class#group
* class[group].value MS
* class[group].value ^short = "群組編號"
* class[group].value ^comment = "雇主帳戶識別碼"
* class[group].name MS
* class[group].name ^short = "群組名稱"
* class[group].name ^comment = "雇主帳戶名稱 (135)"
* class[plan] ^short = "計畫"
* class[plan].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan
* class[plan].value MS
* class[plan].value ^short = "計畫編號"
* class[plan].value ^comment = "健康計畫用來描述其福利項目的商業概念"
* class[plan].name MS
* class[plan].name ^short = "計畫名稱"
* class[plan].name ^comment = "分配給計畫識別碼的健康計畫福利項目名稱"


* identifier[memberid].assigner only Reference(TWCoreOrganization)
* policyHolder only Reference(TWCorePatient or TWCoreRelatedPerson or TWCoreOrganization)
* subscriber only Reference(TWCorePatient or TWCoreRelatedPerson)