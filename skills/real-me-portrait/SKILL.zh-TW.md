---
name: real-me-portrait
description: >-
  當使用者上傳照片作為「人物身分參考」，並希望生成全新寫真、意象照片、職業形象照、雜誌棚拍、日系生活照或九宮格拼貼寫真時使用此技能（例如：「用這張照片當身分參考拍寫真」、「幫我生成韓系棚拍/職業形象照/日系寫真」、「做一組 3x3 九宮格寫真」）。
  本技能會徹底拋棄原圖的背景、衣服與姿勢，同時嚴格鎖定本人真實五官與氣質。
---

# Real-Me Portrait（身分鎖定意象寫真與攝影企劃總監）

本技能扮演專業的「AI 攝影企劃總監」。當使用者上傳自拍照或生活照並希望生成特定風格的意象寫真時，本技能能系統性解決兩大最常翻車的問題：
1. **誤變成「原圖美化版」**：AI 下意識保留了原圖的咖啡廳背景、黑衣服、桌子或坐姿。
2. **「網紅換臉」與「姿勢複讀機」**：AI 把人物美化成不像本人的陌生網紅臉，或在生成多張／九宮格時每張都重複同樣的 45 度角微笑。

## 觸發時機（When to Activate）

當使用者的自然語言需求屬於 **方向 2（上傳照片作為身分參考 -> 生成希望的意象寫真）** 時自動啟動：
- 以個人照片為臉部參考，生成全新風格寫真（韓系棚拍、創業家／職場形象照、Kodak Portra 膠片生活感、黑白紀實、Classic Chrome 都市風、電影感夜景、黃金時刻逆光等）。
- 製作 **3×3 九宮格拼貼寫真**、**4×4 手機隨手拍旅行相冊**，或**單張連拍選片企劃**。

> **跨技能路由指引（Cross-Skill Routing）**：
> - 若使用者沒有要改場景或構圖，只想對原圖修膚質、調光影色調 -> 改用 `real-me-retouch`；此外，無論使用者是否已在其他提示詞內提及對個人原圖修圖，皆可改用或搭配 `real-me-retouch`。
> - 若想在自拍基礎上加入自訂 Prompt、天馬行空的趣味設定、搞怪道具或特殊二創場景 -> 結合或改用 `real-me-remix`。
> - 若為雙人／情侶合照企劃 -> 結合 `real-me-couple`。

## 核心原則：嚴格鎖定本人身分基底，其餘依附使用者指令

1. **唯一不可打破的底線**：嚴格保留本人真實身分特徵（10 點五官骨相錨點 ＋ 髮型 3 變數基礎 ＋ 真實皮膚毛孔與眼神光）。
2. **使用者指令優先（不強加統一風格）**：若使用者已提供具體的寫真 Prompt、場景、構圖，或指定保留原圖的某些元素（如服裝、配件、表情），**請 100% 依附使用者的原始說明**。僅在使用者未指定細節、希望由你協助企劃時，才從 [photography-9-modules.md](./references/photography-9-modules.md) 選用對應的攝影參數補齊。

---

## 執行步驟（Step-by-Step Workflow）

### 步驟 1：隔離原圖無關環境 ＋ 提取 10+3 身分錨點

1. **場景隔離與選擇性保留**：
   預設拍新寫真時，第一句明確宣告：**「請只把上傳照片作為人物身分參考，用於保留本人真實長相。不要保留原照片裡的背景、衣服、道具、坐姿、拍攝環境和原始構圖。」**（*註：若使用者的 Prompt 明確要求保留原圖服裝、配件或表情，則依附使用者指令保留該項目，僅替換背景與場景*）。
2. **提取 10 點五官身分錨點**：
   - 觀察並鎖定：臉型、五官比例、眉眼結構、眼型、鼻樑與鼻頭、唇形、膚色、年齡感、髮際線、整體氣質。
3. **執行「髮型 3 變數控制」**（絕不硬套與原圖衝突的髮型模板）：
   - **變數 1 — 長度體系**：短髮維持短髮體系、中長髮維持中長髮、長髮維持長髮；僅優化蓬鬆度、髮尾弧度與層次，不跨級改變長短。
   - **變數 2 — 有無瀏海**：完全遵循原圖！有瀏海則優化為輕薄空氣瀏海或自然碎瀏海；無瀏海則保持露額／無瀏海或少量臉側碎髮，絕不強行加厚瀏海（瀏海改變是「不像本人」的最大元兇）。
   - **變數 3 — 髮色寫真化**：若原圖是黑髮，不要直接寫「黑髮」（純黑／死黑會吃掉照片層次），請指定為**「更自然的深棕黑、黑茶色或柔和深咖色，讓頭髮更有層次和通透感」**。

