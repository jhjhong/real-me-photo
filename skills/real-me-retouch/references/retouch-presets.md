# Retouching & Color Enhancement Presets (`real-me-retouch`)

Use this reference when selecting specific skin, lighting, and color grading adjustments for **Mode 1 (In-Place Photo Retouching)**.

---

## 1. Skin Texture & Facial Polish Levels (膚質精修分級表 — 反塑膠假臉)

> **Layout & Aspect Ratio Rule**: All skin texture levels and scenarios below **default to the layout, format, and aspect ratio of the user's uploaded photo** (do NOT force an unrequested `X×X` grid/collage or override the original aspect ratio unless the user explicitly specifies a layout or ratio in their prompt). Match the skin micro-texture description to the user's photo context or requested scenario:

| 等級 (Level) | 適用場景 (Use Cases) | 中文提示詞片段 (Chinese Prompt Snippet) | 英文提示詞片段 (English Prompt Snippet) |
| :--- | :--- | :--- | :--- |
| **1. 紀實原生肌 (Documentary Natural)** | Street snaps, daily candid photos, male portraits, B&W documentary, subtle zero-retouch-trace fixes (街頭抓拍、日常隨手拍、男性人像、人文紀實) | 僅淡化臨時痘印與暗沉，完整保留原生皮膚肌理、細微毛孔、真實膚色明暗過渡與輕微面部不對稱感，呈現零修圖痕跡的真實相機直出質感 | Retain raw authentic skin texture, visible subtle pores, natural skin tone variations, and slight facial asymmetry; remove only temporary blemishes for an unretouched camera-raw feel |
| **2. 雜誌通透肌 (Editorial Clean — 推薦預設)** | Daily lifestyle photos, founder/professional headshots, resumes, social media avatars (日常生活照、職場形象照、社群大頭貼) | 清透真實底妝質感，消除雜亂油光、眼下黑影與疲態，保留細膩皮膚紋理、真實毛孔與自然高光過渡，膚色乾淨均勻，不磨皮不假白 | Clean editorial skin polish, even out blotchy shadows and under-eye fatigue while preserving natural skin texture, subtle pores, and soft highlight roll-off; never airbrushed or artificially whitened |
| **3. 清透奶油肌 (Creamy Studio Glow)** | Korean-style portraits, youthful selfies, beauty close-ups, clean studio portraits (韓系棚拍、少女自拍、美妝近景特寫) | 清透奶油肌質感，皮膚細膩通透帶有柔和微光澤，保留自然真實肌理與細微毛孔，眼下與鼻翼過渡乾淨，不呈現塑膠感或假面磨皮感 | Translucent creamy skin finish with a healthy dewy glow, clean under-eye and nasal transitions, refined yet believable skin micro-texture, never plastic or waxy |
| **4. 陽光海風隨手拍肌 (Sun-Kissed Travel & Live Candid)** | Coastal breeze, outdoor travel snapshots, street strolls, afternoon cafés, single live-photo camera-roll shots (海邊吹風、戶外旅行隨手拍、街角散步、單張原況生活照) | 陽光自然親吻的通透膚質，保留真實臉部微絨毛、細微毛孔與戶外自然紅潤血色感，高光溫暖通透、暗部柔和不死黑，呈現真實手機／相機抓拍的生動呼吸感 | Sun-kissed natural outdoor skin texture with subtle facial vellus hair, visible fine pores, and healthy warm blood-flow flush; organic highlight roll-off and candid live-snapshot realism |
| **5. 窗光次表面透光肌 (Window-Light Subsurface Translucent)** | Window-side natural light, effortless French/morning home portraits, forest/garden backlight, soft emotional close-ups (窗邊自然光、法式慵懶晨間寫真、森林逆光) | 柔和側逆光下的次表面散射（Subsurface Scattering）通透膚質，光線輕微穿透肌膚邊緣呈現溫潤絨感，保留原生細膩毛孔與自然唇部紋理，氛圍鬆弛溫柔 | Soft subsurface scattering (SSS) skin translucency under natural window or backlit daylight, velvety skin edge glow, visible fine pores, and natural lip texture with an effortless, relaxed mood |
| **6. 運動活力微汗肌 (Athletic & Vitality Micro-Dew)** | Gym/yoga, outdoor sports, paddleboarding, summer activities, energetic lifestyle portraits (健身瑜伽、水上運動、戶外陽光活力人像) | 健康緊緻的原生運動膚質，保留真實毛孔與肌膚在自然光下的細微水潤汗光（micro-perspiration sheen），展現真實肌肉與骨骼立體光影，拒絕乾燥粉感與假面磨皮 | Healthy, toned athletic skin texture with realistic pores and a subtle, natural micro-perspiration sheen catching the light; authentic bone and muscle contour highlights without powdery or plastic smoothing |
| **7. 閃光燈／夜間冷調實拍肌 (Direct-Flash & Night Candid Skin)** | Night street snaps, party/dinner gatherings, CCD/film direct-flash candids, bar/low-light single shots (夜間街拍、派對慶生、CCD 直閃抓拍、微光人像) | 直閃或夜間環境光下的真實肌膚反光質感，保留鼻樑、顴骨與額頭的自然高光點與清晰毛孔肌理，修正暗部混亂噪點與偏色，呈現冷調俐落、真實不油膩的底片直閃感 | Crisp direct-flash or night ambient skin reflection, preserving natural specular highlights on cheekbones and nose bridge with sharp pore micro-texture; clean shadow noise without greasy or plastic shine |
| **8. 晚宴燭光絲緞肌 (Evening & Candlelight Satin Polish)** | Vintage gala, Hepburn/heiress birthday portraits, bridal shoots, candlelight dinners, dramatic chiaroscuro portraits (復古晚宴、禮服生日儀式感、婚紗、燭光人像) | 暖調燭光與戲劇光影下的高級絲緞膚質，立體展現顴骨與下頜骨相高光，暗部深邃乾淨，保留細膩真實的肌膚紋理與眼神光，兼具精緻貴氣與真實攝影質感 | Luxurious satin skin finish under warm candlelight or dramatic chiaroscuro lighting, sculpted cheekbone and jawline highlights, clean deep shadows, and intact fine skin micro-texture |

