<div align="center">

# 🦅 مخلب — Mkhlab

### مساعدك الذكي العربي. مفتوح المصدر. يشتغل على جهازك. بياناتك عندك.

**The first Arabic-first plugin for [OpenClaw](https://github.com/openclaw/openclaw).**

14 Arabic AI skills · Dialect-aware · Culturally sensitive · Works with any model

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![OpenClaw Plugin](https://img.shields.io/badge/OpenClaw-Plugin-blue.svg)](https://github.com/openclaw/openclaw)
[![Skills](https://img.shields.io/badge/Skills-14-orange.svg)](#skills)

</div>

---

## What is مخلب?

**مخلب** (Mkhlab, "claw" in Arabic) is an Arabic-first plugin for OpenClaw — the open-source AI coding assistant. It adds 14 Arabic-focused skills while working with **any model provider** (Claude, GPT, Gemini, Qwen, Jais, ALLaM, Ollama, and more).

No other AI assistant offers this combination:
- **Dialect detection** — responds in your dialect (Egyptian, Gulf, Levantine, Maghrebi, Iraqi)
- **Islamic sensitivity** — knows prayer times, Hijri dates, handles religious topics respectfully
- **Arabic NLP tools** — token optimization, content moderation, RTL testing, dataset inspection
- **Arabizi support** — understands "7abibi" and "3adi"
- **Code-switching** — handles Arabic/English mixing naturally

## Quick Start

### Prerequisites
- [OpenClaw](https://github.com/openclaw/openclaw) v2026.3.20+
- Node.js 18+
- Python 3.10+ (for CLI tools)

### Install

```bash
# Clone
git clone https://github.com/mousaabumazin/mkhlab.git
cd mkhlab

# Tell OpenClaw where to find the skills
# Add to ~/.openclaw/openclaw.json:
{
  "skills": {
    "load": {
      "extraDirs": ["<path-to-mkhlab>/skills"]
    }
  }
}

# Install Arabic CLI tools (optional, for full 14/14 skills)
pipx install -e ./tools/arabench
pipx install -e ./tools/khalas
pipx install -e ./tools/sarih
pipx install -e ./tools/bidi-guard
pipx install -e ./tools/qalam
pipx install -e ./tools/artok
pipx install -e ./tools/majal
pipx install -e ./tools/safha
pipx install -e ./tools/raqeeb
```

### Verify

```bash
openclaw skills list | grep "openclaw-extra"
```

You should see 14 skills, all ✓ ready.

## Skills

### 🕌 Islamic & Cultural
| Skill | Description |
|-------|-------------|
| 🕌 `prayer-times` | أوقات الصلاة — Prayer times via Aladhan API |
| 📅 `hijri-calendar` | التقويم الهجري — Hijri ↔ Gregorian dates + Islamic events |
| 📖 `quran-search` | بحث القرآن — Search Quran by keyword, surah, or ayah |

### 🗣️ Language
| Skill | Description |
|-------|-------------|
| 🔄 `translate` | ترجمة — Arabic ↔ English with dialect awareness |
| 🗣️ `dialect-detect` | اللهجات — Detect and match user's Arabic dialect |

### 🔧 Arabic NLP Tools
| Skill | Description |
|-------|-------------|
| 📊 `arabench` | معيار الجودة — Benchmark Arabic LLM quality across 8 categories |
| ✂️ `khalas` | تحسين التوكنات — Optimize Arabic prompts to reduce token cost |
| 🛡️ `sarih` | فلترة المحتوى — Offline Arabic content moderation (5 dialects) |
| 🔒 `bidi-guard` | حماية Bidi — Detect Trojan Source bidi attacks in code |
| 📝 `qalam` | توثيق عربي — Generate Arabic docs from Python/JS/TS code |
| 🧮 `artok` | ضريبة التوكنات — Compare Arabic token costs across 18 tokenizers |
| 🔍 `majal` | فاحص البيانات — Inspect Arabic training data (16 quality checks) |
| 🕸️ `safha` | كاشط الويب — Scrape Arabic web content for ML training data |
| ↩️ `raqeeb` | فاحص RTL — Find RTL bugs in HTML/CSS (24 checks, 0-100 score) |

## Model Support

مخلب works with **any model** OpenClaw supports:

| Provider | Models |
|----------|--------|
| Anthropic | Claude Opus, Sonnet, Haiku |
| OpenAI | GPT-5.x, o-series |
| Google | Gemini 3.x |
| Qwen | Qwen 3.5 series |
| DeepSeek | DeepSeek R1 |
| GLM | GLM-4.7+ |
| Kimi | Kimi Coding |
| **Arabic-first** | Jais-2, ALLaM, SILMA, Falcon-H1, Karnak, Fanar |
| Local | Ollama, vLLM, LM Studio |
| Gateway | OpenRouter, Groq, Cerebras |

## Architecture

```
مخلب is a plugin, not a fork.
It runs on top of OpenClaw — like openclaw-china does for Chinese platforms.

┌─────────────────────────────────┐
│         OpenClaw Core           │
│  (any model, any provider)      │
├─────────────────────────────────┤
│      مخلب Plugin Layer          │
│  ┌─────────┐ ┌───────────────┐  │
│  │ SOUL.md │ │ IDENTITY.md   │  │
│  │ persona │ │ 🦅 مخلب       │  │
│  └─────────┘ └───────────────┘  │
│  ┌─────────────────────────────┐│
│  │     14 Arabic Skills        ││
│  │ prayer · hijri · quran      ││
│  │ translate · dialect         ││
│  │ arabench · khalas · sarih   ││
│  │ bidi-guard · qalam · artok  ││
│  │ majal · safha · raqeeb      ││
│  └─────────────────────────────┘│
└─────────────────────────────────┘
```

## Why مخلب?

- **420M+ Arabic speakers**, zero open-source Arabic AI assistant
- GPT-4 drops from **85% → 45% accuracy** on Arabic dialects
- Arabic costs **2-3x more tokens** than English on most models
- No OpenClaw regional fork exists for Arabic — مخلب is the first

## Roadmap

- [x] Phase 0: Workspace + persona + 5 API skills
- [x] Phase 1: 14 skills, all ready, plugin structure
- [ ] Phase 2: WhatsApp channel (scoped to skills, per Meta policy)
- [ ] Phase 3: Arabic TTS/STT integration (Voxtral, SILMA, ArTST)
- [ ] Phase 4: Arabic RAG with AraGemma embeddings
- [ ] Phase 5: ClawHub publishing

## Contributing

Contributions welcome! Areas where help is needed:
- New Arabic skills
- Dialect coverage (especially Sudanese, Yemeni, Somali Arabic)
- RTL improvements
- Arabic model benchmarks
- WhatsApp channel integration

## License

MIT — مفتوح المصدر للجميع.

---

<div align="center">

**مخلب** — Built for Arabic speakers, by Arabic speakers.

صُنع بحب 🇸🇦🇪🇬🇦🇪🇯🇴🇱🇧🇮🇶🇲🇦🇩🇿🇹🇳🇱🇾🇸🇾🇵🇸🇰🇼🇶🇦🇧🇭🇴🇲🇸🇩🇾🇪

</div>
