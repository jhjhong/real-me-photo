# Real-Me Photo（留覓）

[English](README.md) · [繁體中文](README.zh-TW.md) · [简体中文](README.zh-CN.md) · **日本語** · [한국어](README.ko.md)

[![GitHub stars](https://img.shields.io/github/stars/jhjhong/real-me-photo?style=flat&logo=github&label=Stars)](https://github.com/jhjhong/real-me-photo/stargazers) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE) [![Agent Skills: 5](https://img.shields.io/badge/Skills-5-ff6fa8)](skills/) [![Modules: 12+9](https://img.shields.io/badge/Modules-12%2B9-ff8a65)](skills/real-me-portrait/references/photography-9-modules.md) [![Agents: Antigravity | Claude | Codex | ChatGPT](https://img.shields.io/badge/Agents-Antigravity%20%7C%20Claude%20%7C%20Codex%20%7C%20ChatGPT-0078D6)](#インストール) [![Zero CLI: Paste Prompt](https://img.shields.io/badge/Install-Paste%20Prompt-2e7d32)](#インストール)

> **AIレタッチで「量産型の別人顔」になるのを防ぎ、ありのままの自分をすべてのフレームに残す。**

AIエージェント向けに設計された、本人の顔立ちを厳密に保持するリアル志向のポートレートレタッチ＆撮影ディレクションSkillsスイートです。元写真の自然な補正、本人確認用の参照写真を使ったコンセプト撮影、自撮りと自由なプロンプトのクリエイティブ合成、カップル写真の視線・空間演出まで、日常の自然言語で呼び出し・組み合わせが可能です。

- **量産型AI顔を排除**：10項目の顔立ちアンカー＋ヘアスタイル3変数ルール（長さ・前髪の有無・黒髪の立体感）により、本人らしさを徹底キープ
- **5つのモジュール式Skills**：レタッチ・ポートレート・リミックス・カップル・レスキューの5種を自然言語で自動ルーティング＆自由に組み合わせ可能
- **デュアルトラック出力**：回答の1行目に `[Real-Me]: <skill>` を表示して稼働を明示。画像生成ツールがある環境では直接画像を生成しつつ、GPT Image 2、Nano Banana、Midjourney、Flux向けの構造化プロンプトを併記
- **オープンソース（MIT）・コマンド不要インストール**：1行の文章をAIに貼り付けるだけで、Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw、ChatGPTに自動導入

⚡ 導入：**[プロンプトを貼って自動インストール](#インストール)**　🧩 スキル一覧：[5つのSkills](#機能)　📖 自動導入仕様：[install/INSTALL.md](install/INSTALL.md)

## 機能

- **元写真レタッチ（[`real-me-retouch`](skills/real-me-retouch/SKILL.md)）**：元の構図・背景・服装・ポーズを固定したまま、室内頂光による影や一時的な肌荒れ、テカリを自然に補正。肌のキメ・微細な毛穴・瞳のキャッチライト・髪の空気感を残し、デフォルトで元写真の自然な色味を維持します（プロンプトで明示しない限り、勝手なフィルターは適用しません。詳細は [retouch-presets.md](skills/real-me-retouch/references/retouch-presets.md)）
- **コンセプト＆エディトリアル写眞（[`real-me-portrait`](skills/real-me-portrait/SKILL.md)）**：アップロードした写真を「本人の顔立ち参照用」としてのみ使用し、元の背景や服装を分離。希望の撮影コンセプトに従い、9モジュール撮影設計で自然なポートレートを生成します（詳細は [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **クリエイティブリミックス（[`real-me-remix`](skills/real-me-remix/SKILL.md)）**：自撮りや個人写真から本人の顔の特徴を厳密にロック。**画一的なスタイル制限を設けず**、本人の識別性を損なわない限り、シーン・構図・特殊アングル・元の服装の維持や小道具などの設定は **100%ユーザーのカスタムプロンプトに従います**（詳細は [creative-props-and-vibes.md](skills/real-me-remix/references/creative-props-and-vibes.md)）
- **カップル＆ペア撮影ディレクター（[`real-me-couple`](skills/real-me-couple/SKILL.md)）**：2人の本当の顔立ちを崩さずロック。**主導側と応答側の関係性、非対称な視線の流れ、左右・前後の立ち位置、左手・右手の接触ポイント**（顎添え・バックハグ・肩越し・頬寄せ）、さらに**大人の頭身・肩幅バランス**を厳密に制御し、腕の貫通や顔の同質化を防ぎます（詳細は [duo-spatial-and-gaze.md](skills/real-me-couple/references/duo-spatial-and-gaze.md)）
- **別人化診断＆レスキュー（[`real-me-rescue`](skills/real-me-rescue/SKILL.md)）**：「自分に似ていない」「元の散らかった背景が残る」「肌がプラスチック人形みたい」「9分割グリッドで同じポーズばかり繰り返す」といった失敗を、12モジュール診断基準（`M01–M12`）＋オープン診断で特定。改善プロンプトを出力し、必ず「元の本人写真」をベースに再生成します（失敗したAI画像の二次編集は行いません。詳細は [diagnostic-checklist.md](skills/real-me-rescue/references/diagnostic-checklist.md)）
- **ヘアスタイル3変数コントロール**：元の写真と矛盾する髪型テンプレートを押し付けません。**(1) 髪の長さ**（ショート／ミディアム／ロング）、**(2) 前髪の有無**（おでこを出した写真に重い前髪を強制しない）、**(3) 黒髪の立体感**（ベタ塗りの真っ黒な髪を避け、透明感のあるダークブラウンブラックや黒茶色に変換）を自動適用します
- **9モジュールカメラ設計**：抽象的な美辞麗句（*"masterpiece, 8k"* など）を具体的な撮影パラメータに変換——用途、被写体の雰囲気、焦点距離（`24mm–135mm`）、構図とアングル、被写界深度（`f/1.4–f/4`）、光の方向と質、単一フィルムトーン（`Kodak Portra 400`、`Classic Chrome`、`CineStill 800T`、`Ilford HP5`）、リアリズム要素、ネガティブ制約（詳細は [photography-9-modules.md](skills/real-me-portrait/references/photography-9-modules.md)）
- **3×3 9分割グリッド＆4×4 カメラロール**：単発カットの連番セレクト、**3×3 9分割コラージュ写眞**、**4×4 旧型iPhone風旅行スナップアルバム**に対応。45°角の同じ笑顔の繰り返しを禁止する絵コンテ構造を内蔵しています（詳細は [grid-and-storyboard.md](skills/real-me-portrait/references/grid-and-storyboard.md)）

## インストール

- **AIにプロンプトを貼って自動インストール（推奨・コマンド不要）**：以下の1文をAI（Antigravity、Claude Code、Codex、Cursor、Windsurf、OpenClaw、ChatGPTなど）に貼り付けるだけで自動導入されます：
  ```text
  https://raw.githubusercontent.com/jhjhong/real-me-photo/main/install/INSTALL.md の手順を読み取り、real-me-photo を私の環境にグローバルインストールしてください。
  ```
- **自己完結型インストールプロンプト（Web取得権限不要）**：
  ```text
  real-me-photo（https://github.com/jhjhong/real-me-photo.git）をインストールしてください：一時フォルダに clone して `bash install/install.sh --global` を実行し、real-me-retouch、real-me-portrait、real-me-remix、real-me-couple、real-me-rescue の5つのSkillsが導入されたことを確認後、一時フォルダを削除して自然言語での使い方を教えてください。
  ```
- **ワンライン・シェルインストーラー**：[install/install.sh](install/install.sh) を実行すると、`~/.gemini/skills`、`~/.claude/skills`、`~/.codex/skills`、`~/.cursor/skills` を自動検出します：
  ```bash
  git clone https://github.com/jhjhong/real-me-photo.git /tmp/real-me-photo && bash /tmp/real-me-photo/install/install.sh --global && rm -rf /tmp/real-me-photo
  ```
  （現在のプロジェクトのみは `--workspace`、特定スキルのみは `--only real-me-retouch,real-me-portrait`）
- **`skills` CLI での導入**：`npx skills add jhjhong/real-me-photo`

## 使い方

- **元写真レタッチ**：写真をアップロードして「*この自撮りを自然にレタッチして。背景と服と元の色味は変えずに、上からの強い影とテカリを抑えて、毛穴の質感は残して*」
- **コンセプト写眞**：写真をアップロードして「*この写真を顔立ちの参考にして、85mmの柔らかい窓光で起業家プロフィール写真を撮って／透明感のある3×3の9分割ポートレートを作って*」
- **クリエイティブリミックス**：自撮りと一緒に自分の好きなスタイルプロンプトやアイデアを送信——本人の顔立ちを維持したまま、指定した構図や世界観を忠実に再現します
- **カップル写眞**：2人の写真をアップロードして「*私たち2人の写真を使って、韓国マガジン風のカップルスタジオ写真／4×4の海辺旅行iPhoneスナップアルバムを作って*」
- **スキルの組み合わせ**：複数の意図を自然に重ねることも可能です（例：「*2人の自撮りで本当の顔立ちを固定しつつ（`real-me-couple`）、雨のネオン街の屋台で金城武と一緒にラーメンを食べているスナップ写真にして（`real-me-remix`）*」）
- **別人化レスキュー**：崩れたAI画像やプロンプトを貼って「*これだと自分に似ていないし肌が作り物っぽいから、原因を診断してプロンプトを書き直して*」

## 開発者向け

ディレクトリ構成や技術仕様の詳細は[英語版 README](README.md#project-layout) を参照してください。AIエージェントの自動インストール仕様は [install/INSTALL.md](install/INSTALL.md) に定義されています。Issue や PR を歓迎します。

## ライセンス

[MIT](LICENSE)。すべての `SKILL.md` 仕様、リファレンス辞書、インストールスクリプトは MIT ライセンスで公開されています。
