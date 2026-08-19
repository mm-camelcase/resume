# Mark Mitchell

::: {custom-style="ContactRight"}
**Email:** [mark@camelcase.email](mailto:mark@camelcase.email)  
**Linkedin:** [www.linkedin.com/mmc](https://www.linkedin.com/in/mark-mitchell-camelcase/)  
**Portfolio:** [www.camelcase.club](https://www.camelcase.club/)  
**Github:** [github.com/mm-camelcase](https://github.com/mm-camelcase)  
:::

## Summary

AI/software engineer with 25+ years building production systems, now specialising at the intersection of applied AI engineering and compliance governance. Recent work spans multi-cloud RAG pipelines, agentic workflow infrastructure, and AWS Bedrock deployments, layered on deep DevOps/SRE and cloud architecture experience (AWS, Kubernetes, Terraform, ArgoCD). Architectures are designed compliant by default — IAM, SSO and least-privilege access policies built into the platform layer, not retrofitted — informed by hands-on ISO 27001 and SOC 2 governance work. Currently building AI infrastructure and SDLC tooling at a Series A AI startup, alongside a public engineering portfolio (camelcase.club) as a working demonstration of these skills.

## Technical Expertise

**AI & Agentic Systems**

- RAG pipelines (Azure Document Intelligence, vector search, LLM tool-calling), AWS Bedrock, multi-cloud AI infrastructure (AWS/Azure), LLM observability (LangFuse), agent-assisted development at scale (parallel agent orchestration)

**Cloud & Platform Architecture**

- AWS (Bedrock, EKS, ECS, Lambda, S3, SQS, CloudWatch, IAM, VPC/Networking), Azure, Kubernetes, ArgoCD, Terraform/Terragrunt, Docker/Helm, CI/CD (GitHub Actions, Jenkins, GitLab CI)

**Security & Compliance**

- ISO 27001, SOC 2, DevSecOps, IAM/SSO design, least-privilege access architecture, OAuth 2.0/JWT, secure-by-default infrastructure patterns

**Core Development**

- Java (Spring Boot, Spring Security, Spring Cloud, Hibernate), Python (agent-assisted development), JavaScript/TypeScript (React, Angular, Vue.js), REST/GraphQL APIs, microservices & event-driven architecture

## Professional Experience

### Platform & AI Engineer — Alludium (Series A, AI agent operating system)  

**Jul 2025 – Present**

Lead platform engineer, driving DevOps/SRE, AI infrastructure and security/compliance for a no-code agentic workflow platform, while also contributing as a developer on the platform's core agentic tooling. Joined pre-infrastructure and built the majority of the platform foundation, using agent-accelerated development to cover ground well beyond typical single-engineer scope.

**Key Achievements:**

- Designed and built the entire multi-cloud infrastructure-as-code foundation from scratch (Terraspace + Terraform modules), establishing the architectural base the platform has scaled on since
- Built the first end-to-end automated release process: SemVer-versioned (major/minor/patch + hotfix), fully automated via GitHub Actions, Kubernetes and ArgoCD
- Led a full security lockdown of a previously ungoverned access model — replaced scattered static keys with AWS SSO and role-based permissions across pipelines and infrastructure, including AWS Bedrock access
- Built a full observability stack from zero visibility to fully correlated traces, logs and metrics (Grafana), enabling direct trace-to-log-to-metric navigation during incident response; extended this with LangFuse for AI agent observability, correlated back to the same trace data (v4 SDK/OTEL upgrade planned)
- Built automated cost and error reporting used directly in CEO and executive-level meetings
- Delivered a multi-cloud RAG pipeline end-to-end — infrastructure, code and architecture — ingesting and extracting documents via Azure Document Intelligence, indexing to a vector store, and retrieving results into LLM tool calls for downstream Q&A; selected the ingestion engine via a structured, data-driven bake-off, documented and presented as a formal recommendation
- Designed and built infrastructure for a separate invite-only platform on an isolated AWS account for a sister company, including a self-serve developer setup that lets non-technical users configure and manage their own environment by pointing an agent at a page
- Documented every major architectural decision as an ADR with a risk/reward analysis, ensuring decisions were deliberately scoped to the organisation's size and stage rather than over-engineered

### Principal Engineer (Contract) — Financefair  

**Oct 2023 – Nov 2024**

Fintech platform enabling SMEs to access working capital through invoice trading.

Led technical architecture and infrastructure modernisation; built and mentored the engineering team.

- Diagnosed and resolved critical system stability issues via JVM memory optimisation, eliminating production crashes
- Implemented Datadog observability with custom alarms and dashboards, reducing incident response time by 80%
- Rebuilt infrastructure using Terraform, Terragrunt and GitHub Actions, improving deployment consistency
- Migrated services and databases to private subnets with AWS Session Manager, eliminating SSH access vulnerabilities
- Orchestrated EC2/Docker → AWS ECS migration, improving scalability and reducing infrastructure costs by 40%

### Senior Software Developer (Contract) — Workhuman (Integrations Team)  

**Aug 2021 – Apr 2023**

Recognition software enabling employees to recognise and reward each other.

- Led security modernisation for public-facing APIs
- Built a Kubernetes sandbox development environment (Minikube, Helm, Skaffold)
- Delivered technical training across squads (POCs, documentation, presentations) covering AWS ECS deployment, Spring Security/Ping Federate/Cognito, microservice patterns, and feature-flag deployment (AWS AppConfig)

### Senior Software Developer (Contract) — LexisNexis Risk Solutions (Telematics Team)  

**Sept 2020 – Aug 2021**

Analytic solutions for car insurance companies using automaker-supplied event data.

- Architected and deployed Spring Boot microservices enriching Connected Car event data with PII, reading from encrypted S3 and publishing to SQS
- Wrote Terraform infrastructure modules and designed AWS deployment pipelines (Fargate, via GitLab)
- Built unit/integration/BDD test suites using LocalStack; mentored team members

### Head of Technology (Contract) — Invoicefair  

**Sept 2017 – Jan 2020**

Fintech invoice-trading platform (€1.5bn+ traded; Deloitte Most Disruptive Fintech 2019).

- Led migration of a legacy .NET monolith to microservices architecture
- Secured Angular/Spring Boot services using OAuth 2.0 and Zuul; rewrote internal banking API (Spring Boot, SQL Server)
- Integrated external APIs (Experian, MoneyCorp, Slack); configured Terraform/Chef infrastructure and Jenkins-on-Kubernetes CI/CD
- Built a remote developer sandbox on Eclipse Che for fully emulated personal dev environments

### Senior Software Developer (Contract) — The Now Factory (an IBM company)  

**Mar 2013 – June 2017**

Real-time network/business data analytics for communications service providers (acquired by IBM, 2014).

- Built a high-speed data loading CLI distributing 100s of millions of records across ~80 Oracle instances (Java, Spring Batch, SQL Loader)
- Developed a next-gen analytics UI POC (ES6, Node.js, React, Redux)

### Senior Software Developer — Wedo Technologies  

**Jul 2008 – Feb 2013**

Revenue assurance products for communications service providers.

- Built backend for a Java/Spring/REST/JMS data analytics application (Presto, Hive)
- Implemented a formula parser/validation service (Spring, ANTLR) and configurable charting dashboards

### Software Developer — In1Solutions  

**Jan 2001 – Sep 2006**

Hotel booking engine technology provider.

- Developed a booking engine used by hundreds of hoteliers (Flash UI, Java/EJB, Oracle)
- Integrated with hotelier property management systems via SOAP/REST/JAXB/Axis

## Education & Certifications

- Sun Certified Programmer (Java 5.0)
- H. Dip in Computing — Athlone Institute of Technology (1999–2000)
- B. Eng Polymer Engineering (1995–1999)
