# 12-Module Diagnostic Checklist & Before/After Fixes (`real-me-rescue`)

Use this lookup table when diagnosing why a user's portrait prompt or generated image failed.
**`M01–M12` are the mandatory standard inspection criteria**, and **`+ Custom` covers any open-ended user-specific scene/prop/perspective anomalies**.

---

## 1. 12-Module Standard Inspection & Fix Matrix (12 大標準檢查指標與急救處方表)

| Code & Module | Inspection Criteria (明確檢查標準：看圖／看 Prompt 查什麼？) | Mandatory Fix Snippet (必加急救處方模組) |
| :--- | :--- | :--- |
| **`M01` Scene & Outfit Isolation**<br>(`原圖場景與穿搭隔離／保留`) | Did a new photoshoot keep the original messy room, table, clothes, or posture? Or did an in-place retouch alter the original background? | **Scene Isolation Prefix**: `請只把上傳照片作為人物身分參考，用於保留本人真實長相。不要保留原照片裡的背景、衣服、道具、坐姿、拍攝環境和原始構圖。請重新生成一張全新的寫真。` *(For retouch: lock original scene/outfit).* |
| **`M02` 10-Point Facial Geometry**<br>(`10 點五官骨相與比例`) | Did face shape, facial proportions, brow/eye structure, eye spacing, nose bridge/tip, lip thickness, or jawline drift into a V-chin influencer or westernized face? | **10-Point Facial Bone & Feature Lock**: `請嚴格保留人物真實身分特徵，包括臉型、三庭五眼比例、眉眼結構、眼睛形狀與眼摺、鼻樑與鼻頭、嘴唇厚薄與下頜線。不要把人物變成陌生人，不要歐美化，不要網紅臉化，不要生成 AI 假臉。` |
| **`M03` Age, Skin Tone & Aura**<br>(`年齡感、原生膚色與氣質`) | Was a mature/calm person made overly juvenile (`幼態化`) or aged? Was natural warm/olive skin bleached into pale cold-white skin (`假白冷白皮`)? | **Age, Skin Tone & Aura Lock**: `嚴格維持原圖人物的真實年齡感、原生自然膚色（禁止漂白成假白冷白皮）與個人氣質（{填入觀察到的氣質}），避免幼態化或過度醫美感。` |
| **`M04` Hairline & 3-Variable Hair**<br>(`髮際線與髮型 3 變數`) | Did hairline height/shape change? Were unrequested bangs added to a bare forehead? Did "black hair" turn into a flat dead-black helmet (`死黑假髮塊`)? | **Hairline & 3-Variable Hair Fix**: `保留原圖真實髮際線、頭髮長度體系與有無瀏海屬性（無瀏海絕不強加瀏海）。若原圖為黑髮，請不要生成純黑或死黑頭髮，請處理為具層次感與通透感的深棕黑、黑茶色或柔和深咖色，並帶自然微碎髮（natural flyaway hairs）。` |
| **`M05` Skin Texture & Catchlights**<br>(`真實膚質肌理與眼神光`) | Is the skin waxy/airbrushed (`塑膠磨皮肌`) without pores? Are forehead/nose highlights oily and blown out? Are the eyes dull without catchlights? | **Realism Landmarks**: `重點呈現自然皮膚紋理、細微毛孔（natural skin texture, subtle pores）、真實眼神光（realistic catchlights in the eyes）、柔和自然高光過渡（smooth highlight roll-off），拒絕過度磨皮美顏與塑膠皮膚（no plastic skin）。` |
| **`M06` Gaze Flow & Candid Motion**<br>(`眼神流向與動態微表情`) | Is the subject staring blankly with a frozen studio smile (`影樓假笑`) instead of a candid mid-motion moment? | **Candid Momentum & Gaze Fix**: `動作像正在發生而非完成後靜止擺拍；表情像情緒剛剛流動出來，允許自然微不對稱，允許笑容正在展開或剛收住的一瞬間，眼神自然柔和有溫度。` |
| **`M07` Focal Length & Perspective**<br>(`鏡頭焦段與臉部透視變形`) | Did wide-angle distortion enlarge the nose/head? Or did a fake cutout Gaussian blur replace natural optical bokeh? | **Optical Lens & Bokeh Lock**: `呈現 {50mm / 85mm} 標準人像鏡頭透視感與 {f/2 / f/2.8} 自然景深，避免廣角臉部邊緣變形或大鼻頭畸變，背景呈現真實光學散景（natural optical bokeh）而非假摳圖模糊。` |
| **`M08` Lighting & Blending**<br>(`光線方向與明暗融合度`) | Is the face flatly front-lit (`平光大餅臉`), shadowed by harsh overhead light (`頂光黑眼圈`), or lit from a direction that clashes with the background (`摳圖貼臉感`)? | **Directional Lighting & Roll-Off Fix**: `採用方向明確的柔和光線（如左側自然窗光或柔光箱漫射光），讓臉部受光方向與環境光完全一致，陰影過渡柔和立體，消除頂光眼下黑影與生硬合成貼圖感。` |
| **`M09` Color Grade & Filter Drift**<br>(`色調失真與濾鏡過載`) | Did the AI apply an unrequested heavy yellow/green cast, oversaturated neon tint, or stacked conflicting film stocks that muddied skin tones? | **True-to-Life Color / Single Film Anchor**: `{預設：維持原圖自然真實的攝影色彩與乾淨通透膚色，不套用未指定的濃重濾鏡；或僅錨定單一底片色調如 Kodak Portra 400，避免多重濾鏡疊加造成色偏}。` |
| **`M10` Multi-Panel Grid Diversity**<br>(`九宮格／多圖分鏡防複讀`) | In `3×3` or `4×4` grids, do multiple panels repeat the exact same 45° angle, half-body framing, and identical smile? | **Explicit Shot List + Anti-Repetition Rule**: `請避免整組圖片出現相同角度、相同站位、相同構圖和相同姿勢的重複。` + Inject explicit per-panel framing (Close-up / Half-body / Full-body / Profile / Looking back / Candid). |
| **`M11` Duo Spatial & Hand Ownership**<br>(`雙人空間站位與手部歸屬`) | In couple/duo photos, are arms clipping, is left/right hand ownership ambiguous, or are both faces blending into each other (`雙人臉部同質化`)? | **Duo Spatial & Independent Identity Lock**: `分別獨立鎖定人物 A 與人物 B 的五官特徵（禁止雙人臉部同質化），並明確定義：{誰在左側/右側/前景/後景，誰用左手/右手接觸哪個具體部位，以及非對稱眼神流向}。` |
| **`M12` Adult Proportions & Anatomy**<br>(`成年人頭身與肢體比例`) | Is the head-to-shoulder ratio lollipop-sized (`頭大身小幼態比例`), neck unnatural, or fingers/limbs distorted? | **Adult Proportion & Anatomy Lock**: `請特別注意臉部比例、頭身比例、肩寬、脖頸長度、手臂長度與手掌大小皆符合真實成年人自然協調比例，身體接觸符合真實透視結構，禁止頭大身小、手臂穿模或手指變形。` |
| **`+ Custom` Open-Ended Check**<br>(`開放式自訂情境與異常診斷`) | Did the output miss or distort any user-specified camera angle (high/low angle), prop, wardrobe detail, or special creative instruction? | **Custom Instruction Reinforcement**: Explicitly reinforce the user's missed or distorted custom instruction while keeping the facial identity and optical realism guardrails intact. |

