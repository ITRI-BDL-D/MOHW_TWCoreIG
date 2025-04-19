# MOHW_TWCoreIG

臺灣核心實作指引（TW Core IG, Taiwan Core Implementation Guide）

本專案為台灣衛生福利部（MOHW）FHIR 臺灣核心規範（TW Core）的實作指引，提供 FHIR Profiles、範例、結構定義與相關說明文件，協助台灣醫療資訊系統與 FHIR 標準接軌。

## 內容簡介

- FHIR Profiles 與 Extensions
- 臨床資料結構定義（如 Observation, Patient, Bundle, Composition 等）
- 範例資料（XML/JSON/Turtle）
- Profiles 與範例下載
- 各資源的實作說明與查詢參數建議
- 台灣醫療情境下的 FHIR 實作指引

## 目錄結構

- `input/`：Profiles、範例、說明文件
- `fsh/`：FHIR Shorthand (FSH) 定義
- `pagecontent/`：IG 說明頁面內容
- `LICENSE`：授權條款

## 如何使用

1. 下載或 clone 本專案
2. 參考 `input/pagecontent/downloads.md` 下載完整 Profiles 與範例
3. 可用 FHIR IG Publisher 工具產生網頁版指引
4. 依 Profiles 實作或驗證你的 FHIR 資料

## 下載

- Profiles 定義（definitions.xml.zip / definitions.json.zip / definitions.ttl.zip）
- 範例資料（examples.xml.zip / examples.json.zip / examples.ttl.zip）

> 下載檔案請參考 `input/pagecontent/downloads.md` 
## 授權

本專案授權詳見 [LICENSE](LICENSE)。

## 參考連結

- [FHIR 官方網站](https://hl7.org/fhir/)
- [臺灣核心 FHIR IG 官方網站](https://twcore.mohw.gov.tw/ig/twcore/)
