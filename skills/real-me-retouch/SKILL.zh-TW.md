---
name: real-me-retouch
description: >-
  當使用者希望對現有照片進行「原圖修圖、自然美化、8 級真實膚質精修或光影修復」，同時保留原圖的背景、服裝、姿勢、構圖與本人真實五官時單獨使用此技能；或者當使用者在其他寫真／創意提示詞中（無論有或沒有特別提到修圖）需要強化本人真實膚質與光影質感時，亦可改用或搭配此技能（與 real-me-portrait、real-me-remix、real-me-couple 結合使用）。
---

# Real-Me Retouch（原圖真實感修圖與自然美化）

本技能專門將使用者上傳的個人照片進行「攝影師級別的原圖精修」，**在不把本人變成陌生網紅臉、也不改變原始場景構圖的前提下**完成質感升級。它能徹底解決一般 AI 修圖常見的三大問題：過度磨皮成塑膠肌、五官被歐美化或網紅化、以及 AI 擅自換掉原本的背景與衣服。

## 觸發時機（When to Activate）

當使用者的自然語言需求屬於 **方向 1（原圖修圖 / 原圖美化版）** 時自動啟動：
- 想針對現有自拍照或生活照修飾膚質或改善光影。
- 修正室內頂光造成的眼下黑影、逆光暗沉、雜亂油光，但保留原始拍攝場景。
- **預設保留原圖真實自然的色彩與白平衡**——不特別對原圖套用非使用者指定的濾鏡，除非使用者在 Prompt 中明確指定特定色調或質感。
- 清理背景微小雜物或凌亂碎髮，同時保持原照片的真實感。

> **跨技能路由與搭配指引（Cross-Skill Routing & Combination）**：
> - 若使用者想**拋棄原圖背景與衣服**，拍一組全新概念寫真或形象照 -> 改用或搭配 `real-me-portrait`。
> - 若使用者想以自拍為臉部參考，**加上各種自訂提示詞、奇幻場景或特殊道具** -> 改用或搭配 `real-me-remix`。
> - 若原圖是**雙人／情侶合照**需要精修互動與比例 -> 結合 `real-me-couple` 一起使用。
> - 無論使用者在其他提示詞內**有或沒有**提到對個人原圖修圖，皆可隨時調用本技能的「8 級真實膚質精修表」與「光影拯救模組」進行搭配。

---

## 執行步驟（Step-by-Step Workflow）

### 步驟 1：分析原圖並同時鎖定「人物身分」與「原始場景」

在生圖或撰寫提示詞前，先觀察使用者上傳的照片並鎖定：
1. **原始場景與構圖鎖定**：目前的景別（特寫、半身、全身）、拍攝機位、背景環境、光線方向、人物姿勢與服裝。
2. **10 點真實身分錨點**：
   - 臉型、五官比例
   - 眉眼結構、眼型、鼻型、唇形、下頜線
   - 膚色、年齡感、髮際線、整體氣質
3. **髮型 3 變數保留原則**：
   - **長度**：維持原本的長度體系（短髮／中長髮／長髮），僅優化髮根蓬鬆度、層次感與自然弧度。
   - **瀏海**：原圖有瀏海則優化為輕盈空氣／碎瀏海；原圖無瀏海則絕不強行加厚瀏海（僅修飾臉側自然微碎髮）。
   - **髮色**：若原圖為黑髮，處理為具層次與通透感的「深棕黑／黑茶色」，避免純黑死黑吃掉髮絲細節。

### 步驟 2：優先依附使用者修圖指令並按需選用輔助模組

永遠優先執行使用者指定的修圖或光線修復方向，**絕對不要主動對原圖套用使用者未指定的濾鏡、底片色調或額外風格**。僅在需要將使用者的需求轉化為具體光學細節時，參考 [retouch-presets.md](./references/retouch-presets.md)：
- **真實膚質（8 級反假臉膚質精修表）**：依據原圖場景或使用者需求，從 [retouch-presets.md](./references/retouch-presets.md) 匹配最適合的膚質等級（`1. 紀實原生肌`、`2. 雜誌通透肌`、`3. 清透奶油肌`、`4. 陽光海風隨手拍肌`、`5. 窗光次表面透光肌`、`6. 運動活力微汗肌`、`7. 閃光燈／夜間冷調實拍肌`、`8. 晚宴燭光絲緞肌`），嚴格保留 `natural skin texture, subtle pores, realistic highlight roll-off`。
- **預設以原圖版式與格式為主（不限定拼貼或比例）**：預設遵循使用者上傳照片的版式、格式與長寬比例，不擅自更改為拼貼或強行改變比例，除非使用者自行添加的 Prompt 有明確指定。
- **光影重塑**：柔化生硬的頂光或閃光燈陰影，補充柔和面光，恢復清澈的 `realistic catchlights in the eyes`（真實眼神光）。
- **髮絲與衣物質感**：增加顱頂蓬鬆度、自然微碎髮（`natural flyaway hairs`）與真實布料紋理。
- **原圖色彩保真（預設不加濾鏡）**：預設維持原圖真實自然的色彩與白平衡；**僅在使用者於 Prompt 中明確指定要套用某種色調或濾鏡時**，才加入對應的單一色調描述。

