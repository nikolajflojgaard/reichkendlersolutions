# EmailJS Opsætning — Gratis Auto-svar

EmailJS giver dig 200 emails/md gratis med auto-svar funktionalitet.

## Trin 1: Opret konto
1. Gå til https://www.emailjs.com
2. Klik "Get Started" og opret gratis konto
3. Bekræft din email

## Trin 2: Tilføj Email Service
1. I dashboard → klik "Email Services"
2. Klik "Add New Service"
3. Vælg din email-provider:
   - **Gmail** (hvis du har Gmail)
   - **Outlook/Office365** (hvis du har Hotmail/Outlook)
   - Eller en anden du bruger
4. Følg guiden for at forbinde din konto
5. Kopier **Service ID** (ser ud som: `service_abc123`)

## Trin 3: Opret Email Template (Til dig — notifikation)
1. Gå til "Email Templates"
2. Klik "Create New Template"
3. Sæt dette op:

**Template Name:** `ReichkendlerSolutions - Ny Henvendelse`

**Subject:** `Ny henvendelse fra {{from_name}} - ReichkendlerSolutions`

**Body:**
```
Ny henvendelse modtaget!

Navn: {{from_name}}
Email: {{reply_to}}
Hjemmeside: {{website}}
Service: {{service_type}}
Pakke: {{package}}
Budget: {{budget}}
Besked:
{{message}}

---
Du kan svare direkte på denne email.
```

4. Klik "Save"
5. Kopier **Template ID** (ser ud som: `template_xyz789`)

## Trin 4: Opret Auto-svar Template (Til kunden)
1. Klik "Create New Template" igen
2. Sæt dette op:

**Template Name:** `ReichkendlerSolutions - Auto Svar`

**Subject:** `Vi har modtaget din henvendelse — ReichkendlerSolutions`

**Body:**
```
Hej {{from_name}},

Tak for din henvendelse! 

Vi har modtaget din forespørgsel og kigger den igennem inden for 24 timer på hverdage.

Du vil modtage:
✓ En vurdering af dit projekt
✓ Konkrete anbefalinger
✓ Forslag til næste skridt

Har du spørgsmål indtil da, er du velkommen til at svare på denne email.

Bedste hilsner,
Nikolaj Fløjgaard
ReichkendlerSolutions
nikolaj_fl@hotmail.com
```

3. Klik "Save"
4. Kopier **Template ID** for auto-svar (f.eks. `template_auto_123`)

## Trin 5: Hent Public Key
1. Gå til "Account" → "General"
2. Kopier **Public Key** (ser ud som: `user_abc123def`)

## Trin 6: Opdater koden
I `src/components/ContactForm.astro`, erstat:
```
serviceId = "YOUR_SERVICE_ID"
templateId = "YOUR_TEMPLATE_ID"
publicKey = "YOUR_PUBLIC_KEY"
```

Med dine faktiske værdier fra trin 2, 3 og 5.

## Trin 7: Test
1. Kør `npm run dev`
2. Gå til http://localhost:4321/kontakt
3. Udfyld formularen og send
4. Tjek at du modtager emailen
5. Tjek at auto-svaret bliver sendt til kunden

## Begrænsninger (Gratis tier)
- 200 emails/md (ca. 6-7 om dagen)
- Det er nok til at starte med!
- Når du vokser, koster det $5/md for 1.000 emails

## Troubleshooting
**Emails kommer ikke frem?**
- Tjek spam-folder
- Sørg for Service ID er korrekt
- Tjek at email-templaten er aktiveret

**Auto-svar virker ikke?**
- I EmailJS dashboard → gå til din Service
- Under "Settings" → sørg for "Auto-reply" er slået til
- Eller brug koden i ContactForm.astro til at sende to emails