---

## 2. In-Place Lighting Rescue (原圖光影拯救模組)

When the user's original photo suffers from bad lighting (e.g., harsh overhead indoor light, muddy phone shadow, or flat backlighting), insert one of these targeted fixes:

- **Fix Harsh Indoor / Overhead Shadows (改善頂光/室內暗沉)**:
  - **ZH**: `柔化臉部生硬的頂光陰影與法令紋暗影，在正面補充柔和均勻的自然窗光感，讓面部受光乾淨立體，同時在眼中保留清澈自然的眼神光。`
  - **EN**: `Soften harsh overhead shadows around the eyes and nasolabial folds, add gentle diffused front-side fill light, and restore crisp, realistic catchlights in the eyes.`
- **Fix Muddy Night / Low-Light Noise (改善夜景噪點與混亂色偏)**:
  - **ZH**: `清理暗部雜亂彩色噪點，修正臉部不自然的霓虹或黃光偏色，讓混合光源下的膚色恢復乾淨真實，高光柔和不溢出。`
  - **EN**: `Clean up muddy chroma noise in the shadows, rebalance unnatural color casts on the skin under mixed lighting, and maintain restrained highlight glow.`
- **Enhance Golden Hour / Daylight Warmth (強化自然陽光氛圍)**:
  - **ZH**: `強化柔和的自然日光與髮絲邊緣光，讓高光呈現溫暖通透的過渡，背景與人物光影自然融合。`
  - **EN**: `Enhance warm natural daylight and subtle hair rim lighting with smooth, organic highlight roll-off.`

---

## 3. Optional Color Grading Profiles (ONLY Use When Explicitly Requested by the User)

> **Strict Rule**: By default in `real-me-retouch`, **preserve the original photo's authentic color balance and do NOT apply any film filter**. Only use one of the profiles below if the user explicitly asks for a specific filter or color tone in their prompt:

1. **Kodak Portra 400 (柔和膠片生活感)**
   - Warm, flattering skin tones, gentle contrast, subtle organic grain. Ideal for café, travel, and daily selfies.
2. **Fujifilm Classic Chrome (低飽和都市雜誌感)**
   - Muted saturation, slightly cool/neutral shadows, understated editorial mood. Ideal for urban, streetwear, and overcast photos.
3. **Neutral Editorial Tone (乾淨中性商業/職場感)**
   - True-to-life skin tones, balanced white balance, crisp contrast. Ideal for founder portraits, LinkedIn headshots, and clean studio shots.
4. **Kodak Gold 200 (溫暖陽光微復古)**
   - Golden highlights, nostalgic warm cast, lively summer/outdoor atmosphere.
5. **Ilford HP5 Monochrome (黑白紀實顆粒感)**
   - Rich tonal range, organic silver-halide grain, expressive contrast emphasizing gaze and facial structure.
6. **Vintage iPhone / Disposable Film (千禧/舊手機隨手拍感)**
   - Slight highlight bloom, faded blacks, warm nostalgic color shift, authentic candid snapshot texture (great when the user wants a "less AI, more real camera roll" vibe).
