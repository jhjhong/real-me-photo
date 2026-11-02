---
name: real-me-retouch
description: >-
  Use this skill standalone when the user wants to retouch, enhance, or beautify
  an existing photo while preserving the original background, outfit, pose,
  composition, and authentic facial identity (e.g., "幫我修這張照片", "原圖修圖美化",
  "修膚質跟光線但不要像網紅假臉", "retouch my selfie naturally"). You can also
  switch to or combine this skill with real-me-portrait, real-me-remix, or
  real-me-couple—whether or not the user explicitly mentioned retouching in
  their other prompts—to apply the 8-tier authentic skin micro-texture and
  lighting polish system.
---

# Real-Me Retouch (In-Place Photo Enhancement & Authentic Beautification)

This skill transforms an uploaded personal photo into a naturally retouched, photographer-grade image **without changing the person into a stranger or altering the original scene**. It solves the common AI retouching failure where models over-smooth skin into plastic, westernize or "influencer-fy" facial features, or accidentally hallucinate new backgrounds and clothes.

## When to Activate

Activate this skill when the user's natural language request matches **Mode 1 (In-Place Retouch / 原圖修圖美化)**:
- Polishing skin texture or lighting on an existing selfie or portrait while keeping the original setting.
- Fixing harsh indoor overhead shadows, backlighting, or oily shine without changing the scene.
- Preserving the original photo's authentic color balance by default—never applying unrequested film filters or color stylization unless the user explicitly specifies a filter/tone in their prompt.
- Cleaning up minor background clutter or stray hairs while keeping the original photo recognizable.

> **Cross-Skill Routing & Combination**:
> - If the user wants to **discard the original background/outfit** and shoot a new concept or studio editorial -> Switch to or combine with `real-me-portrait`.
> - If the user wants to **add creative/playful prompts, fantasy scenes, or custom props** using their face as reference -> Switch to or combine with `real-me-remix`.
> - If the photo contains **two people / a couple** and needs relationship/spatial retouching -> Combine with `real-me-couple`.
> - Whether or not the user explicitly includes retouching instructions in their other prompts, this skill's 8-tier skin polish and lighting rescue modules can always be combined with any other skill.

---

## Step-by-Step Workflow

### Step 1: Analyze the Original Photo & Lock Both Identity and Scene

Before generating an image or writing a prompt, inspect the user's uploaded photo (if provided) and identify:
1. **Scene & Composition Lock**: Current framing (close-up, half-body, full-body), camera angle, background environment, lighting direction, pose, and outfit.
2. **10-Point Identity Anchor**:
   - Face shape (臉型) & facial proportions (五官比例)
   - Eyebrow & eye structure (眉眼結構), nose shape (鼻型), lip shape (唇形)
   - Skin tone (膚色), perceived age (年齡感), hairline (髮際線), overall vibe (整體氣質)
3. **3-Variable Hairstyle Preservation**:
   - **Length**: Keep exact length system (short / medium / long). Only refine volume, layering, and natural curl/arc.
   - **Bangs**: If bangs exist, refine into airy/wispy bangs; if no bangs exist, never add heavy bangs (only subtle face-framing wispy strands if flattering).
   - **Color**: If hair is dark/black, refine into dimensional deep brown-black or dark tea-brown (`深棕黑 / 黑茶色`) so hair texture isn't swallowed by dead black (`死黑`).

### Step 2: Follow User Retouch Instructions & Select Supporting Modules

