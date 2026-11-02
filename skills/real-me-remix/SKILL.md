---
name: real-me-remix
description: >-
  Use this skill when the user uploads a photo (such as a selfie) as an
  identity reference and provides their own custom prompt, personal style
  instructions, or creative keywords to generate an image (e.g., "用這張自拍加上...",
  "上傳照片並搭配我自己的 Prompt 生圖", "保留我的長相並依照這段提示詞生成",
  "generate an image with my custom prompt while keeping my real face").
  It strictly locks the user's authentic facial identity while deferring all
  other style, scene, framing, and outfit instructions to the user's prompt.
---

# Real-Me Remix (Identity-Lock Base + User-Defined Prompt Fusion)

This skill is designed around a single core principle: **Strictly lock the user's authentic facial identity as an unbreakable baseline, and let everything else faithfully follow the user's own prompt and personal style instructions.**

Instead of forcing pre-defined unified styles onto every user, this skill acts as an **Identity-Preserving Adapter**:
- **What is Immutably Locked**: The person's real facial bone structure, 10-point facial features, skin tone, authentic aura, and hairstyle foundation—ensuring the generated person is unmistakably the user, never a generic influencer or plastic AI face.
- **What Follows the User 100%**: Scene, framing, aspect ratio, camera angle, optical perspective, body proportions, expression, whether to keep or replace original clothing/accessories, lighting, and artistic vibe—all defer directly to the user's original prompt.

## When to Activate

Activate this skill when the user's natural language request matches **Mode 3 (Identity Reference + User's Custom Prompt / Personal Style Instructions)**:
- Uploading a personal photo/selfie and pasting their own full or partial prompt.
- Uploading a photo and adding custom creative, stylistic, or situational instructions.
- Asking to combine their real face with any user-specified concept without being restricted to fixed studio templates.

> **Cross-Skill Routing**:
> - If the user does not want to change the scene or composition and only wants to retouch skin, lighting, or tone on the original photo -> Switch to `real-me-retouch`; furthermore, regardless of whether the user has or has not mentioned retouching the original personal photo in their other prompts, you can always switch to or combine with `real-me-retouch`.
> - If the user has *no* custom prompt and wants you to plan a classic photography session from scratch -> Switch to or combine with `real-me-portrait`.
> - If the prompt involves **two people / a couple** -> Combine with `real-me-couple`.

---

## Step-by-Step Workflow

### Step 1: Lock the Unbreakable Identity Baseline (`嚴格保留本人真實身分特徵`)

Inspect the user's uploaded photo (if provided) and establish the non-negotiable identity anchor block:
1. **10-Point Facial Identity Anchor**:
   - Face shape (臉型), facial proportions (五官比例), brow-and-eye structure (眉眼結構), eye shape (眼睛), nose bridge and tip (鼻子), lip shape (嘴唇), jawline (下頜線), skin tone (膚色), perceived age (年齡感), hairline (髮際線), and overall personal aura (整體氣質).
