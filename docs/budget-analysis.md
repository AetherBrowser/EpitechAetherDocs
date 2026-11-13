---
name: "AETHER"
title: "Budget Analysis & Financial Planning"
slogan: "High-performance memory-safe web browser"
document-date: "September 15, 2026"
modify-date: "November 13, 2026"
---

# Executive Summary

Aether is an open-source, high-performance web browser built on Rust, Servo rendering engine, and MPV media player. The project aims to address critical issues in current browsers: excessive RAM and CPU usage, security vulnerabilities from aging C++ codebases, privacy concerns with invasive trackers, and bloated user interfaces.

**Key Competitive Advantages:**

- Memory efficiency: 240-245 MiB startup (vs. Firefox 475-605 MiB, Chrome 1.2-1.5 GiB)

- Fast startup: 0.90s CPU time (vs. Firefox 3.27s, Chrome 1.15s)

- Memory safety through Rust language

- Optimized 4K video playback with MPV integration

- Built-in ad and tracker blocking

# Part 1: Resource Identification

## 1.1 Infrastructure & Services (Cloud/SaaS)

### Compute Resources

- Self-hosted CI/CD runners for building Rust binaries (Linux, Windows, macOS)

- Build servers with multi-core processors for parallel Rust compilation

- Test environment servers for automated browser testing

### Storage & Database

- PostgreSQL database for telemetry data, crash reports

- Object storage for installer binaries (multi-platform releases)

- Artifact storage for CI/CD pipeline outputs

- Backup storage for critical project data

### Network & Distribution

- Static IP addresses for web servers and build infrastructure

- Domain names: aether-browser.org, download subdomain, docs subdomain, \...

- SSL/TLS certificates for secure connections

### DevOps & Tooling

- GitHub hosting for source code repository

- CI/CD pipeline services (GitHub Actions)

- Monitoring infrastructure (Graphana ?)

- Error tracking and crash reporting system (Sentry or similar)

- Performance monitoring (SHM -- Self Hosted Metrics)

## 1.2 Hardware & Physical Equipment

### Development Workstations

- High-performance computers for 5 developers

- Recommended specs per workstation: 32GB+ RAM, 8+ core CPU, NVMe SSD

### Testing Devices (our materials and community participation)

- Multiple OS configurations for cross-platform testing:

\- Windows 8/10/11 machines (various hardware profiles)

\- Linux distributions (Ubuntu, Fedora, Arch, \...)

\- macOS devices (Intel and Apple Silicon)

- Low-end hardware for testing on older systems (target market validation)

### Build Infrastructure

- Self-hosted build servers (potential rack-mount servers or cloud instances)

- Network equipment (switches, routers if self-hosting)

# Part 2: Financial Benchmark

## 2.1 Infrastructure for Builds and DevOps

  -------------------------- -------------------------------------- ----------------------------- -------------
  **Service**                **Provider**                           **Estimated Cost (in eur)**   **Period**

  CI/CD Runners (3x large)   GitHub Actions / Self-hosted runners   0-400                         Monthly

  PostgreSQL Database        AWS RDS / DigitalOcean / Self-hosted   50-100                        Monthly

  Monitoring                 Grafana Cloud / Datadog                0-150                         Monthly

  Error Tracking             Sentry / Open Source                   0-80                          Monthly

  **Subtotal (DevOps)**                                             **50-730**                    **Monthly**
  -------------------------- -------------------------------------- ----------------------------- -------------

## 2.2 Infrastructure for App Distribution and Website

  ----------------------------- -------------------------------------- ----------------------------- -------------
  **Service**                   **Provider**                           **Estimated Cost (in eur)**   **Period**

  Object Storage                AWS S3 / Backblaze B2                  €10-50                        Monthly

  Web Hosting                   Netlify / Vercel / VPS / Self-hosted   €0-50                         Monthly

  Domain Names                  Namecheap / Cloudflare                 5-20                          Yearly

  SSL Certificates              Let\'s Encrypt (Free)                  0                             Free

  **Subtotal (Distribution)**                                          **15-120**                    **Monthly**
  ----------------------------- -------------------------------------- ----------------------------- -------------

# Part 3: The Budget (CAPEX & OPEX)

## 3.1 CAPEX (Capital Expenditure) - One-Time Acquisition

  ---------------------------------------------------------------------- ----------------- -----------------------------
  **Item**                                                               **Quantity**      **Estimated Cost (in eur)**

  **Developer Workstations**                                                               

  High-performance PC (16-32GB RAM, Ryzen 9 / Intel core i7, 1TB NVMe)   5                 0-9,000

  **Software Licenses**                                                                    

  Windows 11 Pro licenses (if needed)                                    5                 0-700

  Linux (Ubuntu/Fedora/Arch) - Free                                      5                 0

  **Testing Hardware**                                                                     

  Low-end test machines (validate old hardware)                          3                 0-1,000

  macOS devices (Mac Mini M2 / used MacBook)                             2                 0-2,000

  **Total CAPEX**                                                                          **0-12,700**
  ---------------------------------------------------------------------- ----------------- -----------------------------

