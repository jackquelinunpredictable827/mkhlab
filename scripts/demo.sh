#!/bin/bash
# مخلب Demo Script — run this to see skills in action
# Usage: bash scripts/demo.sh

echo ""
echo "🦅 مخلب — Arabic AI Skills for OpenClaw"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "🕌 أوقات الصلاة — الرياض:"
curl -sL "https://api.aladhan.com/v1/timingsByCity?city=Riyadh&country=SA&method=4" | python3 -c "
import sys,json
t=json.load(sys.stdin)['data']['timings']
for k,n in [('Fajr','الفجر'),('Dhuhr','الظهر'),('Asr','العصر'),('Maghrib','المغرب'),('Isha','العشاء')]:
    print(f'  {n}: {t[k]}')
" 2>/dev/null || echo "  (API unavailable)"
echo ""

echo "📅 التاريخ الهجري:"
curl -sL "https://api.aladhan.com/v1/gToH" | python3 -c "
import sys,json
h=json.load(sys.stdin)['data']['hijri']
print(f'  {h[\"day\"]} {h[\"month\"][\"ar\"]} {h[\"year\"]} هـ — {h[\"weekday\"][\"ar\"]}')
" 2>/dev/null || echo "  (API unavailable)"
echo ""

echo "📖 آية الكرسي (البقرة:٢٥٥):"
curl -sL "https://api.alquran.cloud/v1/ayah/2:255/quran-uthmani" | python3 -c "
import sys,json
d=json.load(sys.stdin)['data']
print(f'  ﴿ {d[\"text\"][:100]}... ﴾')
" 2>/dev/null || echo "  (API unavailable)"
echo ""

echo "📜 صحيح البخاري — حديث ١:"
curl -sL "https://api.hadith.gading.dev/books/bukhari?range=1-1" | python3 -c "
import sys,json
d=json.load(sys.stdin)['data']['hadiths'][0]
print(f'  {d[\"arab\"][:120]}...')
" 2>/dev/null || echo "  (API unavailable)"
echo ""

echo "📊 OpenClaw Skills Status:"
if command -v openclaw &>/dev/null; then
  count=$(openclaw skills list 2>/dev/null | grep -c "openclaw-extra")
  ready=$(openclaw skills list 2>/dev/null | grep "openclaw-extra" | grep -c "✓ ready")
  echo "  $count skills discovered, $ready ready"
else
  echo "  OpenClaw not installed — install with: npm i -g openclaw"
fi
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "40 skills · 3 agents · 2 channels · MIT license"
echo "from Saudi Arabia 🇸🇦 for the Arab world"
echo "github.com/Moshe-ship/mkhlab"
echo ""
