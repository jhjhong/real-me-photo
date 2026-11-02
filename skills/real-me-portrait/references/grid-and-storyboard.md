# Multi-Shot Storyboard, 3×3 Nine-Grid & 4×4 Camera Roll Guide (`real-me-portrait`)

> **CRITICAL RULE (Layout & Aspect Ratio)**: **By default, follow the layout, format, and aspect ratio of the user's uploaded photo**—do NOT force an unrequested `X×X` grid/collage (`2×2`, `3×3`, `4×4`) or override the aspect ratio unless the user explicitly specifies a grid, collage, or aspect ratio in their prompt.

When the user **explicitly requests** a multi-photo set or a collage grid (`3×3 九宮格` or `4×4 相冊拼貼`), AI models naturally become "lazy"—defaulting to the same 45° face angle, centered half-body standing pose, and polite smile across all panels. Use this reference to enforce **structural variety and candid momentum**.

---

## 1. Single-Shot Batch vs. Direct Grid Trade-off (單張連拍 vs. 直接生成九宮格)

- **For Maximum Facial Consistency & Detail**: Recommend generating **6 to 9 individual single portraits** using a shared Master Prefix Prompt (`統一總控前綴`) + individual Shot Prompts (`單張分鏡提示詞`), then assembling the grid.
- **For Quick Moodboard / One-Click Collage (`3×3` or `4×4`)**: Include an explicit panel-by-panel **Shot List (`分鏡表`)** inside the prompt and enforce anti-repetition rules.

---

## 2. Anti-Repetition & Candid Momentum Block (防 AI 偷懶與瞬間抓拍約束)

Always include this block when generating multi-shot sets or grids:

### Chinese Block
```markdown
【防重複與瞬間捕捉感控制】
請避免整組圖片出現相同角度、相同站位、相同構圖和相同姿勢的重複。每一格/每一張都要有明確區別，像同一次拍攝中不同鏡頭語言的精選成片，而不是同一張圖的重複變體。
- 瞬間抓拍感：動作像正在發生，而不是已經完成後靜止擺拍；表情像情緒剛剛流動出來；允許不完全看鏡頭、允許輕微不對稱、允許剛轉頭/剛低頭笑/笑容正在展開或剛收住的一瞬間。
- 眼神流向變化：包含直視鏡頭（平靜溫柔）、看向畫面外（若有所思）、閉眼輕笑（被逗樂瞬間）、低頭或抬眼觀察。
- 臉部角度與景別交替：混合近景特寫、半身、3/4 身、全身（坐姿/站姿/蹲姿），交替正面、半側臉、側臉、微低頭、回頭看等角度。
```

### English Block
```markdown
[Anti-Repetition & Candid Momentum Control]
Strictly avoid repeating the same camera angle, standing posture, centering, or expression across panels. Each frame must read as a distinct editorial select from a real photoshoot:
- Candid in-motion feel: Actions should look mid-motion rather than frozen poses; allow slight asymmetry, looking off-frame, mid-turn, or a laugh just unfolding.
- Varied framing & angles: Alternate between extreme close-ups, bust-up, half-body, 3/4-body, and full-body (standing, sitting, crouching), mixing frontal, 3/4 profile, side profile, and over-the-shoulder angles.
```

---

## 3. Modular Shot Reference Pool for Multi-Panel Grids (Dynamic Shuffle — Never Hardcode Fixed Panel Order)

> **Anti-Clone Rule (Do NOT Lock Panel 1 to a Fixed Pose)**:
> - **Never hardcode "Panel 1 must be a frontal bust shot, Panel 2 must be eyes closed, etc."** Locking fixed panel numbers causes repeated generations to look identical every single time.
> - If the user specifies their own panel ideas, follow the user's instructions 100%. If the user asks for a `3×3` grid or multi-shot set without specifying every frame, treat the conditions below as a **dynamic, shuffleable reference pool**—randomly reorder panel positions, mix and match framing + angle + expression on each generation, and adapt actions organically to the user's theme so every generation feels fresh and unique:

- **[Close-Up Bust × Direct Gaze]**: Close-up bust framing, facing the lens with a subtle smile or calm warm eye contact, natural relaxed hand placement.
- **[Half-Body × Eyes Closed in the Moment]**: Half-body framing, eyes gently closed feeling the breeze, sunlight, or interacting naturally with the environment/prop.
- **[Extreme Close-Up × Expressive Micro-Moment]**: Tight focus on facial features and eye catchlights, playful micro-expression, or windblown hair strands across the cheek.
- **[Full-Body Standing × Dynamic Side/Walking Angle]**: Full-body framing, body angled slightly sideways or caught mid-stride, effortless posture.
- **[3/4-Body × Off-Camera Daydream]**: 3/4-body framing, gazing off-frame in a quiet, thoughtful, or unposed candid moment.
- **[Medium Close-Up × Over-the-Shoulder Look-Back or Spontaneous Laugh]**: Medium close-up turning back toward the camera over the shoulder, or caught mid-laugh.
- **[Full-Body Seated × Extended Spatial Framing]**: Seated casually on the floor, steps, chair, or ledge with relaxed leg/arm extension and breathing room.
- **[Crouching / High-Low Angle × Foreground Depth Occlusion]**: Crouching posture or using a foreground element/prop to subtly frame a corner of the shot while looking toward the lens.
- **[Half/3/4-Body × Calm Observant Contrast]**: A quieter, more composed observant gaze that contrasts with the livelier frames in the set.

---

## 4. Sample 4×4 Vintage Camera-Roll / Travel Dump Preset (4×4 手機隨手拍相冊模板)

When the user asks for an **"iPhone camera roll / Instagram dump / 旅遊隨手拍相冊"**:
- **Layout**: `4×4 collage (16 panels), thin black borders on a black background, casual album layout (not commercial poster typography)`.
- **Optical Texture**: `Nostalgic 2016–2021 iPhone & disposable film camera aesthetic (Kodak/Fuji disposable film feel), subtle film grain, slight motion blur, occasional overexposure in bright sun, warm highlights, slightly faded blacks, imperfect candid framing`.
- **Hand Safety Rule for Dense Grids**: In 16-panel grids, explicitly instruct: `Keep hands simple and natural (resting at sides, holding a cup/phone, in pockets); avoid complex finger intertwining or hands pressing heavily against eyes/mouth to prevent finger distortion across small panels.`
