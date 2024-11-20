# **四、TWCDI資料元素與TW Core Profiles之對應關係與使用**
TW Core IG後續將會定期更新該實作指引，以滿足後續的台灣核心資料互通性(TWCDI)應用需求。TWCDI和TW Core是互補的存在，TWCDI定義高階資料要求，TW Core則提供詳細的基於FHIR 的設定檔(Profiles)，以滿足這些要求。
- TWCDI資料類別和元素名稱可能與TW Core設定檔(Profile)名稱和元素名稱不同。
- 並非每個TWCDI資料類別和元素都對應到單一設定檔(Profile)。
- 許多TW Core Profile元素不會完全對應到TWCDI資料類別和元素，因為TW Core的用途更為廣泛，並且需要額外的TW Core元素來實現FHIR。

1. **與接觸某種物質相關的有害或不良的生理反應：**

|**Allergies and Intolerances(過敏和不耐受)**|[臺灣核心-過敏或不耐症(TW Core AllergyIntolerance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-AllergyIntolerance-twcore.html)|
| - | - |
|- Substance (Medication)|[臺灣核心-過敏或不耐症(TW Core AllergyIntolerance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-AllergyIntolerance-twcore.html)|
|- Substance (Drug Class)|[臺灣核心-過敏或不耐症(TW Core AllergyIntolerance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-AllergyIntolerance-twcore.html)|
|- Substance (Non-Medication)|[臺灣核心-過敏或不耐症(TW Core AllergyIntolerance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-AllergyIntolerance-twcore.html)|
|- Reaction|[臺灣核心-過敏或不耐症(TW Core AllergyIntolerance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-AllergyIntolerance-twcore.html)|

2. **有關參與或預計參與患者護理的人員資訊：**

|**Care Team Members**|[臺灣核心-照護團隊(TW Core CareTeam)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-CareTeam-twcore.html)|
| - | - |
|- Name|<p>[臺灣核心-健康照護服務提供者(TW Core Practitioner)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Practitioner-twcore.html)</p><p>[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)</p><p>[臺灣核心-相關人士(TW Core RelatedPerson)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-RelatedPerson-twcore.html)</p>|
|- Identifier|<p>[臺灣核心-健康照護服務提供者(TW Core Practitioner)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Practitioner-twcore.html)</p><p>[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)</p>|
|- Location|<p>[臺灣核心-健康照護服務提供者角色(TW Core PractitionerRole)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html)</p><p>[臺灣核心-健康照護服務提供者(TW Core Practitioner)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Practitioner-twcore.html)</p><p>[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)</p><p>[臺灣核心-相關人士(TW Core RelatedPerson)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-RelatedPerson-twcore.html)</p>|
|- Telecom|<p>[臺灣核心-健康照護服務提供者角色(TW Core PractitionerRole)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-PractitionerRole-twcore.html)</p><p>[臺灣核心-健康照護服務提供者(TW Core Practitioner)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Practitioner-twcore.html)</p><p>[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)</p><p>[臺灣核心-相關人士(TW Core RelatedPerson)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-RelatedPerson-twcore.html)</p>|
|- Role|[臺灣核心-照護團隊(TW Core CareTeam)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-CareTeam-twcore.html)|

3. **描述性患者臨床資料：**

|**Clinical Notes**|<p>[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
| - | - |
|- Consultation Note|[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)|
|- Discharge Summary Note|[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)|
|- History & Physical|[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)|
|- Imaging Narrative|<p>[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Procedure Note|<p>[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Progress Note|[臺灣核心-文件參照(TW Core DocumentReference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DocumentReference-twcore.html)|

4. **進行非影像和非實驗室測試，得出針對患者的結構化或非結構化結果，以促進病情的診斷和管理：**

|**Clinical Tests**|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
| - | - |
|- Clinical Test|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Clinical Test Result/Report|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|

5. **產生需要具有資格的專業人士解讀的醫學影像測試：**

|**Diagnostic Imaging**|<p>[臺灣核心-臨床檢驗檢查(TW Core Observation Clinical Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-clinical-result-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p><p>[臺灣核心-影像檢查(TW Core ImagingStudy)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ImagingStudy-twcore.html)</p>|
| - | - |
|- Diagnostic Imaging Test|<p>[臺灣核心-臨床檢驗檢查(TW Core Observation Clinical Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-clinical-result-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p><p>[臺灣核心-影像檢查(TW Core ImagingStudy)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ImagingStudy-twcore.html)</p>|
|- Diagnostic Imaging Result/Report|<p>[臺灣核心-臨床檢驗檢查(TW Core Observation Clinical Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-clinical-result-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p><p>[臺灣核心-影像檢查(TW Core ImagingStudy)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ImagingStudy-twcore.html)</p>|

6. **與醫療保健提供者和患者之間的互動相關的資訊：**

|**Encounter**|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|
| - | - |
|- Identifier|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|
|- Type|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|
|- Diagnosis|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|
|- Time|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|
|- Location|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|
|- Disposition|[臺灣核心-就醫事件(TW Core Encounter)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Encounter-twcore.html)|


7. **可用服務或資源的實體位置：**

|**Facility Information**|[臺灣核心-地點(TW Core Location)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Location-twcore.html)|
| - | - |
|- Identifier|[臺灣核心-地點(TW Core Location)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Location-twcore.html)|
|- Type|[臺灣核心-地點(TW Core Location)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Location-twcore.html)|
|- Name|[臺灣核心-地點(TW Core Location)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Location-twcore.html)|

8. **目標：**

|**Goals and Preferences**|[臺灣核心-目標(TW Core Goal)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Goal-twcore.html)|
| - | - |
|- Patient Goals|[臺灣核心-目標(TW Core Goal)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Goal-twcore.html)|
|- SDOH Goals|[臺灣核心-目標(TW Core Goal)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Goal-twcore.html)|
|- Treatment Intervention Preference|[臺灣核心-病人治療偏好註記(TW Core Observation Treatment Intervention Preference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-treatment-intervention-preference-twcore.html)|
|- Care Experience Preference|[臺灣核心-病人照護偏好註記(TW Core Observation Care Experience Preference)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-careExperiencePreference-twcore.html)|

9. **與個人醫療保險範圍相關的資料：**

|**Health Insurance Information**|<p>[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)</p><p>[臺灣核心-機構(TW Core Organization)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Organization-twcore.html)</p>|
| - | - |
|- Coverage Status|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Coverage Type|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Relationship to Subscriber|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Member Identifier|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Subscriber Identifier|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Group Number|[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)|
|- Payer Identifier|<p>[臺灣核心-給付範圍(TW Core Coverage)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Coverage-twcore.html)</p><p>[臺灣核心-機構(TW Core Organization](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Organization-twcore.html)</p>|

10. **對患者、患者家屬或患者的醫療保健提供者感興趣、重要性或擔憂的健康相關問題進行評估，以識別需求、問題或狀況：**

|**Health Status Assessments**|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
| - | - |
|- Health Concerns|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|
|- Functional Status|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Disability Status|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Mental/Cognitive Status|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Pregnancy Status|<p>[臺灣核心-妊娠狀態(TW Core Observation Pregnancy Status)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pregnancy-status-twcore.html)</p><p>[臺灣核心-妊娠計畫(TW Core Observation Pregnancy Intent)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pregnancy-intent-twcore.html)</p>|
|- Alcohol Use|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Substance Use|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Physical Activity|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- SDOH Assessment|<p>[臺灣核心-通用檢驗檢查(TW Core Simple Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-simple-twcore.html)</p><p>[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)</p><p>[臺灣核心-健康狀態篩檢與評估(TW Core Observation Screening Assessment)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-screening-assessment-twcore.html)</p><p>[臺灣核心-問卷題目回覆(TW Core QuestionnaireResponse)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-QuestionnaireResponse-twcore.html)</p>|
|- Smoking Status|[臺灣核心-吸菸狀態(TW Core Smoking Status Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-smoking-status-twcore.html)|


11. **疫苗接種記錄：**

|**Immunizations**|[臺灣核心-疫苗接種(TW Core Immunization)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Immunization-twcore.html)|
| - | - |

12. **用於醫療目的的儀器、機器、器具、植入物、軟體或其他物品：**

|**Medical Devices**|[臺灣核心-植入式裝置(TW Core Implantable Device)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Device-twcore.html)|
| - | - |
|- Unique Device Identifier(s) for a Patient's Implantable Device(s)|[臺灣核心-植入式裝置(TW Core Implantable Device)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Device-twcore.html)|

13. **分析臨床樣本以獲得有關患者健康的資訊：**

|**Laboratory**|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p><p>[臺灣核心-檢體(TW Core Specimen)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Specimen-twcore.html)</p>|
| - | - |
|- Tests|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Values/Results|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Specimen Type|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-檢體(TW Core Specimen)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Specimen-twcore.html)</p>|
|- Result Status|<p>[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p>|
|- Result Unit of Measure|[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)|
|- Result Reference Range|[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)|
|- Result Interpretation|[臺灣核心-檢驗檢查(TW Core Observation Laboratory Result)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-laboratoryResult-twcore.html)|
|- ` `Specimen Identifier|[臺灣核心-檢體(TW Core Specimen)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Specimen-twcore.html)|
|- ` `Specimen Source Site|[臺灣核心-檢體(TW Core Specimen)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Specimen-twcore.html)|
|- ` `Specimen Condition Acceptability|[臺灣核心-檢體(TW Core Specimen)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Specimen-twcore.html)|

14. **用於診斷、治癒、緩解、治療或預防疾病的藥物：**

|**Medications**|<p>[臺灣核心-藥品(TW Core Medication)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Medication-twcore.html)</p><p>[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)</p><p>[臺灣核心-配藥或藥品調劑(TW Core MedicationDispense](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationDispense-twcore.html)</p>|
| - | - |
|- Medications|<p>[臺灣核心-藥品(TW Core Medication)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Medication-twcore.html)</p><p>[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)</p>|
|- Dose|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|
|- Dose Unit of Measure|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|
|- Indication|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|
|- Medication Instructions|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|
|- Medication Adherence|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|
|- Fill Status|[臺灣核心-藥品請求(TW Core MedicationRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-MedicationRequest-twcore.html)|

15. **用於對個人進行分類以進行識別、記錄匹配和其他目的的資料：**

|**Patient Demographics**|<p>[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)</p><p>[臺灣核心-性傾向(TW Core Observation Sexual Orientation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-sexual-orientation-twcore.html)</p><p>[臺灣核心-職業(TW Core Observation Occupation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-occupation-twcore.html)</p>|
| - | - |
|- First Name|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Last Name|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Previous Name|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Sex|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Date of Birth|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Date of Death|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Race|-|
|- Gender Identity|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Sexual Orientation|[臺灣核心-性傾向(TW Core Observation Sexual Orientation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-sexual-orientation-twcore.html)|
|- Address|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Previous Address|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Email|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Phone Number|[臺灣核心-病人(TW Core Patient)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Patient-twcore.html)|
|- Related Person's Name|[臺灣核心-相關人士(TW Core RelatedPerson)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-RelatedPerson-twcore.html)|
|- Related Person's Relationship|[臺灣核心-相關人士(TW Core RelatedPerson)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-RelatedPerson-twcore.html)|
|- Occupation|[臺灣核心-職業(TW Core Observation Occupation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-occupation-twcore.html)|
|- Occupation Industry|[臺灣核心-職業(TW Core Observation Occupation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-occupation-twcore.html)|

16. **指導患者治療的結論和工作假設以及未來治療的建議：**

|**Patient Summary and Plan**|[臺灣核心-照護計畫(TW Core CarePlan)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-CarePlan-twcore.html)|
| - | - |
|- Assessment and Plan of Treatment|[臺灣核心-照護計畫(TW Core CarePlan)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-CarePlan-twcore.html)|

17. **診斷或就醫的原因：**

|**Problems**|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|
| - | - |
|- Date of Resolution|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|
|- Date of Diagnosis|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|
|- SDOH Problems/Health Concerns|[臺灣核心-病情、問題或診斷(TW Core Condition)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Condition-twcore.html)|


18. **作為提供護理的一部分，為患者或在患者身上進行的活動：**

|**Procedures**|<p>[臺灣核心-處置或手術(TW Core Procedure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Procedure-twcore.html)</p><p>[臺灣核心-服務請求(TW Core ServiceRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ServiceRequest-twcore.html)</p>|
| - | - |
|- Procedure|[臺灣核心-處置或手術(TW Core Procedure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Procedure-twcore.html)|
|- Performance Time|<p>[臺灣核心-處置或手術(TW Core Procedure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Procedure-twcore.html)</p><p>[臺灣核心-診斷報告(TW Core DiagnosticReport)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-DiagnosticReport-twcore.html)</p><p>[臺灣核心-疫苗接種(TW Core Immunization)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Immunization-twcore.html)</p>|
|- Reason for Referral|<p>[臺灣核心-服務請求(TW Core ServiceRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ServiceRequest-twcore.html)</p><p>[臺灣核心-處置或手術(TW Core Procedure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Procedure-twcore.html)</p>|
|- SDOH Interventions|<p>[臺灣核心-服務請求(TW Core ServiceRequest)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-ServiceRequest-twcore.html)</p><p>[臺灣核心-處置或手術(TW Core Procedure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Procedure-twcore.html)</p>|

19. **元資料(metadata)或有關資料的額外資訊，涉及資料創建者和創建時間(電子/數位簽章)：**

|**Provenance**|[臺灣核心-出處(TW Core Provenance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Provenance-twcore.html)|
| - | - |
|- Author Time Stamp|[臺灣核心-出處(TW Core Provenance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Provenance-twcore.html)|
|- Author Organization|[臺灣核心-出處(TW Core Provenance)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Provenance-twcore.html)|

20. **患者的生理測量，顯示身體維持生命功能的狀態：**

|**Vital Signs**|[臺灣核心-生命體徵(TW Core Observation Vital Signs)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-vitalSigns-twcore.html)|
| - | - |
|- Average Blood Pressure|[臺灣核心-平均血壓(TW Core Observation Average Blood Pressure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-averageBloodPressure-twcore.html)|
|- Diastolic blood pressure|[臺灣核心-血壓(TW Core Observation Blood Pressure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-bloodPressure-twcore.html)|
|- Systolic blood pressure|[臺灣核心-血壓(TW Core Observation Blood Pressure)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-bloodPressure-twcore.html)|
|- Body height|[臺灣核心-身高(TW Core Observation Body Height)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-body-height-twcore.html)|
|- Body weight|[臺灣核心-體溫(TW Core Observation Body Temperature)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-body-temperature-twcore.html)|
|- Heart rate|[臺灣核心-心率(TW Core Observation Heart Rate)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-heart-rate-twcore.html)|
|- Respiratory rate|[臺灣核心-呼吸速率(TW Core Observation Respiratory Rate)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-respiratory-rate-twcore.html)|
|- Body temperature|[臺灣核心-體溫(TW Core Observation Body Temperature)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-body-temperature-twcore.html)|
|- Pulse oximetry|[臺灣核心-脈搏血氧飽和度(TW Core Observation Pulse Oximetry)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pulse-oximetry-twcore.html)|
|- Inhaled oxygen concentration|[臺灣核心-脈搏血氧飽和度(TW Core Observation Pulse Oximetry)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pulse-oximetry-twcore.html)|
|- BMI Percentile (2-20 years old)|[臺灣核心-兒童及青少年身體質量指數(TW Core Pediatric BMI for Age Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pediatric-bmi-age-twcore.html)|
|- Weight-for-length Percentile (Birth - 36 months)|[臺灣核心-兒童體重與身高比(TW Core Pediatric Weight for Height Observation)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pediatric-weight-height-twcore.html)|
|- Occipital Frontal Head Circumference Percentile (Birth - 36 months)|[臺灣核心-兒童頭圍百分位數(TW Core Observation Pediatric Head Occipital Frontal Circumference Percentile)](https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition-Observation-pediatric-head-circumference-twcore.html)|