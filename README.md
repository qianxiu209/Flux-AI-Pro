# 🎨 Flux AI Pro - v8.6.0 智能自適應版

[![Deploy to Cloudflare Workers](https://img.shields.io/badge/Deploy%20to-Cloudflare%20Workers-orange?style=for-the-badge&logo=cloudflare)](https://workers.cloudflare.com/)
[![Version](https://img.shields.io/badge/Version-8.6.0%20Adaptive-blue?style=for-the-badge)](https://github.com/kinai9661/Flux-AI-Pro)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Cost](https://img.shields.io/badge/Cost-100%25%20FREE-success?style=for-the-badge)](https://pollinations.ai/)

> **基於 Cloudflare Workers 的智能自適應 AI 圖像生成平台**
> 
> **✨ 三檔質量模式** | **🧠 智能提示詞分析** | **⚡ 模型專屬優化** | **🎨 17 個免費模型** | **完全開源**

---

## 🆕 v8.6.0 智能自適應亮點

### 🎯 核心升級

#### 1️⃣ **三檔質量模式系統**

| 模式 | 特性 | 最低分辨率 | 步數倍率 | 適用場景 |
|------|------|------------|----------|----------|
| **⚡ 經濟模式** | 快速出圖 | 1024px | 0.85× | 快速測試、草稿預覽 |
| **⭐ 標準模式** | 平衡質量 | 1280px | 1.0× | 日常使用、一般項目 |
| **💎 超高清模式** | 極致質量 | 1536px | 1.35× | 最終交付、專業作品 |

#### 2️⃣ **智能提示詞分析器**

自動分析提示詞複雜度（0-100%），智能推薦最佳質量模式：

```javascript
// 分析維度
✓ 關鍵詞複雜度: 'detailed', 'photorealistic', 'intricate' 等
✓ 提示詞長度: >100字 / >200字
✓ 描述深度: 分句數量、細節層次

// 自動推薦
複雜度 > 70% → 超高清模式
複雜度 40-70% → 標準模式
複雜度 < 40% → 經濟模式
```

#### 3️⃣ **模型專屬質量配置**

每個模型獨立優化參數：

| 模型 | 質量優先級 | 最低分辨率 | 步數加成 | 引導加成 | 推薦模式 |
|------|------------|------------|----------|----------|----------|
| **flux-realism** | 極致細節 | 1536px | +25% | +15% | 💎 超高清 |
| **flux-pro** | 最高質量 | 1536px | +30% | +20% | 💎 超高清 |
| **flux-anime** | 清晰度 | 1280px | +15% | +10% | ⭐ 標準 |
| **turbo** | 速度優先 | 1024px | -30% | -15% | ⚡ 經濟 |

#### 4️⃣ **增強 HD 提示詞庫**

三級高清質量提示詞：

- **Basic**: `high quality, detailed, sharp`
- **Enhanced**: `8k uhd, masterpiece, fine details, professional` (10+ 關鍵詞)
- **Maximum**: `ultra high quality, razor sharp focus, photographic precision, studio lighting` (20+ 關鍵詞)

#### 5️⃣ **動態參數優化**

```javascript
最終步數 = 基礎步數 × 尺寸倍率 × 風格倍率 × 質量模式倍率 × 模型配置加成

// 示例: flux-realism + 1536×1536 + photorealistic + 超高清
= 28 × 1.15 × 1.1 × 1.35 × 1.25
= 60 步
```

---

## ✨ 保留 v8.5.0 完整功能

- ✅ **自動高清 (Auto HD)**: 智能注入 8k/UHD 提示詞 + 尺寸優化
- ✅ **智能參數優化**: 根據模型/尺寸/風格自動調整 Steps/Guidance
- ✅ **17 種頂級模型**: Flux Pro/Realism, SD3.5, SDXL Lightning 等
- ✅ **12 種藝術風格**: 日漫、賽博朋克、寫實、油畫、水彩等
- ✅ **NSFW 支持 + 私密模式**
- ✅ **OpenAI 兼容 API**: 直接對接 NextChat/LobeChat
- ✅ **歷史記錄**: 本地存儲最近 100 條

---

## 🎨 模型與風格列表

### 17 個免費模型 (Pollinations.ai)

<details>
<summary><strong>查看完整列表 (點擊展開)</strong></summary>

| 分類 | 模型 ID | 描述 | 質量配置 |
|------|---------|------|----------|
| **Flux 標準** | `flux` | 基礎版 | 標準優化 |
| | `flux-realism` | 超寫實 | 💎 極致細節 |
| | `flux-anime` | 動漫 | ⭐ 清晰度優先 |
| | `flux-3d` | 3D 渲染 | ⭐ 細節增強 |
| | `flux-pro` | 專業版 | 💎 最高質量 |
| | `any-dark` | 暗黑 | ⭐ 紋理增強 |
| | `turbo` | 極速版 | ⚡ 速度優先 |
| **Flux 高級** | `flux-1.1-pro` 🧪 | v1.1 Pro | 💎 最高質量 |
| | `flux-kontext` 🧪 | Context | ⭐ 標準 |
| | `flux-kontext-pro` 🧪 | Context Pro | 💎 專業級 |
| **SD3 系列** | `sd3` 🧪 | SD3 標準 | ⭐ 質量增強 |
| | `sd3.5-large` 🧪 | SD3.5 Large | 💎 旗艦畫質 |
| | `sd3.5-turbo` 🧪 | SD3.5 Turbo | ⚡ 快速迭代 |
| **SDXL** | `sdxl` 🧪 | SDXL 1.0 | ⭐ 質量增強 |
| | `sdxl-lightning` 🧪 | Lightning | ⚡ 閃電生成 |

> 🧪 = 實驗性模型 (可能自動回退到穩定模型)

</details>

### 12 種藝術風格

| 風格 | 提示詞加成 | 負面提示詞 |
|------|------------|------------|
| 🎌 Japanese Manga | manga style, screentone | realistic, 3d render |
| ✨ Anime | vibrant colors, anime art | realistic, photograph |
| 📷 Photorealistic | 8k uhd, professional photography | anime, cartoon |
| 🌃 Cyberpunk | neon lights, futuristic | natural, rustic |
| 🎨 Oil Painting | classical style, brushstrokes | digital art, anime |
| 💧 Watercolor | soft colors, hand-painted | digital, sharp edges |
| 📐 Vector | flat design, clean lines | realistic, textured |
| 👾 Pixel Art | 8-bit style, pixelated | high resolution |
| 🌿 Studio Ghibli | Miyazaki style, whimsical | dark, gritty |
| 💥 Comic Book | bold lines, vibrant colors | manga, realistic |
| ✏️ Sketch | hand-drawn, graphite | colored, digital |
| 🐉 Fantasy | magical, epic fantasy | modern, mundane |

---

## 🚀 部署指南

### 前置要求
- [Wrangler CLI](https://developers.cloudflare.com/workers/wrangler/install-and-update/) (v3.0+)
- Cloudflare 賬號 (免費計劃即可)

### 快速部署

```bash
# 1. 克隆項目
git clone https://github.com/kinai9661/Flux-AI-Pro.git
cd Flux-AI-Pro

# 2. 安裝 Wrangler
npm install -g wrangler
wrangler login

# 3. 部署
wrangler deploy

# 4. 訪問 Worker URL
# 例: https://flux-ai-pro.your-subdomain.workers.dev
```

### 一鍵部署

[![Deploy to Cloudflare Workers](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https://github.com/kinai9661/Flux-AI-Pro)

---

## 🔌 API 文檔

### 1. 圖像生成 (Standard)

**Endpoint:** `POST /v1/images/generations`

#### Request Body
```json
{
  "prompt": "a futuristic city with flying cars, highly detailed",
  "model": "flux-realism",
  "quality_mode": "ultra",      // 🆕 "economy" | "standard" | "ultra"
  "width": 1536,
  "height": 1536,
  "style": "photorealistic",
  "n": 1,
  "auto_hd": true,              // v8.5.0: 自動高清
  "auto_optimize": true,        // v8.5.0+: 智能優化
  "negative_prompt": "blurry, low quality",
  "seed": 123456,
  "private": true
}
```

#### Response
```json
{
  "created": 1733311200,
  "data": [
    {
      "url": "https://image.pollinations.ai/prompt/...",
      "provider": "Pollinations.ai",
      "model": "flux-realism",
      "width": 1536,
      "height": 1536,
      "seed": 123456,
      "quality_mode": "ultra",             // 🆕 使用的質量模式
      "prompt_complexity": 0.78,           // 🆕 提示詞複雜度 (0-1)
      "hd_optimized": true,                // 是否 HD 優化
      "hd_details": {                      // 🆕 HD 優化詳情
        "hd_level": "maximum",
        "size_upscaled": true,
        "optimizations": [
          "HD增強: maximum",
          "尺寸優化: 1024x1024 → 1536x1536"
        ]
      },
      "auto_optimized": true,              // 是否智能優化
      "steps": 48,                         // 🆕 最終步數 (含質量模式加成)
      "guidance": 9.6,                     // 🆕 最終引導 (含質量模式加成)
      "cost": "FREE"
    }
  ]
}
```

### 2. 聊天生成 (OpenAI Compatible)

**Endpoint:** `POST /v1/chat/completions`

```json
{
  "model": "flux-pro",
  "messages": [
    { "role": "user", "content": "畫一隻在太空的貓，極致細節" }
  ],
  "quality_mode": "ultra",  // 🆕
  "width": 1536,
  "height": 1536,
  "auto_hd": true,
  "auto_optimize": true
}
```

### 3. 查詢接口

| Endpoint | 方法 | 描述 |
|----------|------|------|
| `/v1/models` | GET | 列出所有可用模型 + 質量配置 |
| `/v1/providers` | GET | 查詢提供商信息 |
| `/v1/styles` | GET | 列出所有風格預設 |
| `/health` | GET | 健康檢查 + 版本信息 |

---

## ⚙️ 配置文件

### wrangler.toml
```toml
name = "flux-ai-pro"
main = "worker.js"
compatibility_date = "2025-12-04"

[vars]
PROJECT_VERSION = "8.6.0"
ENABLE_QUALITY_MODES = "true"
```

### worker.js 核心配置
```javascript
const CONFIG = {
  PROJECT_VERSION: "8.6.0",
  
  // 🆕 三檔質量模式
  HD_OPTIMIZATION: {
    QUALITY_MODES: {
      economy: {
        min_resolution: 1024,
        steps_multiplier: 0.85,
        hd_level: "basic"
      },
      standard: {
        min_resolution: 1280,
        steps_multiplier: 1.0,
        hd_level: "enhanced"
      },
      ultra: {
        min_resolution: 1536,
        steps_multiplier: 1.35,
        hd_level: "maximum",
        force_upscale: true
      }
    },
    
    // 🆕 增強 HD 提示詞
    HD_PROMPTS: {
      basic: "high quality, detailed, sharp",
      enhanced: "high quality, 8k uhd, masterpiece, fine details",
      maximum: "ultra high quality, razor sharp focus, photographic precision"
    },
    
    // 🆕 模型專屬配置
    MODEL_QUALITY_PROFILES: {
      "flux-realism": {
        priority: "ultra_detail",
        min_resolution: 1536,
        optimal_steps_boost: 1.25,
        guidance_boost: 1.15,
        recommended_quality: "ultra"
      }
      // ... 更多模型配置
    }
  }
};
```

---

## 📅 更新日誌

### v8.6.0 (2025-12-04) - 🧠 智能自適應版
- **新增**: 三檔質量模式 (經濟/標準/超高清)
- **新增**: 智能提示詞複雜度分析器 (PromptAnalyzer)
- **新增**: 模型專屬質量配置 (MODEL_QUALITY_PROFILES)
- **新增**: 增強 HD 提示詞庫 (三級: basic/enhanced/maximum)
- **新增**: 質量模式單選 UI (美觀卡片設計)
- **優化**: HDOptimizer 支持質量模式參數
- **優化**: ParameterOptimizer 多維度計算 (模式倍率 + 模型加成)
- **保留**: v8.5.0 所有功能 (Auto HD、智能優化、17 模型、12 風格)

### v8.5.0 (2025-11-29) - 💎 自動高清版
- **新增**: Auto HD (自動高清) 功能
- **新增**: HDOptimizer 類
- **優化**: Web UI 高清開關

### v8.4.0 - 🎬 動態 UI
- **新增**: 實時進度條模擬
- **新增**: 狀態消息反饋

### v8.3.0 - 🧠 智能優化
- **新增**: 自動計算 Steps/Guidance

### v8.0.0 - 🦄 架構重構
- **重構**: 多提供商架構
- **新增**: 歷史記錄系統

---

## 🌐 演示與部署

- **最新演示站**: [https://koy.xx.kg/](https://koy.xx.kg/) *(即將更新至 v8.6.0)*
- **GitHub 倉庫**: [kinai9661/Flux-AI-Pro](https://github.com/kinai9661/Flux-AI-Pro)
- **部署平台**: Cloudflare Workers (免費計劃支持)

---

## 💡 使用建議

### 質量模式選擇指南

| 場景 | 推薦模式 | 理由 |
|------|----------|------|
| 快速測試概念 | ⚡ 經濟 | 速度優先，節省資源 |
| 日常社交媒體 | ⭐ 標準 | 平衡質量與速度 |
| 專業作品集 | 💎 超高清 | 極致細節，適合印刷 |
| 客戶交付 | 💎 超高清 | 最高標準，零妥協 |
| 動畫幀生成 | ⚡ 經濟 | 批量生成，一致性優先 |
| 產品渲染圖 | 💎 超高清 | 商業用途，細節重要 |

### 模型 + 模式組合推薦

```
頂級質量:
flux-realism + 超高清 + photorealistic 風格
→ 適合: 商業攝影、產品展示、人像特寫

動漫高清:
flux-anime + 標準/超高清 + anime 風格
→ 適合: 遊戲角色、漫畫封面、插畫

快速迭代:
turbo + 經濟 + 任意風格
→ 適合: 概念草圖、頭腦風暴、A/B 測試

藝術創作:
flux-pro + 超高清 + oil-painting/watercolor
→ 適合: 數字藝術品、NFT、畫廊展示
```

---

## ⚠️ 重要提醒

### Pollinations.ai
1. **完全免費**，但服務穩定性由第三方控制
2. 請遵守其 [使用條款](https://pollinations.ai/terms)
3. 部分實驗性模型可能不可用 (自動回退)

### 質量模式與性能
1. **超高清模式**會增加生成時間 (約 +35%)
2. **自動優化**會根據複雜度推薦最佳模式
3. 建議首次測試使用**標準模式**找到平衡點

### 法律與責任
- 請勿生成非法、仇恨或違反當地法律的內容
- NSFW 功能僅供合法成年人使用
- 用戶需自行承擔生成內容帶來的責任

---

## 🤝 貢獻

歡迎提交 Issue 或 Pull Request!

### 開發指南
```bash
# 本地開發
wrangler dev

# 部署測試
wrangler deploy --env dev

# 生產部署
wrangler deploy
```

---

## 📄 許可證

MIT License - 查看 [LICENSE](LICENSE) 文件

---

## 🙏 致謝

- [Pollinations.ai](https://pollinations.ai/) - 免費 AI 圖像生成服務
- [Cloudflare Workers](https://workers.cloudflare.com/) - 全球邊緣計算平台
- [Black Forest Labs](https://blackforestlabs.ai/) - FLUX 系列模型
- [Stability AI](https://stability.ai/) - Stable Diffusion 系列

---

<div align="center">
  <sub>Made with ❤️ by <a href="https://github.com/kinai9661">kinai9661</a></sub>
  <br><br>
  <a href="https://workers.cloudflare.com">
    <img src="https://img.shields.io/badge/Cloudflare-Workers-orange?logo=cloudflare&style=flat-square" alt="Cloudflare Workers">
  </a>
  <a href="https://pollinations.ai">
    <img src="https://img.shields.io/badge/Pollinations-AI-green?style=flat-square" alt="Pollinations AI">
  </a>
  <a href="https://github.com/kinai9661/Flux-AI-Pro/stargazers">
    <img src="https://img.shields.io/github/stars/kinai9661/Flux-AI-Pro?style=flat-square" alt="GitHub stars">
  </a>
</div>