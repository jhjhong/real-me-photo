# Real-Me Photo（留覓）

[English](README.md) · [繁體中文](README.zh-TW.md) · [简体中文](README.zh-CN.md) · [日本語](README.ja.md) · **한국어**

[![GitHub stars](https://img.shields.io/github/stars/jhjhong/real-me-photo?style=flat&logo=github&label=Stars)](https://github.com/jhjhong/real-me-photo/stargazers) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) [![Agent Skills: 5](https://img.shields.io/badge/Skills-5-ff6fa8)](skills/) [![Modules: 12+9](https://img.shields.io/badge/Modules-12%2B9-ff8a65)](skills/real-me-portrait/references/photography-9-modules.md) [![Agents: Antigravity | Claude | Codex | ChatGPT](https://img.shields.io/badge/Agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20ChatGPT-0078D6)](#설치) [![Zero CLI: Paste Prompt](https://img.shields.io/badge/Install-Paste%20Prompt-2e7d32)](#설치)

> **AI 보정으로 똑같은 인플루언서 가짜 얼굴이 되는 것을 멈추고, 모든 프레임에 진짜 나를 남기세요.**

AI 에이전트를 위해 설계된 실제 인물 정체성 고정(Identity-Locked) 사진 보정 및 화보 디렉팅 Skills 스위트입니다. 원본 사진의 자연스러운 보정, 얼굴 참조 기반의 콘셉트 화보, 셀카와 자유 프롬프트를 결합한 크리에이티브 리믹스, 커플 화보의 시선·공간 연출까지 일상적인 자연어로 바로 호출하거나 자유롭게 조합할 수 있습니다.

- **가짜 인플루언서 얼굴 방지**: 10대 이목구비·분위기 앵커 + 헤어스타일 3변수 원칙(머리 길이, 앞머리 유무, 입체감 있는 다크 헤어 톤)으로 본인의 고유한 인상을 철저히 보존
- **5가지 모듈형 Skills**: 원본 보정, 콘셉트 화보, 크리에이티브 리믹스, 커플 스냅, 왜곡 복구로 세분화되어 자연어 대화로 자동 연결 및 조합 가능
- **듀얼 트랙 자동 출력**: 응답 첫 줄에 `[Real-Me]: <skill>`을 표시해 스킬 활성화를 즉시 확인. 이미지 생성 도구가 있는 환경에서는 즉시 이미지를 생성하고, GPT Image 2, Nano Banana, Midjourney, Flux용 구조화 프롬프트를 함께 제공
- **오픈소스(MIT), 무명령어 설치**: 문장 한 줄만 AI에게 붙여넣으면 Antigravity, Claude Code, Codex, Cursor, Windsurf, OpenClaw, ChatGPT에 자동 설치

⚡ 설치: **[프롬프트 붙여넣기로 자동 설치](#설치)**　🧩 스킬 목록: [5대 핵심 Skills](#기능)　📖 자동 설치 명세: [install/INSTALL.md](install/INSTALL.md)

## 기능

- **원본 자연 보정 ([`real-me-retouch`](skills/real-me-retouch/SKILL.md))**: 원본 구도, 배경, 의상, 포즈를 고정한 채 실내 상단 조명으로 인한 어두운 그림자, 일시적인 잡티, 번들거림만 자연스럽게 정돈합니다. 자연스러운 피부 결, 미세한 모공, 생생한 눈빛(catchlights)과 볼륨감 있는 머릿결을 살리며 기본적으로 원본의 실제 색감을 유지합니다(프롬프트에서 별도 지정하지 않는 한 임의의 필터를 씌우지 않음; [retouch-presets.md](skills/real-me-retouch/references/retouch-presets.md) 참조)
- **콘셉트 & 에디토리얼 화보 ([`real-me-portrait`](skills/real-me-portrait/SKILL.md))**: 업로드한 사진을 오직 '본인 얼굴 참조용'으로만 사용하고 원본 배경과 옷은 분리합니다. 사용자가 원하는 화보 방향을 따르며 9모듈 카메라 설계를 통해 자연스러운 인물 사진을 완성합니다([photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md) 참조)
- **크리에이티브 리믹스 ([`real-me-remix`](skills/real-me-remix/SKILL.md))**: 셀카나 개인 사진을 업로드해 본인의 실제 이목구비를 엄격히 고정합니다. **사전에 통일된 스타일을 강제하지 않으며**, 본인의 얼굴 식별성만 유지된다면 배경, 구도, 특수 앵글, 원본 의상 유지 여부 및 소품 설정은 **100% 사용자가 입력한 개인 프롬프트를 따릅니다**([creative-props-and-vibes.md](skills/real-me-remix/references/creative-props-and-vibes.md) 참조)
- **커플 & 듀오 디렉터 ([`real-me-couple`](skills/real-me-couple/SKILL.md))**: 두 사람의 실제 얼굴이 변형되지 않도록 각각 고정합니다. **주도자와 반응자의 호흡, 비대칭 시선 흐름, 좌우·전후 위치 좌표, 왼손·오른손의 정확한 접촉 지점**(턱 감싸기, 백허그, 어깨 너머 빼꼼 보기, 볼 맞대기) 및 **성인 두신·어깨 비율**을 제어하여 팔 겹침 오류나 얼굴 동질화를 방지합니다([duo-spatial-and-gaze.md](skills/real-me-couple/references/duo-spatial-and-gaze.md) 참조)
- **왜곡 진단 & 복구 ([`real-me-rescue`](skills/real-me-rescue/SKILL.md))**: AI 결과물이 "나와 닮지 않음, 원본의 지저분한 배경 잔류, 플라스틱 인형 피부, 9분할 그리드 포즈 반복" 문제를 보일 때 12모듈 진단 기준(`M01–M12`) 및 개방형 점검으로 원인을 찾아내고, 수정된 프롬프트를 제공함과 동시에 반드시 '본인의 원본 사진'을 기반으로 새로 생성합니다(실패한 AI 결과물을 재수정하지 않음; [diagnostic-checklist.md](skills/real-me-rescue/references/diagnostic-checklist.md) 참조)
- **헤어스타일 3변수 제어**: 원본과 충돌하는 고정 헤어 템플릿을 억지로 적용하지 않습니다. 원본의 **(1) 머리 길이 체계**(단발/중단발/장발), **(2) 앞머리 유무 속성**(이마를 드러낸 사진에 무거운 앞머리를 강제하지 않음), **(3) 입체적인 다크 헤어 컬러**(답답한 먹물 블랙 대신 결이 살아있는 딥 브라운 블랙·다크 티 브라운으로 표현)를 자동으로 따릅니다
- **9모듈 카메라 브리프**: 모호한 미사여구(*"masterpiece, 8k, realistic"*) 대신 구체적인 촬영 설계를 적용합니다—촬영 목적, 인물 분위기, 초점 거리(`24mm–135mm`), 프레임 및 앵글, 피사계 심도(`f/1.4–f/4`), 조명 방향과 질감, 단일 필름 색감 앵커(`Kodak Portra 400`, `Classic Chrome`, `CineStill 800T`, `Ilford HP5`), 리얼리즘 디테일 및 네거티브 제약([photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md) 참조)
- **3×3 9분할 그리드 & 4×4 카메라 롤**: 단컷 연속 셀렉트, **3×3 9분할 콜라주 화보**, **4×4 구형 iPhone 감성 여행 사진첩**을 지원하며, 똑같은 45° 각도와 가짜 미소 반복을 금지하는 스토리보드 규칙이 내장되어 있습니다([grid-and-storyboard.md](skills/real-me-portrait/references/grid-and-storyboard.md) 참조)

## 설치

- **AI에게 프롬프트를 붙여넣어 자동 설치 (권장, 무명령어)**: 아래 문장을 복사해 사용 중인 AI(Antigravity, Claude Code, Codex, Cursor, Windsurf, OpenClaw, ChatGPT 등)에 붙여넣으면 자동으로 전역 설치 또는 메모리 등록이 완료됩니다:
  ```text
  https://raw.githubusercontent.com/jhjhong/real-me-photo/main/install/INSTALL.md 의 절차를 읽고 따라 내 환경에 real-me-photo를 전역 설치해 주세요.
  ```
- **독립 실행형 설치 프롬프트 (웹 읽기 권한 불필요)**:
  ```text
  real-me-photo(https://github.com/jhjhong/real-me-photo.git)를 설치해 주세요: 임시 폴더에 clone한 뒤 `bash install/install.sh --global`을 실행하고, real-me-retouch, real-me-portrait, real-me-remix, real-me-couple, real-me-rescue 5개 스킬이 설치된 것을 확인한 후 임시 폴더를 삭제하고 자연어 사용법을 요약해 주세요.
  ```
- **원라인 셸 설치 스크립트**: [install/install.sh](install/install.sh)를 실행하면 `~/.gemini/skills`, `~/.claude/skills`, `~/.codex/skills`, `~/.cursor/skills`를 자동 감지합니다:
  ```bash
  git clone https://github.com/jhjhong/real-me-photo.git /tmp/real-me-photo && bash /tmp/real-me-photo/install/install.sh --global && rm -rf /tmp/real-me-photo
  ```
  (현재 프로젝트에만 설치하려면 `--workspace`, 특정 스킬만 설치하려면 `--only real-me-retouch,real-me-portrait` 사용)
- **`skills` CLI 설치**: `npx skills add jhjhong/real-me-photo`

## 사용법

- **원본 보정**: 사진을 올리고 *"이 셀카 자연스럽게 보정해 줘. 원래 배경이랑 옷, 색감은 그대로 두고 위에서 떨어지는 어두운 그림자랑 유분기만 정리하고 실제 모공 질감은 살려줘"*
- **콘셉트 화보**: 사진을 올리고 *"이 사진을 내 얼굴 참조용으로 써서 85mm 부드러운 창가 자연광 느낌의 창업가 프로필 사진을 찍어줘 / 일본풍 맑은 자연광 3×3 9분할 화보를 만들어줘"*
- **크리에이티브 리믹스**: 셀카와 함께 원하는 커스텀 프롬프트나 스타일 지시문을 입력—본인의 실제 이목구비를 유지하면서 지정한 구도와 연출을 왜곡 없이 그대로 구현합니다
- **커플 화보**: 두 사람의 사진을 올리고 *"우리 둘 사진으로 한국 매거진 감성 커플 스튜디오 화보를 찍어줘 / 4×4 바닷가 여행 구형 아이폰 사진첩을 만들어줘"*
- **스킬 조합 호출**: 여러 요구사항을 자연스럽게 겹쳐서 호출할 수 있습니다. 예: *"우리 둘 셀카로 실제 얼굴을 고정하고(`real-me-couple`), 비 오는 네온사인 밤거리 포장마차에서 금성무와 함께 라멘을 먹는 자연스러운 스냅 사진으로 만들어줘(`real-me-remix`)"*
- **왜곡 복구**: 어색하게 나온 AI 이미지나 프롬프트를 붙여넣고 *"이게 나랑 안 닮게 나왔고 피부가 너무 인위적인데, 원인을 진단해서 프롬프트를 다시 고쳐줘"*

## 개발자 안내

디렉터리 구조 및 영문 기술 명세는 [영문판 README](README.md#project-layout)를 참고하세요. AI 에이전트 자동 설치 절차는 [install/INSTALL.md](install/INSTALL.md)에 정의되어 있습니다. 기여 및 PR 작성 전 [CONTRIBUTING.md](CONTRIBUTING.md)([繁體中文](CONTRIBUTING.zh-TW.md))와 [AGENTS.md](AGENTS.md)를 확인해 주세요.

## 라이선스

[MIT](LICENSE). 모든 `SKILL.md` 명세, 레퍼런스 사전 및 설치 스크립트는 MIT 라이선스로 배포됩니다.
