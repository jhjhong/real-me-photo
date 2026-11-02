---
name: real-me-remix
description: >-
  當使用者上傳個人照片（如自拍照）作為身分參考，並提供自己的自訂 Prompt、個人風格指令或趣味關鍵詞來生成圖像時使用此技能（例如：「用這張自拍加上...」、「上傳照片並搭配我自己的 Prompt 生圖」、「保留我的長相並依照這段提示詞生成」）。
  本技能不預先強加統一風格，只要不打破「嚴格保留本人真實身分特徵」的底線，其餘一切場景、構圖、透視與穿搭皆 100% 依附使用者原本的 Prompt 指令。
---

# Real-Me Remix（真我身分鎖定基底 × 使用者自訂 Prompt 無縫融合引擎）

本技能的核心設計哲學只有一條：**「嚴格鎖定本人真實身分特徵作為不可打破的底線；只要不違背這條底線，其餘所有畫面風格、機位構圖、比例與細節，100% 依附使用者自己下的 Prompt 與個人風格指令。」**

我們**不在 Skill 裡預先定義死板的統一風格模板**，而是將本技能作為**「真我鎖臉護航層（Identity-Preserving Adapter）」**：
- **唯一鎖死不妥協的部分**：照片中本人的臉型骨相、10 點五官比例、膚色、個人氣質與髮型基礎——確保生出來的人一眼看就是本人，絕不變成陌生網紅臉或 AI 塑膠假臉。
- **完全交由使用者 Prompt 決定的部分**：畫面比例、拍攝角度、背景環境、特殊透視比例、人物動作、表情、是否保留原圖衣服配件、或是換上全新造型與道具——完全尊重並保留使用者原始 Prompt 的每一句說明。

## 觸發時機（When to Activate）

當使用者的自然語言需求屬於 **方向 3（上傳個人照片作為身分參考 ＋ 搭配使用者自訂 Prompt 或創意指令）** 時自動啟動：
- 使用者上傳自拍或生活照，並直接貼上一段自己寫的或收集來的完整 Prompt。
- 使用者上傳照片，並口頭附加上自己想要的特殊風格、場景、構圖或趣味設定。
- 使用者希望自由發揮創意，同時要求「人像必須真實不失真、像原圖本人」。

> **跨技能路由指引（Cross-Skill Routing）**：
> - 若使用者沒有要改場景或構圖，只想對原圖修膚質、調光影色調 -> 改用 `real-me-retouch`；此外，無論使用者是否已在其他提示詞內提及對個人原圖修圖，皆可改用或搭配 `real-me-retouch`。
> - 若使用者沒有自備具體 Prompt，希望由 AI 攝影總監從零企劃經典寫真／九宮格 -> 改用或搭配 `real-me-portrait`。
> - 若上傳的是**雙人／情侶照片**並搭配自訂指令 -> 結合 `real-me-couple` 一起使用。

---

## 執行步驟（Step-by-Step Workflow）

### 步驟 1：建立「不可打破的本人身分錨點基底」

觀察使用者上傳的照片，提取唯一不可被覆蓋的本人特徵：
1. **10 點五官骨相錨點**：
   - 臉型、五官比例、眉眼結構、眼型、鼻樑與鼻頭、唇形、下頜線、膚色、年齡感、髮際線、整體氣質。
2. **髮型 3 變數基礎**（除非使用者的 Prompt 明確要求更換髮型或髮色）：
   - 保持原圖的頭髮長度體系（短／中長／長）、有無瀏海屬性，以及自然有層次的髮色（若原圖為黑髮，處理為具光澤與髮絲細節的深棕黑／黑茶色，避免純黑死黑成團）。
3. **防網紅化與真實肌膚底線**：
   - 強制保留：`自然皮膚紋理、細微毛孔（natural skin texture, subtle pores）、真實眼神光（realistic catchlights）；不要把人物變成陌生人、不要歐美化、不要網紅臉、不要過度美顏磨皮、不要塑膠皮膚`。

### 步驟 2：100% 依附並銜接使用者的原始 Prompt 指令

仔細讀取使用者提供的 Prompt 說明，**絕不擅自竄改或套用無關的預設風格**，僅做「相容性銜接」：

1. **依附使用者對「原圖元素去留」的指令**：
   - **若使用者的 Prompt 要求保留原圖服裝、配件或表情**（例如使用者寫了「保留原本五官、膚色、髮型、表情、服裝與配件」）：則明確鎖定原圖中的衣著、領口、配色、配件與神態（若原圖為半身自拍而使用者要求全身入鏡，則指示模型依原圖上衣風格自然向下延展全身穿搭與鞋履），僅替換使用者要求改變的背景與視角。
   - **若使用者的 Prompt 指定了新服裝、新場景或未要求保留原衣服**：則只把上傳照片作為臉部身分參考，徹底拋棄原圖背景與舊衣服，完全照使用者的描述生成新造型。
