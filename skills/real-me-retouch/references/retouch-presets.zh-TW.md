# 原圖修圖與色調強化預設庫 (`retouch-presets.zh-TW.md`)

當執行 **方向 1（`real-me-retouch` 原圖修圖美化）** 時，可從以下三個模組挑選對應的膚質、光影拯救與單一色調錨點。

---

## 1. 膚質精修分級表（反塑膠假臉）

> **版式與比例原則**：以下所有膚質等級與適用場景，**預設皆以使用者上傳的照片版式、格式與長寬比例為主**（不限定或擅自改為 `X×X` 拼貼圖，也不強制改動照片比例），除非使用者在自行添加的 Prompt 中明確指定版式或比例。可依據使用者原圖場景或指定情境，自動匹配最合適的真實膚質描述：

| 等級 | 適用場景 | 中文提示詞片段 | 英文提示詞片段 |
| :--- | :--- | :--- | :--- |
| **1. 紀實原生肌 (Documentary Natural)** | 街頭抓拍、日常隨手拍、男性人像、黑白／人文紀實照、不希望看出修圖痕跡的原圖微調 | 僅淡化臨時痘印與暗沉，完整保留原生皮膚肌理、細微毛孔、真實膚色明暗過渡與輕微面部不對稱感，呈現零修圖痕跡的真實相機直出質感 | Retain raw authentic skin texture, visible subtle pores, natural skin tone variations, and slight facial asymmetry; remove only temporary blemishes for an unretouched camera-raw feel |
| **2. 雜誌通透肌 (Editorial Clean — 推薦預設)** | 日常生活照、職場／創業家形象照、履歷頭像、社群大頭貼、乾淨半身照 | 清透真實底妝質感，消除雜亂油光、眼下黑影與疲態，保留細膩皮膚紋理、真實毛孔與自然高光過渡，膚色乾淨均勻，不磨皮不假白 | Clean editorial skin polish, even out blotchy shadows and under-eye fatigue while preserving natural skin texture, subtle pores, and soft highlight roll-off; never airbrushed or artificially whitened |
| **3. 清透奶油肌 (Creamy Studio Glow)** | 韓系棚拍寫真、少女自拍、美妝近景特寫、乾淨室內人像、日常精緻自拍 | 清透奶油肌質感，皮膚細膩通透帶有柔和微光澤，保留自然真實肌理與細微毛孔，眼下與鼻翼過渡乾淨，不呈現塑膠感或假面磨皮感 | Translucent creamy skin finish with a healthy dewy glow, clean under-eye and nasal transitions, refined yet believable skin micro-texture, never plastic or waxy |
| **4. 陽光海風隨手拍肌 (Sun-Kissed Travel & Live Candid)** | 海邊吹風、戶外旅行隨手拍、街角散步、午後咖啡廳、單張手機原況感（Live Photo）生活照（不限拼貼圖，單張即具真實相冊感） | 陽光自然親吻的通透膚質，保留真實臉部微絨毛、細微毛孔與戶外自然紅潤血色感，高光溫暖通透、暗部柔和不死黑，呈現真實手機／相機抓拍的生動呼吸感 | Sun-kissed natural outdoor skin texture with subtle facial vellus hair, visible fine pores, and healthy warm blood-flow flush; organic highlight roll-off and candid live-snapshot realism |
| **5. 窗光次表面透光肌 (Window-Light Subsurface Translucent)** | 窗邊自然光人像、法式慵懶居家／晨間寫真、森林／花園逆光、溫柔情緒特寫 | 柔和側逆光下的次表面散射（Subsurface Scattering）通透膚質，光線輕微穿透肌膚邊緣呈現溫潤絨感，保留原生細膩毛孔與自然唇部紋理，氛圍鬆弛溫柔 | Soft subsurface scattering (SSS) skin translucency under natural window or backlit daylight, velvety skin edge glow, visible fine pores, and natural lip texture with an effortless, relaxed mood |
| **6. 運動活力微汗肌 (Athletic & Vitality Micro-Dew)** | 健身房／瑜伽、戶外運動、水上槳板、夏日陽光活動、充滿生命力的健康人像 | 健康緊緻的原生運動膚質，保留真實毛孔與肌膚在自然光下的細微水潤汗光（micro-perspiration sheen），展現真實肌肉與骨骼立體光影，拒絕乾燥粉感與假面磨皮 | Healthy, toned athletic skin texture with realistic pores and a subtle, natural micro-perspiration sheen catching the light; authentic bone and muscle contour highlights without powdery or plastic smoothing |
| **7. 閃光燈／夜間冷調實拍肌 (Direct-Flash & Night Candid Skin)** | 夜間街拍、派對／餐廳聚會、CCD／底片機直閃抓拍、KTV／酒吧微光單張人像 | 直閃或夜間環境光下的真實肌膚反光質感，保留鼻樑、顴骨與額頭的自然高光點與清晰毛孔肌理，修正暗部混亂噪點與偏色，呈現冷調俐落、真實不油膩的底片直閃感 | Crisp direct-flash or night ambient skin reflection, preserving natural specular highlights on cheekbones and nose bridge with sharp pore micro-texture; clean shadow noise without greasy or plastic shine |
| **8. 晚宴燭光絲緞肌 (Evening & Candlelight Satin Polish)** | 復古晚宴、禮服／千金生日儀式感、婚紗寫真、燭光餐廳、高反差戲劇光影人像 | 暖調燭光與戲劇光影下的高級絲緞膚質，立體展現顴骨與下頜骨相高光，暗部深邃乾淨，保留細膩真實的肌膚紋理與眼神光，兼具精緻貴氣與真實攝影質感 | Luxurious satin skin finish under warm candlelight or dramatic chiaroscuro lighting, sculpted cheekbone and jawline highlights, clean deep shadows, and intact fine skin micro-texture |