### 步驟 3：組裝原圖修圖提示詞（中英雙語模板）

#### 中文提示詞模板（適合 GPT Image 2 / 中文修圖與生圖模型）
```markdown
請對上傳的照片進行「原圖真實感修圖與質感提升」。

【1. 原圖場景與構圖鎖定】
請嚴格保留原照片中的人物姿勢、服裝、背景環境、拍攝機位與原始構圖，不要替換背景或改變人物動作。

【2. 本人真實身分錨點】
請嚴格保留人物真實身分特徵，包括臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、下頜線、膚色、年齡感、髮際線與整體氣質。最終結果必須清楚看起來是原圖中的同一個本人。

【3. 髮型微調規則（不改變基礎結構）】
- 保持原圖的頭髮長度體系（{短髮/中長髮/長髮}）與{有瀏海/無瀏海}屬性，僅優化髮根蓬鬆度、髮絲光澤感與臉側自然微碎髮。
- 髮色保持自然（若為黑髮請處理為具層次感與通透感的深棕黑或黑茶色，避免純黑死黑吃掉細節）。

【4. 膚質、光影與色彩保真】
- 膚質：修飾局部臨時瑕疵、疲態與雜亂油光，但必須保留自然皮膚紋理、細微毛孔與真實高光過渡（natural skin texture, subtle pores）。
- 眼神與光影：{依使用者需求填入光影優化，例如：柔化臉部生硬陰影，補充柔和自然面光，保留清澈真實的眼神光}。
- 色彩與色調：{預設：保持原圖自然真實的色彩與白平衡，不要套用任何非指定的濾鏡；僅在使用者明確指定特定色調時才依指令填入}。

【5. 負面約束（防失真與防網紅化）】
不要把人物變成陌生人，不要歐美化，不要網紅臉化，不要過度磨皮美顏，不要塑膠皮膚（no plastic skin），不要擅自套用未指定的濾鏡色偏，不要生成 AI 假臉，不要改變五官位置，不要過度銳化或添加虛假背景模糊。
```

#### 英文提示詞模板（適合 Flux / Midjourney / Nano Banana）
```markdown
Perform an authentic, photographer-grade retouch and enhancement on the uploaded reference photo while strictly preserving the original composition, pose, outfit, and background environment.

[Identity & Hair Lock]
Strictly preserve the subject's exact facial identity: face shape, facial proportions, brow-and-eye structure, nose bridge, lip shape, jawline, skin tone, perceived age, hairline, and authentic aura. Keep the original {short/medium/long} hair length and {bangs/no-bangs} structure, refining only root volume, natural flyaway hairs, and dimensional {deep brown-black / natural} hair sheen (avoid flat dead-black hair).

[Retouching, Lighting & Color Fidelity]
Clean up temporary blemishes and uneven harsh shadows while maintaining natural skin texture, subtle pores, and smooth highlight roll-off. Enhance lighting with {user-requested lighting fix, e.g., soft diffused fill light and realistic catchlights in the eyes}. {Default: Preserve the original photo's true-to-life color balance without applying unrequested filters; OR apply the user's explicitly requested color grade} with realistic fabric texture and natural optical depth.

[Negative Constraints]
No AI fake face, no plastic skin, no over-retouched beauty-filter look, no unrequested color filters, no westernized facial features, no influencer face swap, no altered background, no distorted hands or unnatural catchlights.
```

### 步驟 4：雙軌執行輸出（Dual-Track Execution）

0. **啟動標記（回覆第一行）**：每次觸發本技能時，回覆的第一行必須固定輸出 `[Real-Me]: real-me-retouch`（若與其他技能組合則輸出 `[Real-Me]: real-me-retouch + <其他技能>`），讓使用者一眼確認技能已生效。
1. **若當前 Agent 環境具備生圖／修圖工具**：
   - 直接帶入上傳照片與組裝好的 Prompt 執行修圖生成。
   - 同時展示生成後的圖片與結構化 Prompt，方便使用者檢視調整了哪些細節。
2. **若環境無生圖工具（或使用者僅索取 Prompt）**：
   - 清楚輸出**中文**與**英文**雙語完整提示詞區塊。
   - 額外提示 2～3 個可快速替換的微調變數（例如將色調從 *Kodak Portra 400* 換成 *Fujifilm Classic Chrome*，或調整膚質精修等級）。
