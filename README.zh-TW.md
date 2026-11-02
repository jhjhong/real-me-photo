# 留覓（Real-Me Photo）

[English](README.md) · **繁體中文** · [简体中文](README.zh-CN.md) · [日本語](README.ja.md) · [한국어](README.ko.md)

[![GitHub stars](https://img.shields.io/github/stars/jhjhong/real-me-photo?style=flat&logo=github&label=Stars)](https://github.com/jhjhong/real-me-photo/stargazers) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) [![Agent Skills: 5](https://img.shields.io/badge/Skills-5-ff6fa8)](skills/) [![Modules: 12+9](https://img.shields.io/badge/Modules-12%2B9-ff8a65)](skills/real-me-portrait/references/photography-9-modules.md) [![Agents: Antigravity | Claude | Codex | ChatGPT](https://img.shields.io/badge/Agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20ChatGPT-0078D6)](#安裝) [![Zero CLI: Paste Prompt](https://img.shields.io/badge/Install-Paste%20Prompt-2e7d32)](#安裝)

> **「留」住真實面貌，「覓」得理想光影——AI 修圖與寫真不再變網紅假臉，留住最真實的自己。**

**留覓（Real-Me Photo）**取自英文 `Real-Me` 的中文諧音，寓意在 AI 影像時代裡**「留住真我、尋覓光影」**。這是一套專為 AI Agent 打造的真實感人像修圖與寫真企劃 Skills：原圖自然美化、身分參考意象寫真、自拍結合趣味提示詞二創、雙人情侶互動精控，用日常自然語言就能直接呼叫或自由混搭。

- **拒絕陌生網紅臉**：內建 10 點五官氣質錨點＋髮型 3 變數原則（長度、有無瀏海、拒絕死黑髮色），守住本人辨識度
- **五大模組化 Skills**：依場景細分為原圖修圖、意象寫真、創意混搭、情侶合照、失真修復，自然語言直接溝通與組合
- **雙軌自動適配輸出**：回覆首行固定顯示 `[Real-Me]: <skill>` 確認技能生效；環境有生圖工具時直接出圖並附上 Prompt，純對話環境自動輸出中英雙語結構化提示詞（適用 GPT Image 2、Nano Banana、Midjourney、Flux）
- **開源（MIT）、零指令安裝**：把一段話貼給 AI 就能自動裝好，支援 Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw 與 ChatGPT

⚡ 安裝：**[貼上 Prompt 自動安裝](#安裝)**　🧩 技能列表：[五大 Skills](#功能)　📖 自動安裝規範：[install/INSTALL.md](install/INSTALL.md)

## 功能

- **原圖修圖（[`real-me-retouch`](skills/real-me-retouch/SKILL.md)）**：鎖定原圖構圖、背景、服裝與姿勢；修飾臨時瑕疵、頂光暗沉與雜亂油光，保留自然皮膚紋理、細微毛孔、真實眼神光與髮絲蓬鬆光澤，預設維持原圖真實色彩（除非使用者於 Prompt 明確指定，否則不套用額外濾鏡；見 [retouch-presets.md](skills/real-me-retouch/references/retouch-presets.md)）
- **意象寫真（[`real-me-portrait`](skills/real-me-portrait/SKILL.md)）**：預設隔離原圖背景與衣服，將上傳照片作為身分參考；依附使用者指定的寫真方向，並內建 9 模組自然攝影參數與可選風格配方（見 [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **創意混搭（[`real-me-remix`](skills/real-me-remix/SKILL.md)）**：上傳自拍或個人照作為身分參考，嚴格鎖定本人真實五官特徵；**不預先限制統一風格**——只要不打破本人辨識度底線，其餘場景、構圖、特殊視角比例、原圖穿搭去留與創意設定，皆 **100% 依附使用者自行添加的個人風格 Prompt**（見 [creative-props-and-vibes.md](skills/real-me-remix/references/creative-props-and-vibes.md)）
- **雙人情侶（[`real-me-couple`](skills/real-me-couple/SKILL.md)）**：鎖定雙人真實長相不漂移；精確定義**主動方與回應方、非對稱眼神流向、左右／前後站位、左手／右手歸屬與接觸點**（托臉、背後環抱、肩後探頭、貼臉特寫），並強制**成年人頭身與肩寬比例約束**，防止手臂穿模或臉部融合（見 [duo-spatial-and-gaze.md](skills/real-me-couple/references/duo-spatial-and-gaze.md)）
- **失真修復（[`real-me-rescue`](skills/real-me-rescue/SKILL.md)）**：當 AI 生圖出現「不像本人、殘留原圖雜亂背景、皮膚像塑膠娃娃、九宮格姿勢複讀」時，依 12 模組翻車檢查表自動診斷病因並提供重構後的修復 Prompt，若環境具備生圖工具則直接綁定「本人原始照片」重新出圖（嚴禁拿已失真的失敗圖二次修改；見 [diagnostic-checklist.md](skills/real-me-rescue/references/diagnostic-checklist.md)）
- **髮型 3 變數控制**：拒絕硬套統一模板；自動跟隨原圖的 **(1) 頭髮長度體系**（短／中長／長髮）、**(2) 有無瀏海屬性**（無瀏海絕不強加厚瀏海）、**(3) 髮色寫真化**（原圖黑髮自動轉為深棕黑、黑茶色或柔和深咖色，避免純黑死黑吃掉層次）
- **9 模組攝影方案**：將空泛審美詞轉譯為具體拍攝執行單——圖像用途、主體氣質、鏡頭焦段（`24mm–135mm`）、構圖機位、景深（`f/1.4–f/4`）、光線方向與質地、單一底片色調錨點（`Kodak Portra 400`、`Classic Chrome`、`CineStill 800T`、`Ilford HP5`）、真實感細節落點與負面限制項（見 [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **九宮格與相冊分鏡表**：支援單張連拍選片、**3×3 九宮格拼貼寫真**與 **4×4 舊 iPhone 隨手拍旅行相冊**；內建分鏡結構與動態瞬間抓拍規則，禁止 AI 重複同一種 45° 角與假笑（見 [grid-and-storyboard.md](skills/real-me-portrait/references/grid-and-storyboard.md)）

## 安裝

- **直接貼上 Prompt 讓 AI 自動安裝（推薦，零指令）**：複製下面這段話貼給你的 AI（Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw、ChatGPT 等），AI 就會自動完成全域安裝或寫入記憶：
  ```text
  請讀取並依照 https://raw.githubusercontent.com/jhjhong/real-me-photo/main/install/INSTALL.md 的步驟，幫我將 real-me-photo 全域安裝到我的環境中。
  ```
- **完整自包含安裝 Prompt（不需網頁讀取權限）**：
  ```text
  請幫我自動安裝 real-me-photo（https://github.com/jhjhong/real-me-photo.git）：請 clone 到暫存目錄並執行 `bash install/install.sh --global`，確認 real-me-retouch、real-me-portrait、real-me-remix、real-me-couple、real-me-rescue 五個 Skills 安裝完成後刪除暫存目錄，並向我回報自然語言呼叫方式。
  ```
- **終端機一鍵腳本安裝**：執行 [install/install.sh](install/install.sh)，自動偵測 `~/.gemini/skills`、`~/.claude/skills`、`~/.codex/skills`、`~/.cursor/skills`：
  ```bash
  git clone https://github.com/jhjhong/real-me-photo.git /tmp/real-me-photo && bash /tmp/real-me-photo/install/install.sh --global && rm -rf /tmp/real-me-photo
  ```
  （只裝在目前專案用 `--workspace`；只裝特定技能用 `--only real-me-retouch,real-me-portrait`）
- **`skills` CLI 安裝**：`npx skills add jhjhong/real-me-photo`

## 使用

- **原圖修圖**：上傳照片說「*幫我修這張自拍，保留原背景跟衣服，修掉頂光暗沉與油光、保留真實毛孔與原生色彩，不要像網紅假臉*」
- **意象寫真**：上傳照片說「*用這張當身分參考，幫我拍一張 85mm 柔和窗光的創業家形象照／做一組日系清透 3×3 九宮格寫真*」
- **創意混搭**：上傳自拍並搭配你自己的任何風格 Prompt 或趣味指令（例如直接貼上你收集到的構圖／場景提示詞，或說「*保留我的長相，幫我加上⋯⋯*」），在完全依附你指定風格的同時維持本人真實人像不失真
- **雙人情侶**：上傳兩人照片說「*這是我們兩個人的照片，幫我們拍一組韓系雜誌情侶棚拍／4×4 海邊旅行舊 iPhone 相冊*」
- **組合呼叫**：直接把需求疊加，例如「*用我們兩個人的自拍保留真實長相（`real-me-couple`），旁邊加上金城武在霓虹雨夜一起在街邊吃拉麵的抓拍照（`real-me-remix`）*」
- **失真修復**：貼上跑偏的 AI 圖或提示詞說「*這張生出來不像我、皮膚太假了，幫我找出問題並重改提示詞*」

## 開發者

跨平台掛載設定、目錄結構與英文技術說明請看[英文版 README](README.md#project-layout)。AI Agent 自動安裝流程定義於 [install/INSTALL.md](install/INSTALL.md)。參與開發與送 PR 前請先閱讀 [CONTRIBUTING.zh-TW.md](CONTRIBUTING.zh-TW.md)（[English](CONTRIBUTING.md)）與 [AGENTS.md](AGENTS.md)。

## 授權

[MIT](LICENSE)。所有 `SKILL.md` 指令、參考詞庫與安裝腳本皆以 MIT 開源釋出。
