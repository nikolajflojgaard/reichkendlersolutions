# Gratis form-løsninger til ReichkendlerSolutions

## Option 1: EmailJS (Anbefalet - 200 emails/md gratis)

EmailJS sender direkte fra browser uden backend. Kræver ingen betaling for auto-svar.

**Opsætning:**
1. Gå til https://www.emailjs.com og opret konto
2. Opret "Email Service" → vælg "Gmail" eller "Outlook"
3. Opret "Email Template" med variabler: `{{name}}`, `{{website}}`, etc.
4. Kopier template ID og service ID
5. Jeg opdaterer koden til at bruge EmailJS

**Fordele:**
- 200 emails/md gratis
- Ingen backend nødvendig
- Auto-svar muligt
- Direkte til din inbox

---

## Option 2: Netlify Forms (100 submissions/md gratis)

Hvis du hoster på Netlify:

```html
<form name="kontakt" netlify>
  <input type="text" name="name" />
  <input type="email" name="email" />
  <button type="submit">Send</button>
</form>
```

**Begrænsning:** 
- Auto-svar kræver Netlify Functions (lidt mere avanceret)
- Du får notifikationer, men auto-svar skal bygges manuelt

---

## Option 3: Formspree Gratis (uden auto-svar)

Behold nuværende opsætning, men:
- 50 submissions/md gratis
- **Ingen auto-svar** (det kræver betaling)
- Du sender manuel bekræftelse når du får mailen

---

## Option 4: Google Forms (Gratis, men mindre professionel)

1. Opret Google Form
2. Embed på siden
3. Sæt notifikationer på

---

## Min anbefaling:

**EmailJS** - det er den bedste gratis løsning med auto-svar.

Vil du have mig til at:
1. Sætte EmailJS op? (jeg guider dig)
2. Eller beholde Formspree uden auto-svar?
3. Eller noget helt tredje?
