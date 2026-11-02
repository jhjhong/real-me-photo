# 參與 留覓（Real-Me Photo）

[English](CONTRIBUTING.md) · **繁體中文**

謝謝你願意幫忙！這份文件說明怎麼回報生圖／鎖臉問題、怎麼擴充或調整 Skills 與參考詞庫，以及 PR 要符合哪些條件。用 AI Agent 開發的話，請先讀 [AGENTS.md](AGENTS.md)（重點摘要＋專案鐵律）。

## 回報問題、提建議

- **生圖失真／不像本人回報**：開 Issue 時請註明使用的生圖環境（如 ChatGPT / GPT Image 2、Nano Banana、Midjourney、Flux）、觸發的技能標記（如 `[Real-Me]: real-me-portrait`）、你輸入的原始 Prompt，以及觸發了 [12 模組翻車檢查表](skills/real-me-rescue/references/diagnostic-checklist.zh-TW.md) 中的哪種症狀（`M01–M12`）。**請勿在公開 Issue 上傳未經授權或含敏感個資的私人照片。**
- **新增攝影配方／分鏡模板**：想新增底片色調、光位配方或雙人互動姿勢，建議先開 Issue 討論要歸入哪個 Skill 的 `references/`，確定方向再動手。
- **安裝腳本與跨平台相容性**：若在特定 Agent（Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw）安裝失敗，請附上作業系統、Shell 環境與終端機輸出訊息。
- **翻譯與文件修正**：說明是哪一個語言檔案（`README*.md` 或 `*.zh-TW.md`）與修改段落。

## 驗證與測試指令

修改腳本或技能結構後，可以在專案根目錄用以下指令驗證：

| 任務 | 指令（於專案根目錄執行） |
|---|---|
| 檢查安裝腳本語法 | `bash -n install/install.sh` |
| 測試完整安裝至暫存目錄 | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" && ls -la "$TMP_DIR" && rm -rf "$TMP_DIR"` |
| 測試 `--only` 指定技能安裝 | `TMP_DIR="$(mktemp -d)" && bash install/install.sh --target "$TMP_DIR" --only real-me-retouch,real-me-portrait && rm -rf "$TMP_DIR"` |
| 檢查所有 Skill 的 YAML 標頭 | `head -n 15 skills/*/SKILL.md` |

## 專案結構

```text
README.md                        英文版說明書
README.zh-TW.md                  繁體中文說明書
README.zh-CN.md                  簡體中文說明書
README.ja.md                     日文版說明書
README.ko.md                     韓文版說明書
AGENTS.md                        AI Agent 開發指令與核心守則
CONTRIBUTING[.zh-TW].md          貢獻者指南（本文件）
install/
  INSTALL.md                     AI 自動安裝規範（區分環境 A 本地 CLI/IDE 與環境 B 網頁對話記憶）
  install.sh                     跨平台自動偵測安裝腳本（安裝時會自動過濾掉 *.zh-TW.md）
skills/
  real-me-retouch/               原圖修圖：鎖定原圖背景、穿搭与姿勢，8 級真實膚質與光影精修
  real-me-portrait/              意象寫真：隔離原圖背景，內建 9 模組攝影方案與 3×3 / 4×4 分鏡表
  real-me-remix/                 創意混搭：鎖定本人五官，場景、構圖与風格 100% 依附使用者自訂 Prompt
  real-me-couple/                雙人情侶：主動／回應方眼神流向、左右前後座標、左右手歸屬與成年人比例鎖定
  real-me-rescue/                失真修復：M01–M12 標準必檢指標＋開放式診斷，強制回溯本人原圖重新生成
```

## 一定要守的規矩

這些是 **留覓（Real-Me Photo）** 的核心承諾，違反以下原則的 PR 不會合併：

