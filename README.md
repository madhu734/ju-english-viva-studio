# Viva Studio

A static English viva study site for E403, E404, E405, E410–E413. All practice is self-assessed. No account, backend, or API key is required.

## Run and maintain

Run `npm run build` to validate and assemble the course JSON into `dist/data`. Run `npm test` for behaviour checks. Run `npm start` and open http://localhost:4173. Use an HTTP server; opening index.html directly cannot reliably load JSON or persist progress.

Edit the seven `content/E*.json` files and `content/connections.json`. The files in `dist/` are the editable application source and deployable static site; no framework compilation is needed. `content/AUTHORING.md` documents fields and source requirements. `COVERAGE.md` and downloadable `dist/data/coverage.json` map syllabus items. Re-run the content build after any content edit. `scripts/author-research.py` is the editable E413 authoring source; regenerate its JSON only when changing that script.

## Progress

Versioned browser localStorage stores self-ratings, attempt history, notes, bookmarks and the current session. Export/import transfers a copy; it is not automatic sync. Import replaces existing local progress after confirmation. A second browser starts independently. A mock timer uses an absolute deadline, so leaving the page does not pause it. Unreached and skipped questions are not automatically marked incorrect.

## Live AI service

The frontend posts `{question, course}` to `/api/ask` on the same origin. The host service returns `{status: "success", answer: "Markdown", cached: boolean}`. Nginx proxies `/api/` to host port 8055. Marked and DOMPurify render and sanitize responses, and Copy Answer copies the original Markdown. The browser waits up to 125 seconds; Nginx read/send limits are 120 seconds. No API keys are stored in the frontend. See DEPLOYMENT.md for Docker configuration and new-domain progress transfer.

## Source boundaries

PDF citations refer to physical pages of the seven supplied summaries. The original textbooks/lecture slides mentioned by those PDFs were not supplied. Academic supplements use explicit external references. Original examples are instructional illustrations. The original PDFs are retained in the parent workspace and are not included in the public bundle. Essentials and question difficulty are editorial study aids, not predictions of actual exam questions.

## Hosting

The existing Site identity is in `.openai/hosting.json`; reuse it for updates. The deploy directory is `dist`. Never put secrets or private PDF originals in that directory.

## Oracle / Coolify integration
See DEPLOYMENT.md. AI Tutor is connected to same-origin /api/ask, using {question,course}. Full question bank mode traverses every matching question in order with persistent session position and Previous/Next navigation. Font styling uses local Georgia/Times New Roman for long reading, and readable sans-serif for controls. Import a backup from the previous domain to transfer progress to viva.tmadhu.me.
