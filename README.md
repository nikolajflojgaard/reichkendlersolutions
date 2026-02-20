# Website Rescue

En professionel hjemmeside for Website Rescue — et niche-webbureau der redder eksisterende hjemmesider fra at være "pæne men ubrugelige" og bygger nye fra bunden med fokus på konvertering.

## 🌐 Live Site

**URL:** https://website-rescue.vercel.app (eller din domæne)

## 📁 Projektstruktur

```
website-rescue-site/
├── src/
│   ├── components/         # Reusable Astro components
│   │   ├── ContactForm.astro      # EmailJS kontaktformular
│   │   ├── Header.astro           # Navigation
│   │   ├── Footer.astro           # Footer
│   │   └── ...
│   ├── pages/              # Sider
│   │   ├── index.astro           # Forside
│   │   ├── priser.astro          # Prisoversigt
│   │   ├── kontakt.astro         # Kontaktside
│   │   ├── tak.astro             # Tak-side
│   │   └── om.astro              # Om mig
│   ├── layouts/            # Layout templates
│   └── styles/             # CSS
├── templates/              # Kunde-skabeloner (Tjeklister)
│   ├── ny-hjemmeside-basic.md
│   ├── ny-hjemmeside-pro.md
│   ├── eksisterende-basic.md
│   └── eksisterende-pro.md
├── dist/                   # Build output
└── package.json
```

## 🚀 Teknologi Stack

- **Framework:** Astro 5.x
- **Styling:** Tailwind CSS
- **Form:** EmailJS (gratis tier, 200 emails/md)
- **Hosting:** Vercel (eller andet)
- **Icons:** SVG inline

## 📧 EmailJS Opsætning

Formularen bruger EmailJS til at sende emails:

| Komponent | Værdi |
|-----------|-------|
| Service ID | `service_fdlztoq` |
| Template ID | `template_6w0ehuk` |
| Public Key | `I9b4cVln2NGxUo5sn` |

### Auto-svar (valgfrit)
For at opsætte auto-svar til kunder:
1. Gå til https://dashboard.emailjs.com/admin/templates
2. Opret en ny template til auto-svar
3. I din Email Service → Settings → slå "Auto-reply" til
4. Vælg auto-svar template

## 📝 Sider

### Forside (/)
- Hero med "Website Rescue + Ny hjemmeside" budskab
- Problem-sektion (hvad der går galt)
- Løsnings-sektion (hvad vi gør)
- Proces-sektion (4 trin)
- CTA til kontakt

### Priser (/priser)
**Website Rescue:**
- Starter: 7.500 kr (5 dage)
- Pro: 14.500 kr (10 dage)

**Ny hjemmeside:**
- Basic: 15.000 kr (7-10 dage)
- Pro: 25.000 kr (14-20 dage)

### Kontakt (/kontakt)
Dynamisk formular:
- Vælg service type (Rescue / Ny / Usikker)
- Viser relevante felter baseret på valg
- Sender til nikolaj_fl@hotmail.com
- Redirect til /tak efter afsendelse

## 🛠️ Udvikling

```bash
# Install dependencies
npm install

# Start dev server
npm run dev

# Build
npm run build

# Preview build
npm run preview
```

## 📦 Deployment

### Vercel (anbefalet)
1. Push til GitHub
2. Forbind repo på vercel.com
3. Auto-deploy ved hver push

### Manuel
```bash
npm run build
# Upload dist/ folder til webhost
```

## 📋 Kunde-skabeloner

I `templates/` ligger 4 .md filer til at brief projekter:

1. **ny-hjemmeside-basic.md** - Ny hjemmeside, basis pakke
2. **ny-hjemmeside-pro.md** - Ny hjemmeside, pro pakke  
3. **eksisterende-basic.md** - Rescue eksisterende, basis
4. **eksisterende-pro.md** - Rescue eksisterende, pro

Udfyld skabelonen med kundens info, så kan vi gå direkte i gang med kodning.

## 🎯 Services

### Website Rescue
For virksomheder med eksisterende hjemmeside der ikke performer:
- Redesign af forsiden + undersider
- CTA-optimering
- Mobiloptimering
- SEO quick wins
- Tracking setup

### Ny hjemmeside
For virksomheder der skal have bygget noget fra bunden:
- Unikt design (ikke template)
- Op til 5-10 sider
- Konverteringsoptimeret
- Mobil-first
- Kontaktformular

## 📧 Email Templates

Se `templates/email-templates.md` for:
- Auto-svar ved kontakt
- Opfølgning efter 48 timer
- Mini-audit skabelon
- Booking bekræftelser
- Faktura påmindelse
- Breakup email

## 🔧 Miljø Variabler (valgfrit)

Hvis du vil gemme EmailJS keys sikkert:

```bash
# .env
EMAILJS_SERVICE_ID=service_fdlztoq
EMAILJS_TEMPLATE_ID=template_6w0ehuk
EMAILJS_PUBLIC_KEY=I9b4cVln2NGxUo5sn
```

---

**Lavet af:** Nikolaj Fløjgaard  
**Kontakt:** nikolaj_fl@hotmail.com