## 3.2 OPEX (Operational Expenditure) - Running Costs

  ----------------------------------------------------- ---------------------- ---------------------
  **Category**                                          **Monthly (in eur)**   **Yearly (in eur)**

  DevOps Infrastructure (CI/CD, Database, Monitoring)   0-730                  0-8,760

  Distribution Infrastructure (Storage, Hosting)        0-200                  0-2,400

  Domains                                               -0.5                   3-5

  Electricity (build servers, if self-hosted)           10-100                 120-1,200

  Miscellaneous (tools, services, testing)              0-100                  0-1,200

  **Total OPEX**                                        **10-1,130**           **123-13,565**
  ----------------------------------------------------- ---------------------- ---------------------

# 3.3 Scaling Scenarios

As Aether grows from alpha to public release, infrastructure costs will scale based on user adoption. Below are three scenarios:

## Scenario 1: Alpha/Beta (100-1,000 users)

**Current Phase - Minimal Infrastructure**

- Monthly OPEX: 10-1130 €

- GitHub free tier and/or basic self-hosted CI/CD

- Free or low-tier hosting (Netlify/Vercel free tier)

- Limited telemetry and crash reporting

## Scenario 2: Public Release (10,000-100,000 users)

**Growth Phase - Scaled Infrastructure**

- Monthly OPEX: 40-1300 €

- Increased CDN bandwidth for installer downloads

- Dedicated PostgreSQL instance with higher capacity

- Professional monitoring and error tracking (Sentry paid tier)

- Multiple build servers for faster releases

- Enhanced telemetry infrastructure

## Scenario 3: Mass Adoption (500,000+ users)

**Enterprise Scale - Full Infrastructure**

- Monthly OPEX: 70-1800 €

- Global CDN with edge caching

- Distributed database infrastructure with replication

- 24/7 monitoring and alerting

- Dedicated security infrastructure and audits

- Load-balanced web servers

- Advanced analytics and user behavior tracking

- Potential for sponsorships or foundation support

# Cost Optimization Strategies

## Open Source Benefits

- Free GitHub hosting and Actions minutes (2,000-3,000 min/month free tier)

- Community contributions reduce development costs

- Potential for corporate sponsorships (GitHub Sponsors, Open Collective)

- Free SSL certificates via Let\'s Encrypt

## Infrastructure Optimizations

- Use Linux-based development to avoid Windows licensing costs

- Self-host build runners instead of cloud CI/CD (higher CAPEX, lower OPEX)

- Leverage free tiers: Netlify, Vercel, Cloudflare

- Compress and optimize installer binaries to reduce bandwidth costs

## Funding Opportunities

- Apply for grants from Mozilla Foundation, Linux Foundation

- GitHub Sponsors or Patreon for ongoing support

- Corporate sponsorships from companies interested in privacy/security

- Rust Foundation support for Rust-based projects

# Budget Summary

  ----------------------------------- ------------------ -------------------
  **Budget Category**                 **Low Estimate**   **High Estimate**

  Initial CAPEX (One-time)            0                  12,700

  Monthly OPEX                        10                 1130

  Yearly OPEX                         123                13,565

  **Year 1 Total Cost**               **123**            **27,265**
  ----------------------------------- ------------------ -------------------

# Recommendations

- **Start with minimal infrastructure: Target the low-end budget during alpha/beta phases using free tiers and self-hosted solutions.**

- **Leverage open-source ecosystem: Maximize free services from GitHub, Cloudflare, and community hosting options.**

- **Plan for scaling: Build infrastructure that can grow incrementally from 10 to millions users per month.**

- **Seek funding early: Apply for grants and sponsorships from Rust Foundation, Mozilla Foundation, and GitHub Sponsors before costs escalate.**

- **Monitor and optimize: Continuously review infrastructure costs and optimize based on actual usage patterns and user growth.**

# Conclusion

The Aether browser project presents a compelling value proposition: high performance, memory safety, and user privacy at a fraction of the resource cost of mainstream browsers. With initial capital expenditure monthly operational costs starting at 123 €, the project is financially viable for a small development team.

The benchmarks demonstrate clear technical advantages, positioning Aether as an ideal solution for developers and users with older hardware. By leveraging the open-source ecosystem, self-hosting infrastructure, and community support, the project can maintain low operational costs while delivering a superior browsing experience.

As the project scales from alpha to mass adoption, infrastructure costs will grow proportionally, but the foundation of Rust\'s memory safety, Servo\'s rendering efficiency, and MPV\'s optimized video playback will continue to provide competitive advantages against Chrome, Firefox, and emerging competitors like Ladybird.

**Project Team:** Corentin BERGAENTZLE, Thomas RICHALET, Axel BATTIGELLI, Matteo MILIN, Nathan CALLEGARI

