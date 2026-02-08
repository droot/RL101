# Mermaid Diagrams Setup & Usage

This project uses `@mermaid-js/mermaid-cli` to render Mermaid diagrams via the command line locally.

## Quick Start

### 1. Load the CLI
In any new terminal window, the CLI is loaded automatically via your shell profile. If you're using an existing terminal, source your respective profile script:

**Zsh (macOS default):**
```bash
source ~/.zshrc
```

**Bash:**
```bash
source ~/.bash_profile
```

### 2. Render Diagrams

**For Markdown files (`.md`):**
To parse a markdown file, extract its ````mermaid` blocks, render them, and output a new markdown file that links to those newly created SVGs:
```bash
mmdc -i file.md -o file-rendered.md
```

**For standalone Mermaid files (`.mmd`):**
To compile a single diagram directly to an SVG or PNG:
```bash
mmdc -i diagram.mmd -o diagram.svg
```

---

## Installation Details

For reference, here is how the dependencies were set up on this fresh machine:

1. **NVM & Node.js:** Installed Node Version Manager (`nvm`) user-locally via `curl`. This allows for clean Node installation without needing system-wide package managers like Homebrew or `sudo` access.
2. **Mermaid CLI:** Installed `@mermaid-js/mermaid-cli` globally via `npm`.
3. **Puppeteer & Google Chrome alias:** To guarantee stability with Puppeteer (which Mermaid CLI uses to render SVGs), we disabled downloading a random Chromium binary and instead mapped an `mmdc` alias directly to your system's Google Chrome app bundle inside MacOS. It was appended to your `~/.zshrc` and `~/.bash_profile`.
