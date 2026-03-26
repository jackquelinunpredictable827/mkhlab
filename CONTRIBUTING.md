# Contributing to مخلب

شكراً لاهتمامك بالمساهمة! — Thank you for your interest in contributing!

## How to Contribute

### Adding a New Skill

1. Create a directory under `skills/your-skill-name/`
2. Add a `SKILL.md` file with this format:

```yaml
---
name: your-skill-name
description: "وصف عربي — English description. When to trigger."
metadata: {"openclaw": {"emoji": "X", "requires": {"bins": ["tool"]}}}
---

# Skill Title

Instructions for the agent...
```

3. Requirements:
   - `name` and `description` are required
   - Description must contain Arabic text
   - `metadata` must be single-line JSON (not nested YAML)
   - Include concrete examples and commands
   - Add "متى تستخدم" (when to use) section

4. Submit a PR with your skill

### Improving Existing Skills

- Fix Arabic typos or improve phrasing
- Add more examples
- Update API endpoints if they changed
- Add support for more Arabic dialects

### Adding a Channel Extension

1. Create under `extensions/your-channel/`
2. Include `openclaw.plugin.json`, `package.json`, and `index.ts`
3. Follow the ChannelPlugin interface (see WhatsApp/Telegram examples)

### Dialect Coverage

We especially need help with:
- Sudanese Arabic
- Yemeni Arabic
- Somali Arabic
- Mauritanian Arabic
- Libyan Arabic

If you speak any of these dialects, please help us improve the `dialect-detect` skill!

## Development Setup

```bash
# Clone
git clone https://github.com/Moshe-ship/mkhlab.git
cd mkhlab

# Point OpenClaw at your local skills
# Add to ~/.openclaw/openclaw.json:
{
  "skills": {
    "load": {
      "extraDirs": ["<path-to-mkhlab>/skills"]
    }
  }
}

# Verify
openclaw skills list | grep "openclaw-extra"
```

## Code Style

- **Skills**: Arabic for descriptions and instructions, English for code
- **TypeScript**: Standard formatting, English for code and comments
- **Commits**: English commit messages, descriptive

## Pull Request Process

1. Fork the repo
2. Create a branch: `git checkout -b add-my-skill`
3. Make your changes
4. Test: `openclaw skills list` should show your skill
5. Submit PR with a clear description

## Questions?

Open an issue on GitHub or reach out in the discussions.

---

بارك الله فيكم
