# Midwest Defense Innovation Summit — Redesigned Landing Page

A single-file, responsive redesign of the MDIS landing page (`index.html`).
Dark, defense-grade aesthetic built around your white wordmark + ARI logo, the
six speaker quotes, and the "Stay Up to Date" (MDIS 2027) email capture.

No build step — open `index.html` in a browser, or host the folder anywhere
static (Netlify, GitHub Pages, Vercel, or back into Wix as an embed).

## Add your images

Drop your image files into the `images/` folder using the **target names** below.
The page references these exact names; until a file is present, a graceful
gradient + initials placeholder is shown (nothing breaks).

| Your original file                                    | Save it as (in `images/`)      | Used for                |
|-------------------------------------------------------|--------------------------------|-------------------------|
| `WordMark White RASTER_edited.png`                    | `logo-mdis-wordmark.png`       | Nav, hero, footer logo  |
| `WhitePoweredByARI.png`                               | `logo-powered-by-ari.png`      | Hero "Powered by ARI"   |
| `HonMikeDodd-4559.jpg`                                | `voice-dodd.jpg`               | Quote — Hon. Mike Dodd  |
| `The Role of DOW Labs-4793.jpg`                       | `voice-tran.jpg`               | Quote — Mike Tran       |
| `Competition+the Future Fight-4680 (1).jpg`           | `voice-thabet.jpg`             | Quote — Jennifer Thabet |
| `GovernorBraun (4 of 8).jpg`                          | `voice-braun.jpg`              | Quote — Gov. Mike Braun |
| `AchievingDroneDominancefortheAmericanWarfighter (7 of 7).jpg` | `voice-limeberry.jpg`  | Quote — Lt. Col. Limeberry |
| `SenToddYoung-4846.jpg`                               | `voice-young.jpg`              | Quote — Sen. Todd Young |
| `1.png`                                               | `favicon.png`                  | Browser tab icon        |
| *(optional)* any wide event photo                     | `hero.jpg`                     | Hero background         |

`.avif` works too — if you prefer AVIF, save the files with the same base names
but `.avif`/`.png` and update the matching references in `index.html`
(search for `images/`).

### Quick rename helper
If you copy your originals into `images/` with their original names, run:

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
