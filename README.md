# Adwait Datar — Academic Pages website

This site now uses the [Academic Pages](https://github.com/academicpages/academicpages.github.io) Jekyll template, derived from Minimal Mistakes. The upstream MIT license is retained in `LICENSE` and attribution remains in the footer. The migration uses the upstream `master` archive downloaded on 21 October 2026;

## Edit content

| File | Content |
| --- | --- |
| `_pages/about.md` | Homepage: About and Research Interests |
| `_pages/publications.md` | Selected publications grouped by research theme; Google Scholar link |
| `_pages/teaching.md` | Compact course list and industry tutorials |
| `_pages/supervision.md` | Publication outcomes and complete archived student project list |
| `_pages/experiments.md` | Crazyflie videos and other experimental work |
| `_config.yml` | Name, portrait, affiliation, social links, production URL |
| `_data/navigation.yml` | Main navigation |
| `images/portrait.jpg` | Profile photograph |
| `cv.pdf` | Updated CV, linked from the sidebar |

Content is Markdown with YAML front matter. Preserve the front matter and use `relative_url` for internal links, for example `[Publications]({{ '/publications/' | relative_url }})`. There is no exhaustive publication collection to synchronize; Publications contains selected papers and links to Google Scholar for the complete list. Update the PDF at `cv.pdf`; its sidebar link is in `_includes/author-profile.html`.

## Preview locally

With Ruby 3.0 or newer and Bundler installed:

```sh
bundle config set --local path vendor/bundle
bundle install
bash scripts/preview.sh
```

Open **http://127.0.0.1:4000**. The local configuration removes the project subpath so the preview opens at `/`. Stop the server with Ctrl+C. Restart Jekyll after changing `_config.yml`.

On this Windows computer, the preview uses the existing Ubuntu WSL Ruby installation. From PowerShell at the repository root:

```powershell
wsl -d Ubuntu -- bash scripts/preview.sh
```

The preview script uses `/tmp/adwait-academicpages-tools` if present, with `.preview/gems` as a legacy fallback. Local Bundler settings point dependencies to `/tmp/adwait-academicpages-bundle` inside WSL because native Ruby extensions cannot build reliably in the OneDrive path with spaces. Temporary files may disappear after a restart or cleanup. If Bundler or Jekyll is missing, run the following in **WSL Bash at the repository root**, then start the preview again:

```sh
export GEM_HOME=/tmp/adwait-academicpages-tools
export PATH="$GEM_HOME/bin:$PATH"
gem install bundler -v 2.5.23 --no-document
bundle config set --local path /tmp/adwait-academicpages-bundle
bundle install
bash scripts/preview.sh
```

The preview uses polling to detect edits made from Windows. If a change is not visible, rebuild and refresh rather than assuming browser caching. A local build command is `bundle exec jekyll build --strict_front_matter --config _config.yml,_config.local.yml`. Build artifacts, gems, caches, and local Bundler settings are ignored by Git. Do not commit `_site`, `vendor`, `.bundle`, or `.preview`.

## Build and publish

The production configuration matches the existing remote:

- Repository: `addat10/adwaitdatar.github.io`
- URL: `https://addat10.github.io`
- Base path: `/adwaitdatar.github.io`

If the repository is renamed to `addat10.github.io`, set `baseurl: ""`. Do not invent a canonical address before the intended repository name is decided.

Run `bundle exec jekyll build --strict_front_matter` for a production build. GitHub Pages publication is prepared in `.github/workflows/pages.yml`, using Ruby 3.3. This workflow is **manual only**: in repository Settings → Pages, select GitHub Actions; then run the workflow when ready. The remote Pages setting has not been verified. If it is configured to deploy from a branch, pushing to that branch can publish automatically regardless of the manual workflow. Nothing has been pushed or published as part of this work.

## Checkpoint and rollback

The complete plain HTML/CSS website is preserved in commit **356bc49**, created immediately before migration. The Academic Pages migration and initial reviewed content were committed as **e9f13a9**. Subsequent review refinements are local changes until committed separately. The old page can be inspected with `git show 356bc49:index.html`; restore that version only after saving any subsequent work you want to retain.

## Content notes

Content comes from the supplied CV, the public TUHH profile, and owner corrections. The owner supplied the Scholar profile and confirmed six student project/publication outcomes. Project counts (10 master's theses, 6 bachelor's theses, 11 project works) describe entries listed on TUHH, not complete career totals or unique student counts. Altalmas's matching paper is listed as ECC 2021 in the institutional record. The website retains this citation.

The template supplies its own mobile navigation, author sidebar, and light/dark themes. Local customizations add the CV sidebar link, use the existing favicon, hide an unused feed, make the footer sitemap and canonical links respect the project base path, and load MathJax only on pages that request it with `mathjax: true`.

## Compact page revision

The navigation now contains Publications, Teaching, Student Supervision, and Experimental Work. The homepage still contains About and Research Interests. Background and Contact pages were removed; the CV and sidebar email retain those functions. GitHub profile links are disabled by leaving `author.github` unset; `repository` remains configured for deployment.

- Edit selected citations in `_pages/publications.md`. The three sections are Information Geometry and Optimization; Architectures for Dynamical Systems; and Control Theory (Work developed during my PhD). Citations run newest-first within each list. The former `/research/` URL redirects to `/publications/`.
- Edit the compact course list in `_pages/teaching.md`.
- `_pages/supervision.md` contains four ongoing bachelor's theses, the 2025 master's thesis co-supervision, six confirmed publication outcomes, and the 30-entry historical project archive. Historical entries are grouped by qualification type and newest year first; entries with unspecified type remain separate. Keep historical project counts distinct from recent supervision and unique-student totals. The Peter Paulsen and Maximilian Dio project entries have explicit anchors used by Experimental Work.
- `_pages/experiments.md` covers Crazyflie source-seeking work, Maximilian Dio's quadrotor MPC project, and two experimentally validated CMG papers (Bakr, CDC 2018; Cisneros et al., IFAC 2020). The latter three entries share the Other Experimental Work section.
- `_sass/_custom.scss` controls compact typography via the `compact-page` front-matter class, without changing the About page's typography.

The ICML 2026 proceedings record was verified at https://proceedings.mlr.press/v306/stein26a.html. The owner confirmed on 23 October 2026 that the INGE submission remains under review and extends the GSI 2025 paper. These are separate entries with their relationship explicitly stated; update the review status when it changes.

## Review follow-ups

The review report and decision tracker are stored locally under `.preview/reviews/`, which is ignored by Git and excluded from the website. At the owner’s request, Machine Learning II Mediasite links are now included in a collapsible list on Teaching while the owner checks sharing permission. No video files have been uploaded or access permissions changed. The existing Optimal and Robust Control YouTube link is labelled Tutorial recordings. The Crazyflie description distinguishes Adwait's contributions from those of students and collaborators; the CMG entries are citations only, as requested by the owner.

Semester labels use full years: winter 2023–24 corresponds to WiSe23; Optimal and Robust Control is listed in summer semesters. Publications uses `hide_title: true` so its introductory Scholar sentence can precede the in-content “Selected Publications” heading without a duplicate automatic title. Section headings use Title Case; paper and project titles retain their supplied wording.

## Make a text edit yourself

1. Open the repository folder in VS Code (or another text editor).
2. Open the relevant `_pages/*.md` file from the table above. Edit the text below the closing `---`; preserve the front matter at the top.
3. Use `## Heading` for a section, `- Item` for a list, `**bold**` for emphasis, and `[label](https://example.org)` for an external link. Copy the existing `relative_url` pattern for links within the site. The Machine Learning II recording list is inside a `<details>` block in `_pages/teaching.md`.
4. Save, then run `wsl -d Ubuntu -- bash scripts/preview.sh` from PowerShell in this folder. Open http://127.0.0.1:4000/ and check the changed page. If port 4000 is already serving a static preview, stop that server first; saving alone does not rebuild a static preview.
5. Review the diff with your Git client, then commit when satisfied. A commit saves the changes locally. Pushing sends them to GitHub and may publish them depending on GitHub Pages settings; see Build and publish above.

Edit `_data/navigation.yml` to change the menu, `_config.yml` for sidebar/profile settings, and `_sass/_custom.scss` for custom styling. Replace `cv.pdf` with a new PDF using the same filename. Do not edit generated `_site` files: Jekyll overwrites them on the next build.
