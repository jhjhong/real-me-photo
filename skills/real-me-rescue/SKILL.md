---
name: real-me-rescue
description: >-
  Use this skill when the user complains that an AI-generated or retouched
  photo does not look like them, looks like a fake influencer/plastic face,
  has repetitive poses, or wants you to diagnose and fix a flawed portrait
  prompt (e.g., "為什麼生出來不像我？", "這張圖太假太像網紅臉了幫我改",
  "幫我診斷並優化這段生圖 Prompt", "fix my portrait prompt so it looks like me").
---

# Real-Me Rescue (Off-Model Portrait Diagnosis & Prompt Refactoring Doctor)

When users try to generate AI portraits on their own, they frequently hit a wall: the result is "pretty, but a total stranger," "stuck with the original messy background," or "stiff like a cheap photo studio sample."

This skill acts as an **AI Portrait Diagnostic Doctor**. It systematically audits the user's failed output image, original reference photo, and/or flawed prompt against the **12-Module Diagnostic Standard (`M01–M12`) + Open-Ended Contextual Check**, explains *exactly* why the model drifted, and outputs a patched prompt (plus a freshly regenerated image from the original reference photo if an image tool is available).

## When to Activate

Activate this skill when the user's natural language request expresses frustration with an AI portrait result or asks for prompt optimization:
- "Why doesn't this AI photo look like me? (`為什麼總出圖不像本人？`)"
- "It kept my original messy room / black shirt instead of making a new photoshoot (`為什麼還是保留原圖背景和衣服？`)"
- "The skin looks like plastic / an influencer filter (`皮膚太假、太像網紅臉`)"
- "All 9 panels in my grid have the exact same angle and smile (`九宮格動作表情都一樣`)"
- "Can you optimize/rewrite my portrait prompt? (`幫我改寫優化這段人像提示詞`)"

---

## Step-by-Step Workflow

### Step 1: Run the 12-Module Standard Audit + Open-Ended Check

> **Diagnostic Rule (Standard Baseline + Open-Ended Scope)**:
> Treat **Modules `M01–M12`** below as your **mandatory baseline inspection criteria**—systematically verify each relevant dimension when comparing the original photo, failed AI output, and prompt. However, diagnosis is **NOT limited to these 12 items**: if you observe any additional visual anomaly or custom-prompt discrepancy (e.g., wrong prop, broken perspective, wardrobe error), diagnose and fix it alongside the triggered `M01–M12` modules.

Consult [diagnostic-checklist.md](./references/diagnostic-checklist.md) for the exact fix snippets, and inspect against these criteria:

1. **`M01` — Scene & Outfit Isolation (`原圖場景與穿搭隔離／保留檢查`)**
   - *Inspection Criteria*: Check whether a new photoshoot accidentally retained the original room, table, clothes, or posture—or conversely, whether an in-place retouch accidentally altered the original background/outfit.
2. **`M02` — 10-Point Facial Bone & Feature Geometry (`10 點五官骨相與比例檢查`)**
   - *Inspection Criteria*: Compare face shape, facial proportions, brow-and-eye structure, eye fold/spacing, nose bridge/tip, lip thickness, and jawline against the original photo. Check if the AI substituted a V-chin/big-eyed influencer face or westernized features.
3. **`M03` — Perceived Age, Skin Tone & Personal Aura (`年齡感、原生膚色與氣質檢查`)**
   - *Inspection Criteria*: Check whether a mature/calm subject was made overly juvenile (`幼態化`) or aged, or whether natural warm/olive skin was bleached into pale cold-white skin (`假白冷白皮`).
4. **`M04` — Hairline & 3-Variable Hairstyle Check (`髮際線與髮型 3 變數檢查`)**
   - *Inspection Criteria*: Check (1) hairline height/shape, (2) hair length tier, (3) bangs vs. bare forehead conflict, and (4) whether dark hair became a flat dead-black helmet (`死黑假髮塊`) instead of layered `deep brown-black / dark tea-brown` with natural flyaway hairs.
5. **`M05` — Skin Micro-Texture & Catchlights (`真實膚質肌理與眼神光檢查`)**
   - *Inspection Criteria*: Check for waxy airbrushed plastic skin (`塑膠磨皮肌`), erased pores, blown-out oily shine, or lifeless eyes missing realistic catchlights.
