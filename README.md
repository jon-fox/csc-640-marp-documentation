# Quality Software Documentation

Documentation on building maintainable, secure, and scalable software. Created for CSC 640 using the [HW4 REST API project](https://github.com/jon-fox/rest-api-php-server-project) and professional experience as examples.

---

## Structure

| Directory | Purpose |
|-----------|---------|
| [content/](content/) | Source markdown files |
| [presentation/](presentation/) | Generated Marp presentation |
| [report/](report/) | Weekly progress log |
| [scripts/](scripts/) | Build script for presentation |

---

## Content Files

| File | Purpose |
|------|---------|
| [introduction.md](content/introduction.md) | What quality software is |
| [principles.md](content/principles.md) | Fail fast, DRY, separation of concerns, environment isolation, automation |
| [frameworks.md](content/frameworks.md) | FastAPI, OpenAI SDK, FastMCP examples |
| [testing.md](content/testing.md) | Testing approaches and principles |
| [documentation.md](content/documentation.md) | Documentation standards and practices |

---

## Building Presentation

Run `./scripts/build_presentation.sh` to generate presentation/presentation.md from content files.

---

## Project Reference

Examples throughout reference the [REST API PHP Server Project](https://github.com/jon-fox/rest-api-php-server-project)