1. **10+3 真我鎖臉底線不能破**：所有技能都必須嚴格守住 **10 點五官氣質錨點**（臉型、三庭五眼比例、眉眼結構、眼睛、鼻子、嘴唇、下頜線、原生膚色、真實年齡感、髮際線、個人氣質）與 **髮型 3 變數原則**（跟隨原圖長度體系、跟隨原圖有無瀏海屬性、黑髮轉寫為具層次感的深棕黑／黑茶色而非死黑假髮塊），並強制包含 `natural skin texture, subtle pores, realistic catchlights; no AI fake face, no plastic skin`。
2. **使用者 Prompt 優先、原圖格式與原色預設**：絕不強迫使用者套用預設風格、未指定的底片濾鏡（如 `Kodak Portra 400`、`Classic Chrome`）、畫面比例或 `3×3`／`4×4` 九宮格。預設一律跟隨上傳照片的構圖比例與自然真實色彩，只有在使用者明確要求時才套用濾鏡或拼圖分鏡。
3. **首行 `[Real-Me]: <skill-name>` 啟動標記與雙軌輸出**：每次觸發技能時，回覆第一行必須固定輸出 `[Real-Me]: <skill-name>`（組合呼叫則為 `[Real-Me]: <skill-A> + <skill-B>`），若環境有生圖工具則直接出圖，並同步輸出中英雙語結構化 Prompt。
4. **`real-me-rescue` 嚴禁拿失敗 AI 圖二次修改**：診斷後重新生圖時，必須綁定使用者的**「本人真實原始照片」**重新生成，絕對不能拿已經失真、變成陌生網紅臉的失敗輸出圖去二次修改。
5. **漸進式揭露（Progressive Disclosure）**：`SKILL.md` 只放觸發條件、核心防護規則、主模板與執行步驟；詳細的焦段參數表、底片字典、分鏡表與 `M01–M12` 檢查矩陣請放進 `references/*.md`，避免塞爆 AI 的 Context Window。
6. **測試不碰使用者的真實技能目錄**：測試 `install/install.sh` 時，務必使用 `--target "$TMP_DIR"` 指向暫存資料夾，不要直接覆蓋 `~/.gemini/skills`、`~/.claude/skills`、`~/.codex/skills` 或 `~/.agents/skills`。
7. **不提交私人資訊**：文件、詞庫與腳本裡都不能有私人照片、本機絕對路徑（如 `/home/...`）或 API 金鑰。

## 雙語 Skill 對照與多語系文件同步

- **AI 讀英文、人讀中文**：各 Agent 的技能載入器只會讀取精確檔名 `SKILL.md` 與其引用的英文版 `references/*.md`（且 `install/install.sh` 在安裝時會自動刪除目標資料夾內的 `*.zh-TW.md`）。
- **同步更新義務**：只要修改了任何一個 Skill 的規則或模板，**必須同時更新英文版 `.md`、繁中對照版 `.zh-TW.md` 以及 [install/INSTALL.md](install/INSTALL.md) 中的濃縮記憶規則**。
- **五語 README 同步**：只要改動到使用者可見的功能說明或安裝指令，請同步更新 [README.md](README.md)、[README.zh-TW.md](README.zh-TW.md)、[README.zh-CN.md](README.zh-CN.md)、[README.ja.md](README.ja.md) 與 [README.ko.md](README.ko.md)。如果不熟悉日文或韓文，可以先填英文並在 PR 中註明。

## Commit 訊息與分項提交規範

請依獨立功能或模組進行**分項提交（Atomic Commits）**，不要把無關的改動打包成單一 Commit。Commit 訊息與 PR 標題請使用英文並遵循 `<emoji> <type>: <description>` 格式：

```text
✨ feat: add real-me-retouch skill for natural in-place photo enhancement
🐛 fix: prevent unrequested film filter in default portrait template
📝 docs: update 12-module diagnostic checklist in real-me-rescue
♻️ refactor: simplify target directory detection in install.sh
🔧 chore: update gitignore rules
```

| Emoji | Type | 用途 |
|---|---|---|
| ✨ | `feat` | 新增技能、模組或攝影配方 |
| ⬆️ | `upd` | 版本或相依項目升級 |
| 🐛 | `fix` | 修正 Prompt 漏洞、腳本錯誤或失真問題 |
| 📝 | `docs` | 文件與多語系 README 更新 |
| 🎨 | `style` | 排版與格式微調 |
| ♻️ | `refactor` | 重構技能結構或腳本（核心行為不變） |
| 🔥 | `rm` | 移除過時檔案或冗餘詞條 |
| ✅ | `test` | 測試與驗證腳本相關 |
| 🔧 | `chore` | 其他維護雜事 |

## 送 PR 之前

- [ ] 一個 PR 專注做好一件事，Commit 訊息符合 `<emoji> <type>: <description>` 格式
- [ ] 所有 `skills/*/SKILL.md` 的 YAML Frontmatter 格式正確（`name` 與資料夾同名，`description` 含中英文觸發詞）
- [ ] 技能邏輯變更已同步至 `SKILL.md`、`SKILL.zh-TW.md`、`references/*.md`、`references/*.zh-TW.md` 與 `install/INSTALL.md`
- [ ] 使用者可見變更已同步至五語 README（`README.md`、`zh-TW`、`zh-CN`、`ja`、`ko`）
- [ ] `bash -n install/install.sh` 語法檢查通過且無錯誤
- [ ] 暫存目錄安裝測試（`bash install/install.sh --target "$TMP_DIR"`）確認 5 個 Skills 皆正常複製且已自動濾除 `*.zh-TW.md`