2. **3-Variable Hairstyle Baseline** *(unless the user's prompt explicitly asks to change hairstyle/hair color)*:
   - Keep the user's hair length tier (short / medium / long), bangs attribute (with bangs vs. no bangs), and natural dimensional hair tone (converting flat dead-black into layered deep brown-black or dark tea-brown so hair texture stays realistic).
3. **Anti-Distortion & Anti-Influencer Guard**:
   - Always enforce: `natural skin texture, subtle pores, realistic catchlights; no AI fake face, no plastic skin, no generic influencer face swap, no westernized facial drift`.

### Step 2: Faithfully Attach & Respect the User's Prompt Instructions (`完全依附使用者原始 Prompt 說明`)

Read the user's supplied prompt or creative instructions carefully. **Do NOT override their style with pre-baked templates.** Instead, align every non-identity variable with the user's intent:

1. **Selective Retention (Clothing, Accessories, Expression, Pose)**:
   - If the user's prompt states to **keep** original elements (e.g., original outfit, accessories, or expression), explicitly carry those observed traits from the uploaded photo into the prompt (and naturally extend unseen parts, such as lower-body clothes in a full-body shot, to match the original top).
   - If the user's prompt specifies **new** clothing, props, or poses (or only uses the photo for facial identity), discard the original photo's clothing/background and follow the user's description.
2. **Scene, Framing, Aspect Ratio, Layout & Special Proportions**:
   - **Default to Uploaded Photo's Layout & Aspect Ratio**: If the user's prompt does not specify an aspect ratio or collage layout, default to the layout, format, and aspect ratio of the user's uploaded photo (do not force an unrequested `X×X` grid or alter the aspect ratio). If the user explicitly specifies an aspect ratio (e.g., `1:1`) or layout in their prompt, follow their exact instruction.
   - Preserve 100% of the user's requested composition, background, camera angle, and perspective/proportion style.
   - **Conflict Resolution for Stylized Perspectives/Themes**: If the user's prompt requests extreme perspectives, stylized proportions, or bold creative scenes that might normally cause an AI model to draw a cartoon or fake face, consult [creative-props-and-vibes.md](./references/creative-props-and-vibes.md) to bridge the gap—anchor the effect in **real optical camera physics and photorealistic skin/fabric textures** so the user gets their exact requested effect *without* breaking facial likeness.
3. **Optional Expansion (Only When User Gives Brief Keywords)**:
   - If the user already wrote a detailed prompt, keep their wording and structure intact.
   - Only if the user provides a very short phrase (e.g., *"add some fun props"*) should you expand it with complementary details while staying true to their direction.

### Step 3: Assemble the Prompt (Identity Anchor + User Prompt)

Merge the **Identity Lock Block** seamlessly with the **User's Original Prompt Instructions**:

#### Chinese Template (身分錨點基底 ＋ 依附使用者原始 Prompt)
```markdown
請以使用者上傳的照片作為人物身分依據，結合以下指定的畫面與風格要求進行生成：

【一、本人真實身分特徵鎖定（核心不可打破底線）】
- 五官與骨相：請嚴格保留上傳照片中人物的真實身分特徵，包括臉型、五官比例、眉眼結構、眼睛、鼻子、嘴唇、下頜線、膚色、年齡感、髮際線與整體氣質（{若已觀察照片，填入具體五官特徵}）。生成結果的臉部必須清楚看起來是本人，不要變成陌生人，不要歐美化，不要網紅臉化，不要生成 AI 假臉。
- 髮型與原圖元素保留：{依使用者指令決定：預設保留本人頭髮長度體系、有無瀏海屬性與自然層次髮色；若使用者要求保留原圖服裝、配件或表情，則一併明確鎖定並自然延展；若使用者未要求保留原背景或原服裝，則不保留原圖背景與無關元素}。

【二、使用者指定風格、場景與構圖指令（完全依附使用者 Prompt）】
{完整保留並執行使用者輸入的 Prompt 內容，包含畫面比例、機位角度、場景背景、構圖比例、人物動作、表情、服裝道具與特殊透視風格}

【三、真實感防失真約束（確保風格實現同時臉部不失真）】
請在完整呈現上述使用者指定風格與構圖的前提下，確保人物臉部維持自然皮膚紋理、細微毛孔（natural skin texture, subtle pores）、真實眼神光（realistic catchlights）與真實衣物/環境光影質感；避免因特殊視角或風格詞導致五官扭曲、塑膠皮膚（no plastic skin）或卡通假人感。
```

#### English Template (Identity Lock Base + User's Custom Prompt)
```markdown
Use the uploaded photo as the authoritative identity reference and execute the user's custom prompt instructions below:

[1. Unbreakable Facial Identity Lock]
Strictly preserve the subject's authentic facial identity from the uploaded photo: face shape, facial proportions, brow-and-eye structure, eyes, nose, lips, jawline, skin tone, perceived age, hairline, and personal aura ({insert observed traits if photo is provided}). The face must remain 100% recognizable as the real person—no stranger swap, no generic influencer look, no westernized facial drift, no AI fake face.
- Hair & Selective Element Retention: {Keep original hair length tier, bangs attribute, and natural hair texture unless overridden by user; if the user's prompt asks to retain original clothing, accessories, or expression, lock and naturally extend them; discard original background unless requested}.

[2. User-Defined Style, Scene & Composition Instructions]
{Insert and preserve the user's exact prompt instructions: aspect ratio, camera angle, perspective, framing, background, lighting, pose, wardrobe, props, and mood}

[3. Photorealistic Likeness Guardrails]
While fulfilling all of the user's stylistic and compositional instructions above, maintain natural skin texture, subtle pores, realistic catchlights, and believable lighting/fabric textures on the subject so the facial identity never degrades into plastic skin or off-model distortion.
```

### Step 4: Dual-Track Execution

0. **Status Header (First Line of Reply)**: Always begin your response with `[Real-Me]: real-me-remix` (or `[Real-Me]: real-me-remix + <other-skill>` when combined) on the very first line so the user immediately knows this skill is active.
1. **Direct Image Generation**: If an image generation tool is available, execute it directly with the uploaded photo and the combined prompt.
2. **Bilingual Prompt Output**: Output the combined Chinese & English prompts so the user can see their exact instructions preserved and reinforced with the identity-lock guardrails.