6. **`M06` — Gaze Flow & Candid Micro-Expression (`眼神流向與動態微表情檢查`)**
   - *Inspection Criteria*: Check if the subject is staring blankly with a frozen studio catalog smile (`影樓假笑`) instead of an in-motion candid moment with natural facial relaxation.
7. **`M07` — Focal Length & Perspective Distortion (`鏡頭焦段與臉部透視變形檢查`)**
   - *Inspection Criteria*: Check for wide-angle facial distortion (enlarged nose/head) due to missing focal length anchors (`35mm/50mm/85mm`), or fake cutout Gaussian blur instead of natural optical bokeh (`f/1.8–f/4`).
8. **`M08` — Lighting Direction & Composite Blending (`光線方向與明暗融合檢查`)**
   - *Inspection Criteria*: Check for flat front-lit "pancake face" (`平光大餅臉`), harsh overhead eye shadows (`頂光黑眼圈`), or mismatched lighting direction between the face and background (`摳圖貼臉感`).
9. **`M09` — Color Grade & Filter Overload (`色調失真與濾鏡過載檢查`)**
   - *Inspection Criteria*: Check if unrequested heavy yellow/green vintage filters, oversaturated neon casts, or stacked conflicting film stocks distorted natural skin tones.
10. **`M10` — Multi-Panel Grid & Pose Diversity (`九宮格／多圖分鏡防複讀檢查`)**
    - *Inspection Criteria*: In `3×3` or `4×4` grids, check whether panels repeat the same 45° angle, half-body framing, and identical smile due to a missing panel-by-panel Shot List.
11. **`M11` — Duo Spatial Coordinates & Hand Ownership (`雙人空間站位與手部歸屬檢查`)**
    - *Inspection Criteria*: In two-person shots, check for floating/clipping arms, ambiguous left/right hand ownership, or facial blending where both people start looking like siblings (`雙人臉部同質化`).
12. **`M12` — Adult Head-to-Body & Limb Proportions (`成年人頭身比例與肢體結構檢查`)**
    - *Inspection Criteria*: Check for "lollipop head" juvenile proportions (`頭大身小比例崩壞`), compressed shoulder width, unnatural neck length, or distorted fingers.
13. **`+ Open-Ended Contextual Check` (`開放式自訂情境與異常診斷`)**
    - *Inspection Criteria*: Inspect any custom user instructions (special camera angles, specific props, actions, outfits, or composition rules) for omissions, hallucinations, or structural breakdowns not covered by `M01–M12`.

### Step 2: Present a Concise "Diagnosis + Prescription" Report

Show the user **2 to 5 concise bullet points** citing the triggered module codes (e.g., `[M02 五官骨相]`, `[M04 髮型變數]`, `[M05 膚質肌理]`, or `[自訂情境]`), explaining what caused their issue (`問題診斷`) and what specific controls you injected to fix it (`修復處方`).

### Step 3: Output the Refactored Prompt & Regenerate (Dual-Track)

> **Non-Intrusive Refactoring Rule**: When rewriting the user's prompt, **preserve 100% of their intended style, scene, framing, perspective, and creative direction**. Only inject or repair the missing identity-lock, hair-variable, optical, spatial, or skin-realism clauses that caused the failure—never replace the user's theme with an unrelated style!

0. **Status Header (First Line of Reply)**: Always begin your response with `[Real-Me]: real-me-rescue` on the very first line so the user immediately knows this skill is active.
1. **Refactored Bilingual Prompts**: Provide the complete, patched **Chinese** and **English** prompts with the missing modules cleanly integrated.
2. **Direct Regeneration from Original Reference Photo (Never Edit the Failed Output)**:
   - **CRITICAL**: Always bind the user's **original real reference photo** as the identity source when running the patched prompt—**never** perform an in-place edit or img2img on top of the failed AI output image (because the user's true 10-point facial identity is already lost/drifted in that failed image).
   - If the user's original reference photo is present in the conversation and an image tool is available, immediately regenerate a fresh image from the original photo using the patched prompt. If the user only uploaded the failed AI image, output the patched prompt and ask them to attach their original real photo so you can regenerate it accurately.
