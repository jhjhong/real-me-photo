---
name: real-me-couple
description: >-
  Use this skill when the user uploads photos of two people (a couple, partners,
  or close friends) and wants to generate couple portraits, romantic studio
  editorials, travel photo albums, or interactive two-person shots (e.g.,
  "幫我們拍情侶寫真", "韓系情侶雜誌棚拍", "情侶海邊旅行隨手拍相冊", "雙人合照生成",
  "generate a couple portrait keeping both of our faces"). It solves multi-person
  identity drift, empty relationship vibes, hand/limb clipping, and broken
  head-to-body proportions.
---

# Real-Me Couple (Duo Identity Lock, Relationship Gaze & Spatial Proportion Director)

Two-person and couple portraits are the hardest category in AI photography. Without specialized structural controls, AI models frequently fail in four ways:
1. **Identity Drift / Face Blending**: One person (often the male partner in side light or motion) drifts into a stranger, or both faces subtly merge.
2. **Stiff "Catalog Mannequin" Vibe**: Two people stand next to each other with identical polite smiles and zero emotional chemistry.
3. **Limb & Hand Chaos**: During hugs, cheek-to-cheek close-ups, or chin-cupping poses, hands clip through shoulders or lose clear ownership.
4. **Distorted Head-to-Body Proportions**: Exaggerating the man into a giant or shrinking the woman into childlike proportions, or fusing their torsos.

This skill applies the **Duo Spatial, Gaze & Proportion Protocol** to generate authentic, soul-filled two-person photography.

## Core Principle: Dual Identity & Spatial Lock + User-Driven Style

- **Unbreakable Baseline**: Strictly preserve **both individuals' authentic facial identities**, realistic adult head-to-body proportions, natural gaze chemistry, and clear left/right hand & limb ownership.
- **100% User-Driven Style & Original Layout/Ratio Default**: Do **not** impose a fixed studio, wardrobe, aspect ratio, or `X×X` grid/collage template onto every couple. By default, **follow the layout, format, and aspect ratio of the user's uploaded photo(s)** unless the user explicitly specifies a layout (e.g., `3×3` or `4×4` collage) or aspect ratio in their prompt. Whatever scene, style, framing, outfit retention, or custom prompt the user provides, **faithfully follow the user's instructions**, using the spatial and proportion rules below to keep both faces and bodies realistic and distortion-free.

## When to Activate

Activate this skill whenever the user wants to generate or retouch **a two-person / couple / duo image**:
- Any user-specified couple or duo scene, custom prompt, studio shoot, or outdoor/travel snapshot.
- Multi-shot couple series or collages (e.g., `3×3` grids or `4×4` albums).
- Close-up interactive shots: back hugs (`背後環抱`), cheek-to-cheek (`貼臉特寫`), face cupping (`托臉/托下巴`), holding hands (`牽手特寫`).
- Creative couple mashups (combine with `real-me-remix`).
- If the user does not want to change the scene or composition and only wants to retouch skin, lighting, or tone on the original photo, switch to `real-me-retouch`; furthermore, regardless of whether the user has or has not mentioned retouching the original personal photo in their other prompts, you can always switch to or combine with `real-me-retouch`.

---

## Step-by-Step Workflow

### Step 1: Lock Dual Identities & Handle Original Elements by User Intent

1. **Scene & Pose Retention vs. Replacement**:
   - Treat the uploaded photos as authoritative identity references for the two adults (discarding original background/clothing when generating a new concept, OR retaining original outfits/poses if requested by the user or when retouching an existing couple photo).
2. **Dual 10-Point Identity Anchors**:
   - Explicitly describe **Person A** and **Person B** separately (face shape, facial proportions, brow/eye structure, nose, lips, jawline, skin tone, age feel, hairline, and 3-variable hairstyle foundation).
   - Add a drift guard: `Ensure neither person's face drifts into a stranger under side lighting, motion blur, or profile angles.`

### Step 2: Handle Relationship Dynamics & Gaze Flow (`依使用者自訂詞有無提及分流處理`)

Handle gaze and interaction based on **whether the user's custom prompt specifies them**—never override the user's intent or force a single rigid pose:

1. **Case A — User's Prompt Explicitly Specifies Pose or Gaze**:
   - **Follow the user's instructions 100%** (e.g., if the user asks for both looking at the camera smiling or sitting side-by-side eating ramen, execute that exact pose and gaze without forcing closed eyes or a back-hug).
2. **Case B — User's Prompt Does NOT Mention Pose/Gaze, and They Uploaded an Existing Two-Person Photo Without Asking for a New Pose**:
   - **Preserve the original photo's relative positions, posture, and gaze direction**, only refining expression warmth and skin/lighting realism.
3. **Case C — User Only Gives an Open Theme (e.g., "generate a couple photoshoot for us") Without Specifying Pose or Gaze**:
   - To prevent a stiff "catalog mannequin" look, **dynamically pick and shuffle** from these reference conditions across generations (do not repeat the exact same pattern every time):
     - **Relaxed Side-by-Side Camera Gaze**: Both standing/sitting close together looking warmly at the lens with natural, unforced smiles.
     - **Initiator & Responder Momentum (`主動方與回應方`)**: One partner initiates a gentle gesture (leaning in, arm around shoulder, back hug) while the other responds naturally mid-moment.
     - **Asymmetrical Gaze Flow (`非對稱眼神流向`)**: One looking gently at the camera while the other gazes warmly at their partner; both caught in a spontaneous laugh; or one looking off-frame while resting against the other's shoulder.