2. **依附使用者對「版式、長寬比例、構圖、機位與特殊透視」的指令**：
   - **預設以使用者上傳的照片版式及格式為主（不限定拼貼或比例）**：若使用者的 Prompt 未特別指定版式或長寬比，預設維持上傳原圖的版式、格式與長寬比例（不擅自改為拼貼或變動比例）；若使用者在 Prompt 中有明確指定（例如指定 `1:1 正方形` 或特定排版），則嚴格依使用者的指令執行。
   - 完整保留使用者指定的機位角度、人物佔比、留白方式、特殊透視比例與場景細節。
   - **防失真緩衝處理**：當使用者的 Prompt 含有較強烈的風格詞或特殊透視要求時，請參考 [creative-props-and-vibes.md](./references/creative-props-and-vibes.md) 的原則，在保留使用者要求的視覺效果同時，補上**「光學相機透視與真實人類五官結構不變形」**的約束，避免 AI 因為特殊風格詞而把臉畫成卡通或假人。
3. **按需補充（僅在使用者只給簡短詞彙時）**：
   - 若使用者已經給了完整詳細的 Prompt，**保持其原始描述結構不變**。
   - 只有當使用者只給了極簡短的一兩個詞（且希望你幫忙豐富畫面）時，才適度補充光影與材質細節。

### 步驟 3：組裝提示詞（真我身分鎖定 ＋ 使用者原始 Prompt）

將**「本人身分鎖定基底」**與**「使用者的原始 Prompt」**無縫組合：

#### 中文組裝模板
```markdown
請以使用者上傳的照片作為人物身分依據，並嚴格依照以下指定的畫面與風格指令產生影像：

【一、本人真實身分特徵鎖定（核心底線）】
- 五官與骨相：請嚴格保留上傳照片中人物的真實身分特徵，包括臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、下頜線、膚色、年齡感、髮際線與整體氣質（{若已觀察照片，填入具體五官特徵}）。生成結果必須清楚看起來是原圖本人，不要變成陌生人，不要歐美化，不要網紅臉化，不要生成 AI 假臉。
- 原圖特徵去留：{依使用者原始 Prompt 判斷：預設保持本人頭髮長度體系、有無瀏海屬性與自然髮絲層次；若使用者要求保留原圖服裝、配件或表情，則完整鎖定並自然延展；若未要求保留原圖背景或服裝，則不保留原圖背景環境}。

【二、使用者指定風格與畫面指令（完全依附使用者原始 Prompt）】
{原封不動保留並執行使用者輸入的 Prompt 說明，包含畫面比例、鏡頭位置、背景環境、構圖佔比、特殊透視比例、人物動作、表情、服裝配件與光影要求}

【三、真實人像不失真約束】
在完整實現上述使用者指定構圖、透視與風格的前提下，請確保人物臉部維持真實人類骨相結構、自然皮膚肌理與細微毛孔（natural skin texture, subtle pores）、清澈真實眼神光（realistic catchlights）與真實布料/環境光影；避免因特殊視角或風格設定而導致五官扭曲失真、塑膠皮膚（no plastic skin）或卡通假人感。
```

#### 英文組裝模板
```markdown
Use the uploaded photo as the authoritative identity reference and execute the user's custom prompt instructions below:

[1. Unbreakable Facial Identity Lock]
Strictly preserve the subject's authentic facial identity from the uploaded photo: face shape, facial proportions, brow-and-eye structure, eyes, nose, lips, jawline, skin tone, perceived age, hairline, and personal aura ({insert observed traits if photo is provided}). The face must remain 100% recognizable as the real person—no stranger swap, no generic influencer look, no westernized facial drift, no AI fake face.
- Selective Retention: {Keep original hair length tier, bangs attribute, and natural hair texture unless overridden by user; if the user's prompt asks to retain original clothing, accessories, or expression, lock and naturally extend them; discard original background unless requested}.

[2. User-Defined Style, Scene & Composition Instructions]
{Insert and preserve the user's exact prompt instructions: aspect ratio, camera angle, perspective, framing, background, lighting, pose, wardrobe, props, and mood}

[3. Photorealistic Likeness Guardrails]
While fulfilling all of the user's stylistic and compositional instructions above, maintain natural skin texture, subtle pores, realistic catchlights, and believable lighting/fabric textures on the subject so the facial identity never degrades into plastic skin or off-model distortion.
```

### 步驟 4：雙軌執行輸出（Dual-Track Execution）

0. **啟動標記（回覆第一行）**：每次觸發本技能時，回覆的第一行必須固定輸出 `[Real-Me]: real-me-remix`（若與其他技能組合則輸出 `[Real-Me]: real-me-remix + <其他技能>`），讓使用者一眼確認技能已生效。
1. **直接生圖**：若當前環境具備生圖工具，直接帶入上傳照片與融合後的 Prompt 產出圖片。
2. **雙語 Prompt 輸出**：同步提供融合了「真我鎖臉基底＋使用者原始指令」的中英雙語完整提示詞，供使用者直接使用或微調。
