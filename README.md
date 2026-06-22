# Midwest Defense Innovation Summit — Redesigned Landing Page

A single-file, responsive redesign of the MDIS landing page (`index.html`).
Dark, defense-grade aesthetic built around your white wordmark + ARI logo, the
six speaker quotes, and the "Stay Up to Date" (MDIS 2027) email capture.

No build step — open `index.html` in a browser, or host the folder anywhere
static (Netlify, GitHub Pages, Vercel, or back into Wix as an embed).

## Images

The **six quote photos are already added** to `images/` (as `.avif`) and wired
into the page. Still optional/recommended to add:

| Your original file                 | Save it as (in `images/`)  | Used for                    | Status   |
|------------------------------------|----------------------------|-----------------------------|----------|
| `WordMark White RASTER_edited.png` | `logo-mdis-wordmark.png`   | Nav, hero, footer logo      | **add**  |
| `WhitePoweredByARI.png`            | `logo-powered-by-ari.png`  | Hero "Powered by ARI"       | **add**  |
| `1.png`                            | `favicon.png`              | Browser tab icon            | **add**  |
| *(optional)* any wide event photo  | `hero.jpg`                 | Hero background             | optional |
| *(added)* quote photos             | `voice-*.avif`             | Six speaker quotes          | ✅ done  |

Until the logo files are present, the page falls back gracefully: the wordmark
shows a text "MDIS", the "Powered by ARI" image hides, and the hero shows its
gradient. Add the two white logo PNGs for the full branded look.

### Quick rename helper
Copy your remaining originals into `images/` with their original names, then:

```bash
cd images && bash rename.sh
```

## Edit your brand colors

All colors live in CSS variables at the top of `index.html` (the `:root` block).
Change `--accent` to your exact brand accent; everything updates automatically.

```css
--accent:#f2a900;   /* primary accent — set to your brand color */
--navy-900:#0a1428; /* base background */
```

## Connect the email form

The "Stay Up to Date" form currently shows a client-side thank-you only.
To capture real signups, point the `<form id="signupForm">` at your provider
(Wix Forms, Mailchimp, ConvertKit, etc.) — set its `action`/`method` or replace
the submit handler at the bottom of `index.html`.

## Content notes (please verify)

The six quotes are reproduced from the content you supplied. Three were lightly
cleaned for grammar/punctuation; the originals are kept in HTML comments next to
each quote so you can revert:

- **Jennifer Thabet** — added an em-dash for readability.
- **Governor Mike Braun** — corrected the name spelling ("Govenor" → "Governor"). Quote text unchanged ("Department of War" kept verbatim).
- **Senator Todd Young** — added the apparently-missing word ("If **we** use this moment…").

Event facts (mission text, Indianapolis venue, ARI) come from public MDIS
sources; adjust any wording to match your site exactly.
