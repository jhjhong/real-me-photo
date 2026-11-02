# 留觅（Real-Me Photo）

[English](README.md) · [繁體中文](README.zh-TW.md) · **简体中文** · [日本語](README.ja.md) · [한국어](README.ko.md)

[![GitHub stars](https://img.shields.io/github/stars/jhjhong/real-me-photo?style=flat&logo=github&label=Stars)](https://github.com/jhjhong/real-me-photo/stargazers) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) [![Agent Skills: 5](https://img.shields.io/badge/Skills-5-ff6fa8)](skills/) [![Modules: 12+9](https://img.shields.io/badge/Modules-12%2B9-ff8a65)](skills/real-me-portrait/references/photography-9-modules.md) [![Agents: Antigravity | Claude | Codex | ChatGPT](https://img.shields.io/badge/Agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20ChatGPT-0078D6)](#安装) [![Zero CLI: Paste Prompt](https://img.shields.io/badge/Install-Paste%20Prompt-2e7d32)](#安装)

> **“留”住真实面貌，“觅”得理想光影——AI 修图与写真不再变网红假脸，留住最真实的自己。**

**留觅（Real-Me Photo）**取自英文 `Real-Me` 的中文谐音，寓意在 AI 影像时代里**“留住真我、寻觅光影”**。这是一套专为 AI Agent 打造的真实感人像修图与写真企划 Skills：原图自然美化、身份参考意象写真、自拍结合趣味提示词二创、双人情侣互动精控，用日常自然语言就能直接调用或自由混搭。

- **拒绝陌生网红脸**：内建 10 点五官气质锚点＋发型 3 变量原则（长度、有无刘海、拒绝死黑发色），守住本人辨识度
- **五大模块化 Skills**：按场景细分为原图修图、意象写真、创意混搭、情侣合照、失真修复，自然语言直接沟通与组合
- **双轨自动适配输出**：回复首行固定显示 `[Real-Me]: <skill>` 确认技能生效；环境有生图工具时直接出图并附上 Prompt，纯对话环境自动输出中英双语结构化提示词（适用 GPT Image 2、Nano Banana、Midjourney、Flux）
- **开源（MIT）、零命令安装**：把一段话发给 AI 就能自动装好，支持 Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw 与 ChatGPT

⚡ 安装：**[粘贴 Prompt 自动安装](#安装)**　🧩 技能列表：[五大 Skills](#功能)　📖 自动安装规范：[install/INSTALL.md](install/INSTALL.md)

## 功能

- **原图修图（[`real-me-retouch`](skills/real-me-retouch/SKILL.md)）**：锁定原图构图、背景、服装与姿势；修饰临时瑕疵、顶光暗沉与杂乱油光，保留自然皮肤纹理、细微毛孔、真实眼神光与发丝蓬松光泽，默认维持原图真实色彩（除非用户在 Prompt 明确指定，否则不套用额外滤镜；见 [retouch-presets.md](skills/real-me-retouch/references/retouch-presets.md)）
- **意象写真（[`real-me-portrait`](skills/real-me-portrait/SKILL.md)）**：默认隔离原图背景与衣服，将上传照片作为身份参考；依附用户指定的写真方向，并内建 9 模块自然摄影参数与可选风格配方（见 [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **创意混搭（[`real-me-remix`](skills/real-me-remix/SKILL.md)）**：上传自拍或个人照作为身份参考，严格锁定本人真实五官特征；**不预先限制统一风格**——只要不打破本人辨识度底线，其余场景、构图、特殊视角比例、原图穿搭去留与创意设定，均 **100% 依附用户自行添加的个人风格 Prompt**（见 [creative-props-and-vibes.md](skills/real-me-remix/references/creative-props-and-vibes.md)）
- **双人情侣（[`real-me-couple`](skills/real-me-couple/SKILL.md)）**：锁定双人真实长相不漂移；精确定义**主动方与回应方、非对称眼神流向、左右／前后站位、左手／右手归属与接触点**（托脸、背后环抱、肩后探头、贴脸特写），并强制**成年人头身与肩宽比例约束**，防止手臂穿模或脸部融合（见 [duo-spatial-and-gaze.md](skills/real-me-couple/references/duo-spatial-and-gaze.md)）
- **失真修复（[`real-me-rescue`](skills/real-me-rescue/SKILL.md)）**：当 AI 生图出现“不像本人、残留原图杂乱背景、皮肤像塑料娃娃、九宫格姿势复读”时，依 12 模块翻车检查表自动诊断病因并提供重构后的修复 Prompt，若环境具备生图工具则直接绑定“本人原始照片”重新出图（严禁拿已失真的失败图二次修改；见 [diagnostic-checklist.md](skills/real-me-rescue/references/diagnostic-checklist.md)）
- **发型 3 变量控制**：拒绝硬套统一模板；自动跟随原图的 **(1) 头发长度体系**（短／中长／长发）、**(2) 有无刘海属性**（无刘海绝不强加厚刘海）、**(3) 发色写真化**（原图黑发自动转为深棕黑、黑茶色或柔和深咖色，避免纯黑死黑吃掉层次）
- **9 模块摄影方案**：将空泛审美词转译为具体拍摄执行单——图像用途、主体气质、镜头焦段（`24mm–135mm`）、构图机位、景深（`f/1.4–f/4`）、光线方向与质地、单一胶片色调锚点（`Kodak Portra 400`、`Classic Chrome`、`CineStill 800T`、`Ilford HP5`）、真实感细节落点与负面限制项（见 [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **九宫格与相册分镜表**：支持单张连拍选片、**3×3 九宫格拼贴写真**与 **4×4 旧 iPhone 随手拍旅行相册**；内建分镜结构与动态瞬间抓拍规则，禁止 AI 重复同一种 45° 角与假笑（见 [grid-and-storyboard.md](skills/real-me-portrait/references/grid-and-storyboard.md)）

## 安装

- **直接粘贴 Prompt 让 AI 自动安装（推荐，零命令）**：复制下面这段话发给你的 AI（ChatGPT、Claude Code、Codex、Antigravity、Cursor 等），AI 就会自动完成全局安装或写入记忆：
  ```text
  请读取并按照 https://raw.githubusercontent.com/jhjhong/real-me-photo/main/install/INSTALL.md 的步骤，帮我将 real-me-photo 全局安装到我的环境中。
  ```
- **完整自包含安装 Prompt（无需网页读取权限）**：
  ```text
  请帮我自动安装 real-me-photo（https://github.com/jhjhong/real-me-photo.git）：请 clone 到临时目录并执行 `bash install/install.sh --global`，确认 real-me-retouch、real-me-portrait、real-me-remix、real-me-couple、real-me-rescue 五个 Skills 安装完成后删除临时目录，并向我汇报自然语言调用方式。
  ```
- **终端一键脚本安装**：执行 [install/install.sh](install/install.sh)，自动检测 `~/.gemini/skills`、`~/.claude/skills`、`~/.codex/skills`、`~/.cursor/skills`：
  ```bash
  git clone https://github.com/jhjhong/real-me-photo.git /tmp/real-me-photo && bash /tmp/real-me-photo/install/install.sh --global && rm -rf /tmp/real-me-photo
  ```
  （只装在当前项目用 `--workspace`；只装特定技能用 `--only real-me-retouch,real-me-portrait`）
- **`skills` CLI 安装**：`npx skills add jhjhong/real-me-photo`

## 使用

- **原图修图**：上传照片说“*帮我修这张自拍，保留原背景跟衣服，修掉顶光暗沉与油光、保留真实毛孔与原生色彩，不要像网红假脸*”
- **意象写真**：上传照片说“*用这张当身份参考，帮我拍一张 85mm 柔和窗光的创业者形象照／做一组日系清透 3×3 九宫格写真*”
- **创意混搭**：上传自拍并搭配你自己的任何风格 Prompt 或趣味指令（例如直接粘贴你收集到的构图／场景提示词，或说“*保留我的长相，帮我加上⋯⋯*”），在完全依附你指定风格的同时维持本人真实人像不失真
- **双人情侣**：上传两人照片说“*这是我们两个人的照片，帮我们拍一组韩系杂志情侣棚拍／4×4 海边旅行旧 iPhone 相册*”
- **组合调用**：直接把需求叠加，例如“*用我们两个人的自拍保留真实长相（`real-me-couple`），旁边加上金城武在霓虹雨夜一起在街边吃拉面的抓拍照（`real-me-remix`）*”
- **失真修复**：贴上跑偏的 AI 图或提示词说“*这张生出来不像我、皮肤太假了，帮我找出问题并重改提示词*”

## 开发者

跨平台挂载配置、目录结构与英文技术说明请看[英文版 README](README.md#project-layout)。AI Agent 自动安装流程定义于 [install/INSTALL.md](install/INSTALL.md)。参与开发与提交 PR 前请先阅读 [CONTRIBUTING.zh-TW.md](CONTRIBUTING.zh-TW.md)（[English](CONTRIBUTING.md)）与 [AGENTS.md](AGENTS.md)。

## 授权

[MIT](LICENSE)。所有 `SKILL.md` 指令、参考词库与安装脚本均以 MIT 开源释出。
