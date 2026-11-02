---
name: real-me-portrait
description: >-
  Use this skill when the user uploads a photo as an identity reference and
  wants to generate a brand-new portrait, concept photoshoot, professional
  headshot, magazine editorial, lifestyle photo, or multi-panel photo grid
  (e.g., "用這張照片當身分參考拍寫真", "幫我生成韓系棚拍/職業形象照/日系寫真",
  "做一組 3x3 九宮格寫真", "generate a portrait photoshoot keeping my face").
  It strictly discards the original photo's background, outfit, and pose while
  locking the user's true facial identity.
---

# Real-Me Portrait (Identity-Locked Concept & Editorial Photoshoot Director)

This skill acts as an AI Photography Director. When a user uploads a selfie or personal photo and asks for a desired style or concept portrait, this skill prevents the two most common failures:
1. **Accidental "Original Photo Beautification"**: AI copying the original coffee shop background, black T-shirt, or sitting pose.
2. **Off-Model "Influencer Face Swap"**: AI turning the user into a generic, overly retouched stranger or repeating the exact same 45-degree smiling pose across a set.

## When to Activate

Activate this skill when the user's natural language request matches **Mode 2 (Identity Reference -> Desired Concept / Editorial Photoshoot)**:
- Generating a new portrait style (Korean studio editorial, founder/professional headshot, Kodak Portra lifestyle, black-and-white documentary, urban Classic Chrome, cinematic night, golden hour, etc.) using an uploaded photo as the face/identity reference.
- Creating a **3×3 nine-grid photoshoot (`九宮格寫真`)**, a **4×4 candid camera-roll dump (`手機隨手拍相冊`)**, or a **multi-shot sequential storyboard (`單張連拍選片企劃`)**.

> **Cross-Skill Routing**:
> - If the user does not want to change the scene or composition and only wants to retouch skin, lighting, or tone on the original photo -> Switch to `real-me-retouch`; furthermore, regardless of whether the user has or has not mentioned retouching the original personal photo in their other prompts, you can always switch to or combine with `real-me-retouch`.
> - Add playful/surreal/custom creative elements, fantasy scenes, or quirky props -> Combine with or switch to `real-me-remix`.
> - Two people / couple portraits -> Combine with `real-me-couple`.

## Core Principle: Identity Lock First, User Direction Always

1. **Unbreakable Baseline**: Strictly preserve the person's authentic facial identity (10-point facial structure + 3-variable hair foundation + natural skin micro-texture).
2. **User Prompt Priority**: Never force a pre-defined unified style onto the user. If the user provides their own portrait prompt, scene, framing, or asks to keep specific elements from the original photo (such as outfit or expression), **defer 100% to the user's instructions**. Use the 9-Module Photography Brief in [photography-9-modules.md](./references/photography-9-modules.md) only to translate or fill in camera/lighting parameters that the user did not explicitly specify.

---

## Step-by-Step Workflow

### Step 1: Isolate Identity Reference & Extract 10+3 Anchors