---

## 2. Before vs. After Prompt Refactoring Example (重構前後對比範例)

### ❌ Before (Typical Flawed User Prompt)
> "幫我用這張照片生成一張很有高級感、電影感、韓系膠片感的咖啡廳美女寫真，要像我本人，高清真實，長黑髮空氣瀏海。"
> *(Triggered Diagnostic Codes: `[M01]` missing scene isolation, `[M02/M03]` "美女" triggers generic influencer face & pale skin, `[M04]` forces "long black hair + air bangs" which clashes with user's hairline and creates dead-black hair, `[M05/M07/M08]` vague buzzwords "高級感/電影感/高清" instead of optical & skin-texture anchors.)*

### ✅ After (Refactored by `real-me-rescue`)
```markdown
請只把上傳照片作為人物身分參考，用於保留本人真實長相。不要保留原照片裡的背景、衣服、坐姿和原始構圖。請重新生成一張全新的「韓系膠片感咖啡廳生活方式人像」。

【身分與髮型鎖定（M02 / M03 / M04）】
請嚴格保留人物真實身分特徵，包括臉型、三庭五眼比例、眉眼結構、眼睛、鼻子、嘴唇、原生膚色、真實年齡感、髮際線和整體氣質。
保持原圖的頭髮長度體系與有無瀏海特徵，髮色處理為具層次感與通透感的深棕黑或黑茶色（避免純黑死黑），保留自然微碎髮。

【攝影企劃與光學細節（M05 / M06 / M07 / M08 / M09）】
半身構圖（half-body framing），略高機位（slightly high angle），呈現 50mm 鏡頭感與 f/2 景深感。左側大窗自然柔光（soft natural window light），人物受光方向與環境光一致，溫暖柔和陰影過渡。整體色調錨定單一 Kodak Portra 400 膠片色調。人物表情自然鬆弛，像在咖啡廳交談間剛轉頭微笑的抓拍瞬間。
重點呈現自然皮膚紋理、細微毛孔（subtle pores）、真實眼神光（realistic catchlights）、真實針織布料紋理與光學背景散景。

【負面約束】
不要把人物變成陌生人，不要歐美化，不要網紅臉，不要過度美顏磨皮，不要塑膠皮膚（no plastic skin），不要假白冷白皮，不要生成 AI 假臉，不要手部變形。
```
