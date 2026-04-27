# Implementing AI in Academic Medicine

**A guide to governance and principled practice**

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.19820586.svg)](https://doi.org/10.5281/zenodo.19820586)
[![CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](LICENSE)

This book provides a governance framework for academic medical centers deploying
AI across clinical care, research, education, and business operations. It
organizes the decisions an AMC has to make into a coherent structure: four
semi-independent domains, five cross-cutting workstreams, and the steering
function that connects them.

The live book is at: **<https://seandavi.github.io/amc-ai-governance/>**

## What this covers

The central argument is that an AMC is not a single AI deployment environment —
it is four. Clinical AI, research AI, educational AI, and administrative AI each
carry different risk profiles, different regulatory obligations, different
definitions of success, and different leadership structures. A governance program
that treats them as a single domain will either be too restrictive to be workable
or too permissive to be responsible.

Across all four domains, five operational questions recur: Who can access what
data? What infrastructure and security controls are required? What are the
ethical and regulatory obligations? How does the institution build the workforce
capacity to use AI responsibly? And how does it manage the program across its
full lifecycle, from intake through decommissioning?

These are the workstreams, and this book covers each one in detail.

## How to build the book

You need [Quarto](https://quarto.org/) installed (v1.4+).

```bash
# Render the full book to _book/
quarto render

# Or with just
just render
```

If you have [`just`](https://github.com/casey/just) installed, the `justfile`
provides three recipes: `render`, `publish` (pushes `_book/` to `gh-pages`),
and `deploy` (render then publish).

## How this book was written

This book is itself a product of human-AI collaboration. Research, drafting,
and ongoing maintenance are conducted with the assistance of large language
models — primarily [Claude](https://claude.ai/) and
[Gemini](https://deepmind.google/technologies/gemini/) — working under human
direction and review. The workflow appendix in the book documents the process
in detail, including where AI contributes most and where human judgment is the
necessary check.

Claude Code contributors will find project-specific context in [CLAUDE.md](CLAUDE.md),
including the chapter brief workflow, citation standards, and known technical
quirks.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to submit corrections, updates,
and new material. The book covers a fast-moving regulatory landscape; accurate,
up-to-date contributions are actively useful.

## License

This book is published under the
[Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE) license.
You are free to share and adapt the material for any purpose, including
commercial use, provided you give appropriate credit, link to the license, and
indicate if changes were made.

## Author

Sean Davis — [seandavi@gmail.com](mailto:seandavi@gmail.com)
