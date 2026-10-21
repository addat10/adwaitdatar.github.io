# Adwait Datar — Academic Pages website

This site now uses the [Academic Pages](https://github.com/academicpages/academicpages.github.io) Jekyll template, derived from Minimal Mistakes, as used by Bruce Lee's academic website. The upstream MIT license is retained in `LICENSE` and attribution remains in the footer. The migration uses the upstream `master` archive downloaded on 21 October 2026; Bruce Lee's personal content was not copied.

## Edit content

| File | Content |
| --- | --- |
| `_pages/about.md` | Homepage: About and Research Interests |
| `_pages/publications.md` | Selected publications grouped by research theme; Google Scholar link |
| `_pages/teaching.md` | Compact course list |
| `_pages/supervision.md` | Publication outcomes and complete archived student project list |
| `_pages/experiments.md` | Crazyflie videos and CMG experimental work |
| `_config.yml` | Name, portrait, affiliation, social links, production URL |
| `_data/navigation.yml` | Main navigation |
| `images/portrait.jpg` | Profile photograph |
| `cv.pdf` | Updated CV, linked from the sidebar |

Content is Markdown with YAML front matter. Preserve the front matter and use `relative_url` for internal links, for example `[Research]({{ '/research/' | relative_url }})`. There is no exhaustive publication collection to synchronize; the Research page contains selected papers and links to Scholar for the complete list.

## Preview locally

With Ruby 3.0 or newer and Bundler installed:

```sh
bundle config set --local path vendor/bundle
bundle install
bash scripts/preview.sh
```

Open **http://127.0.0.1:4000**. The local configuration removes the project subpath so the preview opens at `/`. Stop the server with Ctrl+C. Restart Jekyll after changing `_config.yml`.

On this Windows computer, the initial setup uses the existing Ubuntu WSL Ruby installation and workspace-local Bundler and a temporary Linux dependency cache. From PowerShell at the repository root:

```powershell
wsl -d Ubuntu -- bash scripts/preview.sh
```

The script uses `.preview/gems` if present. Local Bundler settings point dependencies to `/tmp/adwait-academicpages-bundle` inside WSL because native Ruby extensions cannot build reliably in the OneDrive path with spaces. Build artifacts, gems, caches, and local Bundler settings are ignored by Git.

## Build and publish

The production configuration matches the existing remote:

- Repository: `addat10/adwaitdatar.github.io`
- URL: `https://addat10.github.io`
- Base path: `/adwaitdatar.github.io`

If the repository is renamed to `addat10.github.io`, set `baseurl: ""`. Do not invent a canonical address before the intended repository name is decided.

Run `bundle exec jekyll build --strict_front_matter` for a production build. GitHub Pages publication is prepared in `.github/workflows/pages.yml`, using Ruby 3.3. It is **manual only** during review: in repository Settings → Pages, select GitHub Actions; then run the workflow when ready. No automatic push deployment is enabled, and nothing was published during migration.

## Checkpoint and rollback

The complete plain HTML/CSS website is preserved in commit **356bc49**, created immediately before migration. The new template migration is left uncommitted for review. The old page can be inspected with `git show 356bc49:index.html`; restore that version only after saving any subsequent work you want to retain.

## Content notes

Content comes from the supplied CV, the public TUHH profile, and owner corrections. The owner supplied the Scholar profile and confirmed six student project/publication outcomes. Project counts (10 master's theses, 6 bachelor's theses, 11 project works) describe entries listed on TUHH, not complete career totals or unique student counts. Altalmas's matching paper is listed as ECC 2021 in the institutional record. The website retains this citation.

The template supplies its own mobile navigation, author sidebar, and light/dark themes. Local customizations add the CV sidebar link, use the existing favicon, hide an unused feed, make the footer sitemap and canonical links respect the project base path, and load MathJax only on pages that request it with `mathjax: true`.

## Compact page revision

The navigation now contains Publications, Teaching, Student Supervision, and Experimental Work. The homepage still contains About and Research Interests. Background and Contact pages were removed; the CV and sidebar email retain those functions. GitHub profile links are disabled by leaving `author.github` unset; `repository` remains configured for deployment.

- Edit selected citations in `_pages/publications.md`. Two broad groups organize three focused lists: information geometry and optimization; learning and dynamical systems; control theory. Citations run newest-first within each list. The former `/research/` URL redirects to `/publications/`.
- Edit the compact course list in `_pages/teaching.md`.
- `_pages/supervision.md` now contains the six confirmed publication outcomes and the full 30-entry archived project list, grouped by qualification type and newest year first. Entries with unspecified type remain explicitly separate.
- `_pages/experiments.md` covers Bitcraze Crazyflie work and two experimentally validated CMG papers (Bakr, CDC 2018; Cisneros et al., IFAC 2020).
- `_sass/_custom.scss` controls compact typography via the `compact-page` front-matter class, without changing the About page's typography.

The ICML 2026 proceedings record was verified at https://proceedings.mlr.press/v306/stein26a.html. The INGE review status was supplied by the owner. The GSI 2025 chapter and extended arXiv preprint are intentionally separate entries.