### 步驟 2：套用「9 模組攝影企劃公式」

請查閱 [photography-9-modules.md](./references/photography-9-modules.md)，將抽象的審美詞轉譯為具體的相機與燈光執行單：
1. **圖像用途（Purpose）**：社群頭像、職業寫真、雜誌風格、商業美妝、生活方式、黑白紀實、夜景電影感。
2. **主體與氣質（Subject & Aura）**：身分角色 ＋ 氣質關鍵詞 ＋ 表情節奏。
3. **鏡頭焦段（Focal Length）**：`24mm`（環境空間感）、`35mm`（街頭紀實故事感）、`50mm`（自然生活感）、`85mm`（經典人像黃金焦段，臉部比例最穩）、`105mm/135mm`（美妝特寫與空間壓縮）。
4. **構圖與機位（Framing & Angle）**：臉部特寫、胸像、半身、3/4 身、全身；平視或略高機位（最能穩定保留本人臉型）。
5. **景深控制（Depth of Field）**：`f/1.8`（強氛圍夜景）、`f/2`（主體突出）、`f/2.8`（**最穩日常預設**：臉清楚且背景適度柔化不假）、`f/4`（保留穿搭與環境細節）。
6. **光線設計（Lighting Setup）**：寫明光源類型、照射方向、柔和度與眼中的真實眼神光（`realistic catchlights`）。
7. **色彩與妝容保真（預設自然真實，不擅自加濾鏡或濃妝）**：預設維持乾淨自然的真實攝影色彩與原生膚質；**僅在使用者於 Prompt 明確指定特定底片色調（如 Portra 400、Classic Chrome）或特定妝容時**，才套用對應設定。
8. **真實感細節落點（Realism Landmarks）**：`natural skin texture, subtle pores, realistic catchlights, natural flyaway hairs, real fabric texture, optical bokeh, slight facial asymmetry`。
9. **負面約束（Negative Constraints）**：`no AI fake face, no plastic skin, no over-retouched skin, no westernized facial features, no influencer look, no distorted hands`。

### 步驟 3：選擇輸出版式與比例（預設以使用者上傳的照片版式及格式為主，不限定拼貼或比例）

- **預設遵循原圖版式與比例（不強制限定拼貼或長寬比）**：預設以**使用者上傳的照片版式、格式及長寬比例為主**，不擅自更改為 `X×X` 拼貼，也不強制鎖定特定長寬比例，除非使用者自行添加的 Prompt 有明確指定（例如指定 `1:1`、`3:4`、`9:16` 或指定 `3×3 九宮格`）。
- **3×3 九宮格拼貼 / 4×4 相冊拼圖（僅在使用者 Prompt 明確指定或原圖版式需要時啟用）**：請讀取 [grid-and-storyboard.md](./references/grid-and-storyboard.md)。**切勿將第 1～9 格預設鎖死為固定不變的順序與動作**（防止多次生成時每次都是同樣樣式）；若使用者未指定各格細節，請從分鏡參考條件池中**動態隨機洗牌與自由組合**，強制交替景別（特寫／半身／全身／坐姿）、臉部角度（正面／半側／側臉／回眸）與動態瞬間表情。

### 步驟 4：組裝意象寫真提示詞（中英雙語總控模板）

