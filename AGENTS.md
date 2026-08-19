# Agent Instructions

## CV Versioning

- Keep `cv.md` as the canonical current CV source.
- Before replacing or substantially updating `cv.md`, archive the existing version under `versions/` using an ISO date in the filename, for example `versions/cv-2026-08-19.md`.
- Commit the archived version separately from the new `cv.md` update when practical, so comparisons remain clear.
- Compare archived and current versions with:

```bash
git diff --word-diff versions/cv-YYYY-MM-DD.md cv.md
```

- Do not rename `cv.md` for dated versions; scripts, docs, or publishing flows may rely on that stable filename.

## Deployment

- The live CV pipeline is `.github/workflows/build-cv.yml`.
- Pushing to `main` triggers the pipeline automatically.
- The workflow builds `cv.md` into HTML, PDF, and DOCX, then publishes them to GitHub Pages at `https://mm-camelcase.github.io/resume/`.
- When `AWS_ROLE_TO_ASSUME` is configured in GitHub secrets, the workflow also uploads the raw `cv.md` source to `s3://camelcase-agent-kb-966412459053/cv.md`.
- To make CV updates go live, commit the archive and `cv.md` changes, then push `main` to `origin`.

## Formatting Guardrails

- Treat the Markdown-to-HTML/PDF/DOCX formatting as an important maintained surface, not disposable build plumbing.
- Preserve `styles/cv.css`, `templates/style.docx`, Pandoc options, and PDF rendering behavior unless a change is required to fix a verified problem.
- After changing `cv.md` structure or the build workflow, verify that generated HTML uses real headings/lists and that the published PDF does not contain browser print headers, footers, file paths, dates, or page furniture.
- If changing the PDF renderer, visually inspect rendered PDF pages before considering the deployment complete.