Always prioritize the user's explicit retouching, lighting, or color instructions—**never apply any film filter, color tint, or stylization that the user did not explicitly request in their prompt**. Load [retouch-presets.md](./references/retouch-presets.md) only to translate or supplement the user's requested adjustments:
- **Skin Realism — 8-Tier Polish System (反假臉 8 級膚質精修)**: Match the user's photo context to the appropriate skin micro-texture tier in [retouch-presets.md](./references/retouch-presets.md) (`1. Documentary Natural`, `2. Editorial Clean`, `3. Creamy Studio Glow`, `4. Sun-Kissed Travel & Live Candid`, `5. Window-Light Subsurface Translucent`, `6. Athletic & Vitality Micro-Dew`, `7. Direct-Flash & Night Candid`, or `8. Evening & Candlelight Satin`), always preserving `natural skin texture, subtle pores, realistic highlight roll-off`.
- **Original Layout & Aspect Ratio Default (預設以使用者上傳的照片版式及格式為主)**: Default to the layout, format, and aspect ratio of the user's uploaded photo—do not force an unrequested collage or alter the aspect ratio unless the user explicitly specifies a layout or ratio in their prompt.
- **Lighting Enhancement (光影重塑)**: Soften harsh overhead/flash shadows, add subtle dimensional fill light, and restore `realistic catchlights in the eyes`.
- **Hair & Fabric Polish (髮絲與衣物質感)**: Add airy volume at the crown, natural flyaway hairs (`自然微碎髮`), and crisp fabric texture.
- **Color Fidelity (預設保留原圖真實色彩)**: Keep the original photo's true-to-life color balance by default. Only apply a specific color profile or film tone if the user explicitly asked for it in their prompt.

### Step 3: Assemble the In-Place Retouch Prompt

Use the following structure (adaptable to both Chinese and English image models):

#### Chinese Prompt Template (適合 GPT Image 2 / 中文生圖與修圖模型)
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
- 色彩與色調：{預設：保留原圖真實自然的色彩與白平衡，不要套用任何非指定的濾鏡；若使用者有明確指定色調則依指令填入}。

【5. 負面約束（防失真與防網紅化）】
不要把人物變成陌生人，不要歐美化，不要網紅臉化，不要過度磨皮美顏，不要塑膠皮膚（no plastic skin），不要擅自套用未指定的濾鏡色偏，不要生成 AI 假臉，不要改變五官位置，不要過度銳化或添加虛假背景模糊。
```

#### English Prompt Template (For Flux / Midjourney / Nano Banana / English Pipelines)
```markdown
Perform an authentic, photographer-grade retouch and enhancement on the uploaded reference photo while strictly preserving the original composition, pose, outfit, and background environment.

[Identity & Hair Lock]
Strictly preserve the subject's exact facial identity: face shape, facial proportions, brow-and-eye structure, nose bridge, lip shape, jawline, skin tone, perceived age, hairline, and authentic aura. Keep the original {short/medium/long} hair length and {bangs/no-bangs} structure, refining only root volume, natural flyaway hairs, and dimensional {deep brown-black / natural} hair sheen (avoid flat dead-black hair).

[Retouching, Lighting & Color Fidelity]
Clean up temporary blemishes and uneven harsh shadows while maintaining natural skin texture, subtle pores, and smooth highlight roll-off. Enhance lighting with {user-requested lighting fix, e.g., soft diffused fill light and realistic catchlights in the eyes}. {Default: Preserve the original photo's true-to-life color balance without applying unrequested filters; OR apply the user's explicitly requested color grade} with realistic fabric texture and natural optical depth.

[Negative Constraints]
No AI fake face, no plastic skin, no over-retouched beauty-filter look, no unrequested color filters, no westernized facial features, no influencer face swap, no altered background, no distorted hands or unnatural catchlights.
```

### Step 4: Dual-Track Execution

0. **Status Header (First Line of Reply)**: Always begin your response with `[Real-Me]: real-me-retouch` (or `[Real-Me]: real-me-retouch + <other-skill>` when combined) on the very first line so the user immediately knows this skill is active.
1. **If an image generation/editing tool is available in your environment**:
   - Call the image tool directly using the constructed prompt and the user's uploaded image.
   - Present the generated image alongside the structured prompt so the user can see what adjustments were applied.
2. **If no image tool is available (or if the user asks for prompts only)**:
   - Output both the **Chinese** and **English** prompts clearly formatted in code blocks.
   - Briefly highlight 2–3 tweakable variables (e.g., switching the color grade from *Kodak Portra 400* to *Fujifilm Classic Chrome*, or adjusting skin polish intensity) so the user can iterate effortlessly.
