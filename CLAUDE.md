# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make              # Preview site locally (quarto preview)
make build        # Render site to _site/
make deploy       # Build + rsync to SiteGround production server
make clean        # Remove _site/
```

## Architecture

This is a minimal single-page Quarto website for [OTexts.com](https://OTexts.com), a catalog of open-access textbooks. The site has two content pages (`index.qmd`, `404.qmd`) and no subdirectories.

**Key files:**
- [_quarto.yml](_quarto.yml) — site config: theme (Tango), navbar/footer colors (#536878), Google Analytics, Fira Sans font
- [index.qmd](index.qmd) — homepage with book catalog (FPP2, FPP3, Python edition) displayed in a 3-column responsive grid
- [styles.css](styles.css) — custom button styles (orange #c14b14, blue hover #234460) and table overrides
- [header.html](header.html) — Fira Sans font import
- [.htaccess](.htaccess) — Apache config; copied into `_site/` at deploy time (not auto-copied by Quarto)

**Deployment:** rsync to SiteGround via SSH on port 18765. The `.htaccess` file must be manually copied before rsync (`make deploy` handles this).

The books themselves are hosted on OTexts.com — this repo only hosts the landing page that links to them.
