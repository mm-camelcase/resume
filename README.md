# 📄 Resume Builder

[![Build Resume](https://github.com/mm-camelcase/resume/actions/workflows/build-cv.yml/badge.svg)](https://github.com/mm-camelcase/resume/actions/workflows/build-cv.yml)
[![View Resume](https://img.shields.io/badge/View%20Resume-HTML-blue?logo=google-chrome)](https://mm-camelcase.github.io/resume/resume.html)
[![Download PDF](https://img.shields.io/badge/Download-PDF-red?logo=adobe-acrobat-reader)](https://mm-camelcase.github.io/resume/resume.pdf)

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
6. **Sync source Markdown to the camelcase-agent knowledge base**:
   - Uploads the raw `cv.md` source file to `s3://camelcase-agent-kb-966412459053/cv.md`.

## 📂 Project Structure

```
.github/workflows/
   build-cv.yml # GitHub Actions workflow to build and deploy the resume

styles/
   cv.css # CSS styles for the HTML resume

templates/
   style.docx # Word style reference for DOCX generation

aws/
   github-oidc-cv-upload-role.yml # Limited GitHub Actions OIDC role for S3 upload

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

## camelcase-agent knowledge-base sync

On every push to `main`, the GitHub Actions workflow uploads the source CV Markdown file to:

```text
s3://camelcase-agent-kb-966412459053/cv.md
```

Only the raw UTF-8 Markdown from `cv.md` is uploaded to this bucket. Generated HTML, PDF, and DOCX artifacts are not uploaded to the camelcase-agent knowledge-base bucket.

The workflow uses GitHub Actions OIDC via `aws-actions/configure-aws-credentials`. The role ARN is stored in the GitHub repository secret `AWS_ROLE_TO_ASSUME`.

The upload role allows writing only the target object:

```text
s3:PutObject arn:aws:s3:::camelcase-agent-kb-966412459053/cv.md
```

If the bucket is not in `eu-west-1`, set the repository variable `AWS_REGION` to the bucket's AWS region.

Before enabling production use, back up the existing agent-side CV. This repo should not delete or overwrite anything in the camelcase-agent repository.

### AWS setup

This repo includes a small CloudFormation template for the limited GitHub Actions upload role:

```text
aws/github-oidc-cv-upload-role.yml
```

The role trust policy allows only this repository's `main` branch to assume the role via GitHub Actions OIDC:

```text
repo:mm-camelcase/resume:ref:refs/heads/main
```

The inline role policy allows only:

```text
s3:PutObject arn:aws:s3:::camelcase-agent-kb-966412459053/cv.md
```

First, confirm whether this AWS account already has a GitHub Actions OIDC provider:

```bash
aws iam list-open-id-connect-providers
```

If `token.actions.githubusercontent.com` is not listed, create it:

```bash
aws iam create-open-id-connect-provider \
  --url https://token.actions.githubusercontent.com \
  --client-id-list sts.amazonaws.com
```

Then capture the provider ARN:

```bash
GITHUB_OIDC_PROVIDER_ARN="$(aws iam list-open-id-connect-providers \
  --query "OpenIDConnectProviderList[?contains(Arn, 'token.actions.githubusercontent.com')].Arn | [0]" \
  --output text)"
```

Deploy the limited upload role:

```bash
aws cloudformation deploy \
  --stack-name resume-cv-s3-upload-github-oidc \
  --template-file aws/github-oidc-cv-upload-role.yml \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides GitHubOidcProviderArn="$GITHUB_OIDC_PROVIDER_ARN"
```

Get the role ARN:

```bash
aws cloudformation describe-stacks \
  --stack-name resume-cv-s3-upload-github-oidc \
  --query "Stacks[0].Outputs[?OutputKey=='RoleArn'].OutputValue | [0]" \
  --output text
```

Store that ARN as the repository secret `AWS_ROLE_TO_ASSUME`.

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

© 2025 Camelcase Ltd. – All rights reserved.