### Step 3: Specify Left/Right Spatial Coordinates & Limb Ownership (`左右位置與手部歸屬 — 防穿模安全鎖`)

Whenever the couple touches (whether from the user's custom prompt or a dynamically selected pose—hugging, cupping chin, leaning on shoulder, holding hands), consult [duo-spatial-and-gaze.md](./references/duo-spatial-and-gaze.md) and translate the contact into explicit spatial coordinates so limbs never clip:
- **Who is on the left vs. right, foreground vs. background** (following the user's prompt or original photo layout if present, or assigning clear coordinates if unspecified).
- **Which exact hand (left or right) touches which exact body part**:
  - *Vague (prone to clipping)*: "The girl approaches the boy from behind."
  - *Clear (anatomically stable)*: "The man sits in the foreground slightly to the left; the woman sits behind him slightly to the right, peeking her face over his right shoulder toward the lens with her right hand resting gently on his right shoulder."

### Step 4: Enforce Adult Proportion & Anatomy Locks (`人物比例與肢體結構約束`)

Always include the **Duo Anatomy & Proportion Lock** block to prevent giant heads, childlike shrinking, or fused bodies:
- Keep both individuals looking like **real, naturally proportioned adults** based on their reference photos (face size relative to head, head-to-shoulder ratio, neck length, arm length, palm size).
- Do not exaggerate the man's shoulder width or jaw; do not shrink the woman into an overly juvenile/big-headed proportion.
- Perspective rule: The person closer to the lens may appear slightly larger naturally, without warping anatomy or fusing torsos/limbs.

### Step 5: Assemble the Couple Prompt & Execute Dual-Track Output

#### Chinese Couple Master Template (雙人身分與空間鎖定 ＋ 依附使用者指定風格)
```markdown
請基於上傳的兩位成年人清晰照片，並依照使用者指定的畫面與風格產生【{使用者指定的雙人主題或原始 Prompt 設定}】。
請以照片作為人物身分依據（{若使用者未要求保留原圖背景或服裝，則不保留原照片中的原始背景、衣服、場景和構圖；若使用者要求保留原圖服裝配件則依指令保留}）。

【一、雙人真實身分鎖定（核心底線）】
請嚴格保留兩個人的真實身分特徵，包括各自的臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、下頜線、膚色、年齡感、髮際線、髮型基礎和整體氣質（人物 A 特徵：{觀察描述}；人物 B 特徵：{觀察描述}）。生成結果必須清楚看起來是同一對真實人物，不能變成陌生人，不能歐美化，不能網紅化，不能過度美顏，不能出現 AI 假臉。

【二、使用者指定風格、場景、構圖與穿搭指令】
{完整保留並執行使用者輸入的場景、風格、構圖、光線與服裝設定}

【三、關係感、眼神流向與空間手部歸屬（核心鏡頭管理）】
- 關係與情緒流向：呈現自然真實的互動感，動作像正在發生的抓拍瞬間，而非機械擺拍。
- 具體站位、手部歸屬與眼神：{依使用者指定的動作，明確標註誰在左側/右側/前景/後景，誰用左手/右手接觸哪個部位，以及雙方眼神流向}。

【四、雙人頭身比例與人體結構約束】
請特別注意兩個人的臉部比例、頭身比例、肩寬、脖頸長度、手臂長度、手掌大小和整體體態都要自然協調，符合真實成年人比例。兩個人貼臉、靠肩、環抱、托臉、牽手時，身體接觸必須符合真實人體結構與透視關係，不要出現手臂穿插穿模、手指混亂、身體重疊錯誤、臉部融合或 AI 拼接感。
```

#### English Couple Master Template
```markdown
Use the uploaded photos of the two adults as authoritative identity references and execute the user's duo concept/prompt: [{user's custom duo concept or prompt instructions}].

[1. Dual Identity Lock]
Strictly preserve the authentic facial features of both individuals (Person A: {traits}; Person B: {traits}), including face shape, facial proportions, brow-and-eye structure, nose, lips, jawline, skin tone, perceived age, hairline, and authentic hairstyle foundation. Neither person may drift into a stranger or generic influencer face.

[2. User-Defined Style, Scene & Wardrobe]
{Preserve and execute the user's exact scene, framing, lighting, style, and outfit instructions (retaining original outfits if requested by the user, or applying the user's new styling)}

[3. Spatial Choreography, Hand Ownership & Gaze Flow]
Capture genuine, candid in-motion chemistry with explicit spatial coordinates: {specify left/right/foreground/background positions, exact left/right hand contact points, and asymmetrical gaze flow matching the user's requested pose}.

[4. Adult Proportion & Anatomy Lock]
Maintain realistic adult head-to-body proportions, natural head size ratio between both subjects, accurate shoulder width, and anatomically correct limb contact. Avoid AI fake faces, plastic skin, arm clipping, fused bodies, distorted fingers, or stiff mannequin posing.
```

### Step 6: Dual-Track Execution

0. **Status Header (First Line of Reply)**: Always begin your response with `[Real-Me]: real-me-couple` (or `[Real-Me]: real-me-couple + <other-skill>` when combined) on the very first line so the user immediately knows this skill is active.
1. **Direct Image Generation**: If an image generation tool is available, run it with the reference photos and assembled prompt.
2. **Bilingual Prompt Output**: Provide the structured Chinese and English prompts, and offer the **8-Shot Studio Storyboard** or **16-Panel Travel Album** from [duo-spatial-and-gaze.md](./references/duo-spatial-and-gaze.md) if they want a full series!
