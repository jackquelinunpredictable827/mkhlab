Output docs/demo.gif

Set Shell zsh
Set FontFamily "SF Mono"
Set FontSize 16
Set Width 1000
Set Height 550
Set Theme "Catppuccin Mocha"
Set Padding 15
Set TypingSpeed 30ms

Type "echo '🦅 مخلب — Arabic AI Skills for OpenClaw'"
Enter
Sleep 1.5s

Type "echo ''"
Enter

Type "echo '🕌 أوقات الصلاة — الرياض:'"
Enter
Sleep 500ms

Type@0ms "curl -sL 'https://api.aladhan.com/v1/timingsByCity?city=Riyadh&country=SA&method=4' | python3 -c \"import sys,json; t=json.load(sys.stdin)['data']['timings']; [print(f'  {n}: {t[k]}') for k,n in [('Fajr','الفجر'),('Dhuhr','الظهر'),('Asr','العصر'),('Maghrib','المغرب'),('Isha','العشاء')]]\""
Enter
Sleep 3s

Type "echo ''"
Enter

Type "echo '📅 التاريخ الهجري:'"
Enter
Sleep 500ms

Type@0ms "curl -sL 'https://api.aladhan.com/v1/gToH' | python3 -c \"import sys,json; h=json.load(sys.stdin)['data']['hijri']; print(f'  {h[chr(34)+chr(100)+chr(97)+chr(121)+chr(34)]} {h[chr(34)+chr(109)+chr(111)+chr(110)+chr(116)+chr(104)+chr(34)][chr(34)+chr(97)+chr(114)+chr(34)]} {h[chr(34)+chr(121)+chr(101)+chr(97)+chr(114)+chr(34)]} هـ')\""
Enter
Sleep 3s

Type "echo ''"
Enter

Type "echo '📖 آية الكرسي:'"
Enter
Sleep 500ms

Type@0ms "curl -sL 'https://api.alquran.cloud/v1/ayah/2:255/quran-uthmani' | python3 -c \"import sys,json; d=json.load(sys.stdin)['data']; print(f'  ﴿ {d[chr(34)+chr(116)+chr(101)+chr(120)+chr(116)+chr(34)][:80]}... ﴾')\""
Enter
Sleep 3s

Type "echo ''"
Enter

Type "echo '📜 صحيح البخاري — حديث ١:'"
Enter
Sleep 500ms

Type@0ms "curl -sL 'https://api.hadith.gading.dev/books/bukhari?range=1-1' | python3 -c \"import sys,json; d=json.load(sys.stdin)['data']['hadiths'][0]; print(f'  {d[chr(34)+chr(97)+chr(114)+chr(97)+chr(98)+chr(34)][:100]}...')\""
Enter
Sleep 3s

Type "echo ''"
Enter

Type "echo '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━'"
Enter
Type "echo '40 skills · 3 agents · 2 channels'"
Enter
Type "echo 'from Saudi Arabia 🇸🇦 for the Arab world'"
Enter
Type "echo 'github.com/Moshe-ship/mkhlab'"
Enter
Sleep 4s
