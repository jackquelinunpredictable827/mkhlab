import { definePluginEntry } from "openclaw/plugin-sdk/plugin-entry";

export default definePluginEntry({
  id: "mkhlab-core",
  name: "مخلب — Arabic AI Skills",
  register(api) {
    // Skills are loaded automatically from ../../skills/ via openclaw.plugin.json
    // This entry point is for future programmatic tools, hooks, and channels

    // Future: WhatsApp channel integration
    // Future: Arabic dialect detection hook (pre-processing)
    // Future: RTL formatting hook (post-processing)
    // Future: Arabic TTS via Voxtral/SILMA
  },
});
