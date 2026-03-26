# مخلب Demo — VHS tape file
# Run: vhs docs/demo.tape

Output docs/demo.gif

Set FontFamily "SF Mono"
Set FontSize 14
Set Width 1200
Set Height 600
Set Theme "Catppuccin Mocha"
Set Padding 20

Type "# 🦅 مخلب — Arabic AI Skills for OpenClaw"
Enter
Sleep 1s

Type "openclaw skills list 2>/dev/null | grep 'openclaw-extra' | head -20"
Enter
Sleep 3s

Type "# Let's test prayer times..."
Enter
Sleep 1s

Type 'curl -s "https://api.aladhan.com/v1/timingsByCity?city=Riyadh&country=SA&method=4" | python3 -c "import sys,json; t=json.load(sys.stdin)['"'"'data'"'"']['"'"'timings'"'"']; print('"'"'🕌 أوقات الصلاة — الرياض'"'"'); [print(f'"'"'  {k}: {v}'"'"') for k,v in t.items() if k in ['"'"'Fajr'"'"','"'"'Dhuhr'"'"','"'"'Asr'"'"','"'"'Maghrib'"'"','"'"'Isha'"'"']]"'
Enter
Sleep 3s

Type "# Hijri date today..."
Enter
Sleep 1s

Type 'curl -s "https://api.aladhan.com/v1/gToH" | python3 -c "import sys,json; h=json.load(sys.stdin)['"'"'data'"'"']['"'"'hijri'"'"']; print(f'"'"'📅 {h[\"day\"]} {h[\"month\"][\"ar\"]} {h[\"year\"]} هـ'"'"')"'
Enter
Sleep 3s

Type "# 🦅 مخلب — 40 skills, 2 channels, works with any model"
Enter
Sleep 2s

Type "# github.com/Moshe-ship/mkhlab"
Enter
Sleep 3s
