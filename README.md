# 📄 Resume Builder

[![Build Resume](https://github.com/mm-camelcase/resume/actions/workflows/build-cv.yml/badge.svg)](https://github.com/mm-camelcase/resume/actions/workflows/build-cv.yml)
[![View Resume](https://mm-camelcase.github.io/resume/resume.html)](https://mm-camelcase.github.io/resume/resume.html)

This repository automatically builds and publishes my resume in **multiple formats** — HTML, PDF, and DOCX — using **GitHub Actions**.

## 🚀 How It Works

Every time a change is pushed to the `main` branch:

1. **Checkout the repository** using `actions/checkout`.
2. **Install tools** needed to build the resume:
   - `pandoc` and `texlive-xetex` (for DOCX and HTML generation)
   - `wkhtmltopdf` (for PDF generation)
3. **Generate outputs**:
   - **DOCX**: From `cv.md` using a Word template (`templates/style.docx`)
   - **HTML**: From `cv.md` styled with `styles/cv.css`
   - **PDF**: From the generated HTML (for better styling control)
4. **Upload artifacts**:
   - The generated files are stored as GitHub Actions artifacts.
5. **Deploy to GitHub Pages**:
   - Publishes `resume.html`, `resume.pdf`, and `resume.docx` to [GitHub Pages](https://mm-camelcase.github.io/resume/).

## 📂 Project Structure

```
.github/workflows/
   build-cv.yml # GitHub Actions workflow to build and deploy the resume

styles/
   cv.css # CSS styles for the HTML resume

templates/
   style.docx # Word style reference for DOCX generation

cv.md # The main resume content in Markdown
```


## 📜 Requirements

This project uses:
- **Pandoc** — for converting Markdown into DOCX and HTML.
- **wkhtmltopdf** — for converting styled HTML into PDF.
- **GitHub Actions** — to automate builds and deployments.
- A **Personal Access Token** with `repo` permissions (saved as a secret named `PERSONAL_ACCESS_TOKEN`) for publishing to GitHub Pages.

## ✨ Why This Setup?

- **Single source of truth**: Only update `cv.md` — all formats are automatically regenerated.
- **Custom styling**: Control the look of HTML, PDF, and DOCX independently.
- **Continuous deployment**: New versions are instantly published to GitHub Pages.

## 📄 License

This project is licensed under the [MIT License](LICENSE).