1. **Enforce Scene Isolation (Unless User Requests Selective Retention)**:
   By default for new photoshoots, instruct the model to treat the uploaded photo **strictly as an identity reference** and to **discard** the original background, clothing, props, posture, environment, and framing. *(If the user's prompt explicitly asks to keep their original outfit, accessories, or expression, retain those specific elements while replacing the background/scene as requested.)*
2. **Extract 10-Point Identity Anchors** from the user's photo:
   - Face shape (臉型), facial proportions (五官比例), brow-and-eye structure (眉眼結構), eye shape (眼睛), nose bridge/tip (鼻子), lip shape (嘴唇), skin tone (膚色), perceived age (年齡感), hairline (髮際線), overall temperament (整體氣質).
3. **Apply 3-Variable Hairstyle Control** (Never force a rigid hair template that contradicts the user's photo):
   - **Variable 1 — Length**: Keep short hair in the short-hair family, medium in medium, long in long. Optimize volume, layering, and curl arc without changing the length tier.
   - **Variable 2 — Bangs**: Follow the original photo! If bangs exist, refine into airy/wispy bangs; if no bangs exist, keep forehead/hairline visible or use subtle side strands—never slap heavy bangs onto a forehead-baring user.
   - **Variable 3 — Hair Color**: If the user has black hair, specify `deep brown-black, dark tea-brown, or soft espresso brown (深棕黑、黑茶色或柔和深咖色)` instead of dead/flat black (`死黑/純黑`) to preserve hair layering and translucency.

### Step 2: Build the 9-Module Photography Brief

Consult [photography-9-modules.md](./references/photography-9-modules.md) to translate the user's desired vibe into concrete camera & lighting decisions instead of vague buzzwords:
1. **Purpose (圖像用途)**: Avatar, Founder/Professional, Magazine Editorial, Commercial Beauty, Lifestyle, B&W Documentary, or Cinematic Night.
2. **Subject & Aura (主體與氣質)**: Identity role + temperament + facial expression rhythm.
3. **Lens Focal Length (鏡頭焦段)**: `24mm` (environmental), `35mm` (documentary/street), `50mm` (natural lifestyle), `85mm` (classic flattering portrait), `105mm/135mm` (tight beauty/compression).
4. **Framing & Camera Angle (構圖與機位)**: Face close-up, bust-up, half-body, 3/4 body, or full-body; eye-level or slightly high angle (most stable for likeness).
5. **Depth of Field (景深控制)**: `f/1.8` (moody), `f/2` (subject separation), `f/2.8` (sharp face + recognizable environment — safest default), `f/4` (environmental detail).
6. **Lighting Setup (光線設計)**: Where the light comes from, its softness, and how it shapes catchlights and shadow falloff.
7. **Tone & Makeup Fidelity (色調與妝容原則 — 不主動亂套濾鏡或濃妝)**: By default, keep clean, natural, true-to-life color tones and authentic skin/makeup unless the user's prompt explicitly asks for a specific film stock (e.g., `Kodak Portra 400`, `Fujifilm Classic Chrome`, `CineStill 800T`, `Ilford HP5`) or a specific makeup style.
8. **Realism Details (真實感落點)**: `natural skin texture, subtle pores, realistic catchlights, natural flyaway hairs, real fabric texture, optical bokeh, slight facial asymmetry`.
9. **Negative Constraints (防網紅化與防失真限制)**: `no AI fake face, no plastic skin, no over-retouched skin, no westernized facial features, no influencer look, no distorted hands`.

### Step 3: Choose Output Format & Aspect Ratio (Default: Follow Uploaded Photo's Layout & Ratio Unless User Prompt Specifies Otherwise)

- **Default Layout & Aspect Ratio (預設以使用者上傳的照片版式及比例為主)**:
  By default, **follow the layout, format, and aspect ratio of the user's uploaded photo** (do not force an unrequested `X×X` collage or arbitrarily change the aspect ratio unless the user explicitly specifies a layout or ratio such as `1:1`, `3:4`, `9:16`, or `3×3` in their prompt).
- **Multi-Shot Set / 3×3 Nine-Grid / 4×4 Camera Roll (多圖企劃與九宮格 — ONLY When Explicitly Requested by User)**:
  Only when the user's prompt explicitly asks for a multi-panel grid (`3×3 九宮格`, `4×4 相冊拼貼`, etc.) or when the user's uploaded reference layout requires it, load [grid-and-storyboard.md](./references/grid-and-storyboard.md). **Never hardcode "Panel 1 must be X, Panel 2 must be Y" as a fixed default**—instead, dynamically shuffle and recombine the reference shot conditions on each generation so repeated runs never look identical, varying:
  - **Framing**: Close-up, half-body, 3/4 body, full-body sitting/standing.
  - **Face Angle**: Frontal, 3/4 profile, side profile, head tilted down, looking over shoulder, partial face occlusion.
  - **Gaze & Micro-Expression**: Looking calmly into lens, looking off-frame, eyes closed laughing, candid mid-laugh, resting gentle look (capturing an *in-motion moment* rather than a stiff pose).

### Step 4: Assemble the Prompt & Execute Dual-Track Output

#### Universal Chinese Master Template (單張或組圖總控)
```markdown
請只把上傳照片作為人物身分參考，用於保留本人真實長相。不要保留原照片裡的背景、衣服、道具、坐姿、拍攝環境和原始構圖。請重新生成一張全新的【{圖像用途/風格主題}】寫真。

【一、人物身分錨點與負面約束】
請嚴格保留人物真實身分特徵，包括臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、膚色、年齡感、髮際線、髮型基礎和整體氣質（{填入觀察到的使用者具體五官特徵}）。
不要把人物變成陌生人，不要歐美化，不要網紅化，不要過度美顏，不要生成 AI 假臉或塑膠皮膚。

【二、髮型與妝容控制（3 變數原則）】
- 頭髮長度：保持本人【{短髮/中長髮/長髮}】體系，僅優化蓬鬆度、髮尾弧度與層次感，不大幅改變長短。
- 瀏海屬性：遵循原圖【{保留並優化為輕薄空氣/碎瀏海 OR 保持無瀏海與臉側少量自然碎髮，不強行加厚瀏海}】。
- 髮色處理：【{若原圖黑髮：請處理為自然的深棕黑、黑茶色或柔和深咖色，避免純黑死黑吃掉層次 / 若原圖染髮：保留原色系並提升光澤層次}】。
- 妝容與面部質感：{預設為乾淨自然原生膚質與真實毛孔；僅在使用者指定特定妝容時才依指令填入}，保留自然皮膚紋理、細微毛孔與真實眼神光。

【三、攝影企劃與鏡頭語言（依附使用者設定，未指定處以自然攝影參數補齊）】
- 人物氣質與動態瞬間：{氣質與表情描述}，動作像正在發生而非靜止擺拍，允許自然微不對稱與情緒流動感。
- 構圖與機位：{臉部特寫 / 胸像 / 半身 / 3/4身 / 全身}，{平視 / 略高機位 / 使用者指定角度}。
- 鏡頭與景深：呈現 {35mm / 50mm / 85mm} 人像鏡頭透視感，{f/2 / f/2.8} 景深感，人物清晰突出，背景呈現自然光學散景（optical bokeh）。
- 光線設計：{具體光線來源、方向與質地，例如：柔和自然光，柔和陰影過渡，眼中帶有清晰自然眼神光}。
- 場景與穿搭：{依使用者指定的場景與穿搭描述，強調真實布料紋理}。
- 色彩與色調：{預設為自然真實的攝影色彩，不額外套用未指定的特殊濾鏡；僅在使用者明確要求特定底片或色調時才填入對應色調}。
{若為 3x3 九宮格或 4x4 拼圖，在此插入來自 grid-and-storyboard.md 的分鏡表與防重複約束}
```

#### Universal English Master Template
```markdown
Use the uploaded photo strictly as an identity reference to preserve the person's real facial appearance. Do NOT retain the original background, clothing, props, posture, environment, or framing. Generate a brand-new [{purpose / style}] portrait.

[Identity & Hair Anchors]
Strictly preserve authentic facial features: face shape, facial proportions, brow-and-eye structure, nose, lips, skin tone, perceived age, hairline, and overall aura ({insert observed traits}). Maintain the original {short/medium/long} hair length tier and {bangs/no-bangs} attribute, rendered in dimensional {deep brown-black / dark tea-brown / natural tone} with natural flyaway hairs.

[Photography Brief & Optical Setup]
A {purpose} portrait of {subject description}, with a {mood/temperament} aura and {candid micro-expression, captured mid-moment}. Framed as a {close-up / bust-up / half-body / 3/4-body} from an {eye-level / slightly high} camera angle, using an {85mm / 50mm / 35mm} lens look at {f/2.8 / f/2} feel. Lit by {specific lighting setup and direction, e.g., soft natural window light from the left with gentle shadow falloff}. Set in {new environment}, wearing {wardrobe with real fabric texture}. {Default: Natural true-to-life photographic color balance without unrequested filters; OR apply the user's explicitly requested film/color tone}.

[Realism & Negative Constraints]
Emphasize natural skin texture, subtle pores, realistic catchlights, slight facial asymmetry, and optical bokeh. Avoid AI fake face, plastic skin, over-retouched beauty filter, westernized facial features, generic influencer look, stiff posing, or distorted hands.
```

### Step 5: Dual-Track Delivery

0. **Status Header (First Line of Reply)**: Always begin your response with `[Real-Me]: real-me-portrait` (or `[Real-Me]: real-me-portrait + <other-skill>` when combined) on the very first line so the user immediately knows this skill is active.
1. **Direct Image Generation**: If an image generation tool is available, execute it immediately with the uploaded reference photo and assembled prompt. (If the user requested a high-quality multi-shot series, recommend generating single master shots sequentially or a structured grid depending on their preference).
2. **Bilingual Prompt Delivery**: Always display the structured Chinese & English prompts so the user can reuse or tweak individual modules.
