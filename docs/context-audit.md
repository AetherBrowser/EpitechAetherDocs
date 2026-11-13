---
name: "AETHER"
title: "Technical & Architecture"
slogan: "High-performance memory-safe web browser"
document-date: "February 10, 2026"
modify-date: "November 13, 2026"
---

## PART 1: COMPETITIVE CONTEXT

### 1.1 Intuition Statement

Aether Browser Vision: We are convinced that modern web users deserve a browsing experience that doesn\'t compromise between performance, privacy, and usability. Current mainstream browsers like Chrome prioritize data collection and resource consumption, while privacy-focused alternatives often sacrifice user experience and speed. Aether aims to fill this gap by delivering a lightweight, blazing-fast browser that puts user privacy first without the bloat of mainstream browsers. Our open-source approach ensures transparency and community-driven development, creating a browser that truly serves its users rather than corporate interests. By combining cutting-edge performance optimization with robust privacy features and a clean, minimal interface, Aether will redefine what users expect from their web browsing experience.

### 1.2 Objective Criteria Definition

Defined criteria across Business & Technical axes for browser comparison:

**Business Criteria:**

- Market Share & Adoption Rate

- Community Engagement & Open-Source Contribution

- User Experience & Ease of Use

- Privacy Protection Level

**Technical Criteria:**

- Page Load Speed & Real-time Latency

- Memory Footprint (RAM Usage)

- Web Standards Compliance (HTML5, CSS3, ES6+)

- Security Architecture & Sandboxing

### 1.3 Competitive Analysis

  -------------------- --------------------- ----------------------- ------------------------ ---------------------
  **Criterions/App**   **Aether**            **Chrome**              **Firefox**              **Ladybird**

  BUSINESS                                                                                    

  Community features   Open-source, GitHub   Limited (Chromium)      Strong community         Open-source (new)

  Ease of use          Minimal UI, Clean     Feature-rich, Complex   Moderate, Customizable   Basic (in dev)

  TECHNICAL                                                                                   

  Memory Usage         \<200MB base          \>1,6GB                 \~350MB base             Lightweight

  Web Standards        HTML5/CSS3/ES6+       Chromium (Full)         Gecko (Full)             Limited (in dev)

  Cross-Platform       Windows/Linux/Mac     All platforms           All platforms            Linux/Mac (planned)

  Extension Support    None yet              Chrome Web Store        Firefox Add-ons          None yet
  -------------------- --------------------- ----------------------- ------------------------ ---------------------

## PART 2: TECHNICAL & LEGAL AUDIT

### 2.1 Security & Legal Audit

**GDPR/RGPD Compliance**

  ------------------------- -------------- ----------------- -------------------- ----------------------
  **Data Type**             **Purpose**    **Legal Basis**   **Retention**        **Storage Location**

  AETHER BROWSER                                                                  

  Nb of tabs / Cpu % / OS   Metrics        Consent           3 Months anonymous   EU (France)

  AETHER SITE                                                                     

  Email                     Account        Consent           Until deletion       EU (France)

  Name                      Profile        Contract          Until deletion       EU (France)

  IP Address                Security       Legitimate        When load only       EU (France)
  ------------------------- -------------- ----------------- -------------------- ----------------------

**GDPR Checklist:**

- [ ] Privacy Policy created

- [ ] Cookie consent banner implemented

- [ ] Data retention policy defined

- [ ] Right to deletion implemented

- [ ] Data portability feature ready

- [ ] DPO designated or not required

**Security Risks (OWASP Top 10)**

  --------------------------- ----------------- ---------------------------------------
  **OWASP Risk**              **Applicable?**   **Mitigation Strategy**

  SQL/NoSQL Injection         Yes/No            Prepared statements, input validation

  Sensitive Data Exposure     Yes/No            Encryption at rest/transit, HTTPS

  Broken Access Control       Yes/No            Role-based access control (RBAC)

  Security Misconfiguration   Yes/No            Security headers, hardened configs
  --------------------------- ----------------- ---------------------------------------

### 2.2 Accessibility Strategy (A11y)

**Standards & Targets:** WCAG 2.1 (International) / RGAA 4.1 (France) - Target Level: AA

**Accessibility Features Checklist:**

**Visual Impairments:**

- [ ] Screen reader compatibility (ARIA labels)

- [ ] Sufficient color contrast (4.5:1 for text)

- [ ] Resizable text without layout breaking

**Motor Impairments:**

- [ ] Full keyboard navigation

- [ ] Large clickable areas for shorcuts and functionality (min 44x44px)

**Cognitive Impairments:**

- [ ] Clear, simple language

- [ ] Consistent navigation

### 2.3 Team Skills Audit

  ------------------------------ ---------------- ------------------- --------------------- --------------------- --------------------- -----------------------
  **Required Skill**             **Importance**   **Level of Axel**   **Level of Matteo**   **Level of Nathan**   **Level of Thomas**   **Level of Corentin**

  TECHNICAL                                                                                                                             

  Engine / Core                  Critical         4                   2                     1                     4                     2

  User interface                 Critical         4                   5                     3                     4                     2

  Build solution and installer   High             5                   2                     2                     3                     2

  Site exposure                  Medium           5                   4                     3                     3                     4

  DevOps / Infra                 Critical         5                   3                     2                     3                     4

  Security Expert                High             3                   2                     2                     4                     2

  SOFT SKILLS                                                                                                                           

  Project Management             Critical         3                   3                     3                     4                     4

  UX/UI Design                   Critical         4                   5                     4                     4                     2

  Legal/GDPR Knowledge           Medium           4                   2                     2                     2                     2
  ------------------------------ ---------------- ------------------- --------------------- --------------------- --------------------- -----------------------

# APPENDIX: USEFUL RESOURCES

## Legal & Compliance

- CNIL (France): https://www.cnil.fr/

- GDPR Official Text: https://gdpr-info.eu/

- OWASP Top 10: https://owasp.org/www-project-top-ten/

- WCAG 2.1 Guidelines: https://www.w3.org/WAI/WCAG21/quickref/

## Cost Calculators

- AWS Pricing Calculator: https://calculator.aws/

- Google Cloud Pricing: https://cloud.google.com/products/calculator

- DigitalOcean Pricing: https://www.digitalocean.com/pricing/

## Benchmarking Tools

- G2: https://www.g2.com/ (SaaS reviews)

- Stack Share: https://stackshare.io/ (Tech stack comparisons)