---

## 2. 原圖光影拯救模組（修正壞光線）

當原照片光線不佳（例如室內頂光造成黑眼圈法令紋、逆光臉黑、夜景偏色噪點）時，加入對應修復指令：

- **改善室內頂光／生硬陰影**：
  - **中文**：`柔化臉部生硬的頂光陰影與法令紋暗影，在正面補充柔和均勻的自然窗光感，讓面部受光乾淨立體，同時在眼中保留清澈自然的眼神光。`
  - **英文**：`Soften harsh overhead shadows around the eyes and nasolabial folds, add gentle diffused front-side fill light, and restore crisp, realistic catchlights in the eyes.`
- **改善夜景暗部噪點與混亂色偏**：
  - **中文**：`清理暗部雜亂彩色噪點，修正臉部不自然的霓虹或黃光偏色，讓混合光源下的膚色恢復乾淨真實，高光柔和不溢出。`
  - **英文**：`Clean up muddy chroma noise in the shadows, rebalance unnatural color casts on the skin under mixed lighting, and maintain restrained highlight glow.`
- **強化自然陽光與髮絲邊緣光**：
  - **中文**：`強化柔和的自然日光與髮絲邊緣光，讓高光呈現溫暖通透的過渡，背景與人物光影自然融合。`
  - **英文**：`Enhance warm natural daylight and subtle hair rim lighting with smooth, organic highlight roll-off.`

---

## 3. 可選色調錨點速查表（僅在使用者於 Prompt 明確指定要調色／套濾鏡時才使用）

> **嚴格原則**：在 `real-me-retouch` 原圖修圖模式下，**預設保留原圖真實自然的色彩與白平衡，絕不主動套用任何濾鏡**。僅當使用者在 Prompt 中明確要求特定底片或色調時，才從下方擇一使用：

1. **Kodak Portra 400（柔和膠片生活感）**：膚色溫暖柔和、低反差、細膩顆粒，最萬用的咖啡廳與日常自拍色調。
2. **Fujifilm Classic Chrome（低飽和都市雜誌感）**：低飽和度、冷靜克制的陰影色調，適合街頭、穿搭與陰天照片。
3. **Neutral Editorial Tone（乾淨中性商業／職場感）**：真實還原膚色、乾淨白平衡，適合創業家頭像與專業形象照。
4. **Kodak Gold 200（溫暖陽光微復古）**：暖金高光、陽光懷舊感，適合夏日與戶外度假照。
5. **Ilford HP5 Monochrome（黑白紀實顆粒感）**：豐富灰階過渡與銀鹽顆粒感，凸顯眼神與情緒張力。
6. **Vintage iPhone / Disposable Film（舊 iPhone／即可拍隨手拍感）**：微高光光暈、暗部微褪色發灰、真實生活相冊質感。