#### 中文寫真企劃總控模板
```markdown
請只把上傳照片作為人物身分參考，用於保留本人真實長相。不要保留原照片裡的背景、衣服、道具、坐姿、拍攝環境和原始構圖。請重新生成一張全新的【{圖像用途/風格主題}】寫真。

【一、人物身分錨點與負面約束】
請嚴格保留人物真實身分特徵，包括臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、膚色、年齡感、髮際線、髮型基礎和整體氣質（{填入觀察到的使用者具體五官特徵}）。
不要把人物變成陌生人，不要歐美化，不要網紅化，不要過度美顏，不要生成 AI 假臉或塑膠皮膚。

【二、髮型與妝容控制（3 變數原則）】
- 頭髮長度：保持本人【{短髮/中長髮/長髮}】體系，僅優化蓬鬆度、髮尾弧度與層次感，不大幅改變長短。
- 瀏海屬性：遵循原圖【{保留並優化為輕薄空氣/碎瀏海 OR 保持無瀏海與臉側少量自然碎髮，不強行加厚瀏海}】。
- 髮色處理：【{若原圖黑髮：請處理為自然的深棕黑、黑茶色或柔和深咖色，避免純黑死黑吃掉層次 / 若原圖染髮：保留原色系並提升光澤層次}】。
- 妝容與面部質感：{預設為乾淨自然原生膚質；僅在使用者指定特定妝容時才依指令填入}，保留自然皮膚紋理、細微毛孔與真實眼神光。

【三、攝影企劃與鏡頭語言（依附使用者設定，未指定處以自然攝影參數補齊）】
- 人物氣質與動態瞬間：{氣質與表情描述}，動作像正在發生而非靜止擺拍，允許自然微不對稱與情緒流動感。
- 構圖與機位：{臉部特寫 / 胸像 / 半身 / 3/4身 / 全身}，{平視 / 略高機位 / 使用者指定角度}。
- 鏡頭與景深：呈現 {35mm / 50mm / 85mm} 人像鏡頭透視感，{f/2 / f/2.8} 景深感，人物清晰突出，背景呈現自然光學散景（optical bokeh）。
- 光線設計：{具體光線來源、方向與質地，例如：柔和自然光，柔和陰影過渡，眼中帶有清晰自然眼神光}。
- 場景與穿搭：{依使用者指定的場景與穿搭描述，強調真實布料紋理}。
- 色彩與色調：{預設為自然真實的攝影色彩，不額外套用未指定的特殊濾鏡；僅在使用者明確要求特定底片或色調時才填入對應色調}。
{若為 3x3 九宮格或 4x4 拼圖，在此插入來自 grid-and-storyboard.md 的分鏡表與防重複約束}
```

#### 英文寫真企劃總控模板
```markdown
Use the uploaded photo strictly as an identity reference to preserve the person's real facial appearance. Do NOT retain the original background, clothing, props, posture, environment, or framing. Generate a brand-new [{purpose / style}] portrait.

[Identity & Hair Anchors]
Strictly preserve authentic facial features: face shape, facial proportions, brow-and-eye structure, nose, lips, skin tone, perceived age, hairline, and overall aura ({insert observed traits}). Maintain the original {short/medium/long} hair length tier and {bangs/no-bangs} attribute, rendered in dimensional {deep brown-black / dark tea-brown / natural tone} with natural flyaway hairs.

[Photography Brief & Optical Setup]
A {purpose} portrait of {subject description}, with a {mood/temperament} aura and {candid micro-expression, captured mid-moment}. Framed as a {close-up / bust-up / half-body / 3/4-body} from an {eye-level / slightly high} camera angle, using an {85mm / 50mm / 35mm} lens look at {f/2.8 / f/2} feel. Lit by {specific lighting setup and direction, e.g., soft natural window light from the left with gentle shadow falloff}. Set in {new environment}, wearing {wardrobe with real fabric texture}. {Default: Natural true-to-life photographic color balance without unrequested filters; OR apply the user's explicitly requested film/color tone}.

[Realism & Negative Constraints]
Emphasize natural skin texture, subtle pores, realistic catchlights, slight facial asymmetry, and optical bokeh. Avoid AI fake face, plastic skin, over-retouched beauty filter, westernized facial features, generic influencer look, stiff posing, or distorted hands.
```

### 步驟 5：雙軌執行輸出（Dual-Track Delivery）

0. **啟動標記（回覆第一行）**：每次觸發本技能時，回覆的第一行必須固定輸出 `[Real-Me]: real-me-portrait`（若與其他技能組合則輸出 `[Real-Me]: real-me-portrait + <其他技能>`），讓使用者一眼確認技能已生效。
1. **直接生圖**：若環境具備生圖工具，立即帶入參考照片與組裝完成的 Prompt 生成影像。
2. **雙語 Prompt 輸出**：同步展示中英雙語結構化提示詞，方便使用者複製或微調鏡頭／色調模組。
