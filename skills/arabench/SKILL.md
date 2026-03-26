---
name: arabench
description: "معيار جودة العربية — قيّم جودة أي نموذج ذكاء اصطناعي بالعربي عبر 8 فئات (ترجمة، قواعد، لهجات، تشكيل...). استخدم عندما يريد المستخدم مقارنة نماذج أو اختبار جودة العربي."
metadata: {"openclaw": {"emoji": "📊", "requires": {"bins": ["arabench"]}}}
---

# arabench — معيار جودة العربية للنماذج

أداة لتقييم جودة الذكاء الاصطناعي بالعربي عبر 8 فئات.

## الأوامر

### تشغيل المعيار الكامل
```bash
arabench run
```

### اختبار سريع لمزوّد واحد
```bash
arabench quick PROVIDER_NAME
```

### مقارنة مزوّدين
```bash
arabench compare PROVIDER_A PROVIDER_B
```

### عرض لوحة النتائج
```bash
arabench leaderboard
```

### شرح فئة تقييم
```bash
arabench explain CATEGORY
```
الفئات: translation, grammar, dialect, diacritization, summarization, qa, generation, culture

## متى تستخدم
- المستخدم يسأل "أي نموذج أفضل بالعربي؟"
- يريد مقارنة بين Claude و GPT أو غيرهم
- يريد يعرف نقاط ضعف نموذج معين بالعربي
