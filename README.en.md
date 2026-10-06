# Markdown Word

[简体中文](README.md) · [English](README.en.md)

> **Write Markdown on real pages.**  
> A paged Markdown editor for Obsidian that keeps Markdown fast and portable while adding Word/PowerPoint-like pages, layers, equations, and multi-format export.

**Current version: 0.9.31** · **By Su & ChatGPT** · **Desktop only**

## Why Markdown Word?

A common workflow for technical notes looks like this:

**Write in Obsidian → reformat in Word → rebuild in PowerPoint → export to PDF**

Markdown Word tries to keep that workflow in one document:

- Markdown handles content and structure
- Pages provide real dimensions and pagination
- Layers handle images, text boxes, arrows, and shapes
- Export turns the same note into PDF / PPTX / DOCX / HTML / MD

## ✨ Highlights in 0.9.31

Version 0.9.31 substantially reworks PDF export and page layout:

- **Selectable vector PDF** — body text remains real PDF text that can be selected, copied, and searched
- **MathJax export fix** — MathJax pseudo-element glyphs are materialized before export, fixing missing variables such as `n`, `x`, `i`, and `n²`
- **Exact page sizing** — PDF pages use the physical width and height configured in Markdown Word, instead of relying on A4/Letter settings in a print dialog
- **Three PDF modes** — selectable vector PDF, system-print compatibility mode, and 4× high-resolution image PDF
- **Standalone presentation HTML** — export a paged HTML document with keyboard navigation, scaling, and fullscreen presentation
- **Improved page layout** — base text size, page margins, pagination, and floating-object page tracking have been refined
- **Better text boxes** — independent line spacing plus lock/unlock controls
- **Improved Office export** — better handling of page size, tables, text boxes, and common equations in PPTX/DOCX

## 🌟 Main features

- Paged paper view with A4, landscape, and custom physical dimensions
- Markdown editing with live rendered pages
- `$...$` / `$$...$$` LaTeX / MathJax equations
- Word-style formatting toolbar
- Floating images, text boxes, arrows, and rectangles
- Image crop/resize and layer ordering
- Shift multi-select and marquee selection
- Page thumbnails, insertion, reordering, and multi-page deletion
- Base body font size and page-margin controls
- Native Office table export
- Common LaTeX converted to Office Math / OMML when possible
- Export to `PDF / PPTX / DOCX / HTML / MD`
- Undo / Redo
- Original Markdown stays in your Obsidian Vault

## 📦 Installation

1. Download the latest `markdown-word-x.x.x.zip` from [Releases](https://github.com/skc-bio/markdown-word/releases)
2. Extract it
3. Copy the extracted `markdown-word` folder to:

```text
Your Vault/
└─ .obsidian/
   └─ plugins/
      └─ markdown-word/
         ├─ main.js
         ├─ manifest.json
         └─ styles.css
```

4. Fully restart Obsidian
5. Open **Settings → Community plugins**
6. Enable **Markdown Word**

## 🚀 Quick start

Open a `.md` note and launch **Markdown Word page mode** from the command palette or the plugin entry point.

```md
# Title

Normal text, **bold**, *italic*, ~~strikethrough~~.

Inline equation $E=mc^2$

$$
\frac{x^2}{2}+\sqrt{y}
$$
```

Images, text boxes, and shapes are stored as layout objects, while your main text remains ordinary Markdown.

## 📤 Export

| Format | What to expect |
|---|---|
| PDF | Use “Selectable vector PDF” for copyable text, exact page size, and vector MathJax rendering |
| PPTX | Keeps text, images, tables, text boxes, and shapes editable where possible |
| DOCX | Produces a flowing Word document with native tables and common equations where possible |
| HTML | Creates a standalone paged document with keyboard navigation and fullscreen presentation |
| MD | Keeps / exports the Markdown source |

For everyday PDF export, use **PDF ▾ → Selectable vector PDF (recommended)**. Use the system-print mode for compatibility, or the 4× image PDF when visual fidelity matters more than selectable text.

## 📖 Documentation

- [Project website](docs/index.en.html)
- [Introduction](docs/intro.en.html)
- [User guide](docs/guide.en.html)
- [中文主页](docs/index.html)

## 💬 Feedback

The project website can generate a pre-filled GitHub Issue draft for public feedback. No database, server, or browser-side GitHub token is required.

You can also use the repository's Bug Report and Feature Request issue templates directly.

## 🛠 Project status

Markdown Word is still evolving quickly. For important coursework, papers, or long-term notes, keep backups of your Vault and verify important exports in the target application.

## 🔧 Source

`main.js`, `manifest.json`, and `styles.css` in the repository root are the runnable plugin code, manifest, and styles for the current release. Installable packages are published under [Releases](https://github.com/skc-bio/markdown-word/releases).

## 📄 License

Licensed under the [MIT License](LICENSE).

Project credit: **Su & ChatGPT**  
Copyright © 2026 **Su (skc-bio)**
