# User-Prompt Alignment Rules & Optional Creative Vocabulary (`real-me-remix`)

Use this reference to ensure that **any custom prompt or creative instruction supplied by the user** is faithfully executed without breaking the subject's authentic facial identity.

---

## 1. Universal Alignment Rules (How to Attach Any User Prompt Without Overriding It)

Never force a pre-defined style onto the user. Instead, adapt the identity-lock layer around the user's instructions using these three universal rules:

### Rule A: Selective Element Retention (`依使用者指令決定原圖元素去留`)
- **When the user's prompt asks to KEEP original clothing, accessories, or expression**:
  - Lock the observed garment style, colors, accessories, and facial expression from the reference photo.
  - If the reference photo is a close-up/half-body selfie and the user's prompt requests a full-body framing, instruct the model to **naturally extend the lower-body outfit and footwear in a style consistent with the original top**, while discarding only the original background.
- **When the user's prompt defines a NEW scene/wardrobe (or does not ask to keep original clothes)**:
  - Isolate the reference photo strictly for facial identity and hairstyle foundation; discard the original background, outfit, and posture so the user's new concept can take over cleanly.

### Rule B: Protecting Facial Likeness Under Extreme Angles or Stylized Proportions (`特殊視角與比例下的鎖臉防失真原則`)
- If the user's prompt intentionally requests extreme camera angles (e.g., overhead top-down, low-angle, fisheye, wide-angle) or stylized optical proportions:
  - **Do NOT cancel out the user's requested perspective or proportion.**
  - Instead, anchor the effect in **real optical camera perspective** while explicitly locking **100% realistic human facial bone structure, eye-nose-lip proportions, natural skin micro-texture (`subtle pores`), and realistic catchlights**, preventing the model from drifting into cartoon/chibi/plastic doll rendering.

### Rule C: Non-Intrusive Prompt Handling (`不干預使用者原始風格說明`)
- **Detailed User Prompt**: If the user pastes a complete, structured prompt, preserve their scene, framing, ratio, lighting, and style instructions verbatim—only injecting the 10-point facial identity & realism guardrails.
- **Brief User Keywords**: Only when the user gives a short, open-ended idea and wants creative elaboration should you draw from the optional vocabulary bank below.

---

## 2. Optional Creative Vocabulary Bank (Only Use When User Requests Elaboration)

When a user provides only a brief keyword (e.g., *"make it playful with some props"* or *"give it a retro night vibe"*) and wants you to flesh out the details, you may optionally use:

- **Visual Memory Hook Props (`道具記憶點 — 請二創設計不照搬參考圖`)**:
  - Everyday & Lifestyle: Coffee cup, vintage film camera, wired earphones, bouquet, vinyl record, books, street food, boba tea.
  - Playful & Youthful: Cotton candy, bubble machine, translucent hair clips, beaded rings, popsicle, plushie, dessert cup.
- **Candid In-Motion Micro-Expressions (`自然瞬間微表情 — 避免僵硬樣片假笑`)**:
  - Caught mid-laugh, subtle wink, resting chin on hand, looking back over shoulder, eyes gently closed enjoying the breeze, or calm observant gaze contrasting with a playful prop.
