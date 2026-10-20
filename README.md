# Adwait Datar — academic website

An original academic website using plain HTML and CSS. No build step, JavaScript, external fonts, or dependencies. GitHub Pages serves the repository root directly.

## Local preview

Run with Python 3 from this directory:

```sh
python -m http.server 8000 --bind 127.0.0.1
```

Open http://127.0.0.1:8000. On Windows, use `py -3` if available. Stop with Ctrl+C. Alternatively open `index.html` directly; all content works without a server.

## Maintain

- Edit biography, teaching, background, and contact details in `index.html`.
- Maintain selected publications within the three research themes by copying an existing `article` element. There is no separate exhaustive catalogue. Add the verified Google Scholar profile URL at the end of Research when supplied. No runtime scraping is used.
- Teaching, Student supervision, and Drone experiments are separate sections. Keep project counts distinct from counts of unique students. Experimental videos use direct links rather than embedded players.
- Adjust colors, typography, and mobile layouts in `styles.css` (breakpoints at 620px and 850px).
- Replace `assets/portrait.jpg` to update the portrait.
- Replace `cv_anthropic.pdf` to update the CV, or rename it and update both links in the HTML.

Relative links support local use and GitHub Pages project paths. `.nojekyll` disables unnecessary Jekyll processing.

## Content review

Content was prepared on 17 October 2026 from the supplied CV and the [TUHH profile](https://www.tuhh.de/dsf/team/adwait-datar). Newer 2026 research and teaching details, including ICML acceptance, come from the CV; earlier publication records come from TUHH. Duplicate records were consolidated. The portrait comes from the TUHH profile.

The owner supplied the Google Scholar profile (user ID `IUcHHp8AAAAJ`), linked in the sidebar and after Research. Automated access to its contents was unavailable. Before publication, review the layout on desktop and mobile, metadata, and whether the linked CV is the version you want public.

The restrained academic layout at https://leonsierau.github.io/ inspired the direction; its code was not reused.

## GitHub Pages publication after preview review

1. Commit and push the site files to `main`.
2. Open the repository's **Settings → Pages**.
3. Choose **Deploy from a branch**, **main**, and **/ (root)**.
4. Use the deployment URL shown by GitHub.

The existing remote is `https://github.com/addat10/adwaitdatar.github.io.git`. With this owner and repository name, the default project URL is `https://addat10.github.io/adwaitdatar.github.io/`. A root site at `https://addat10.github.io/` requires a repository named `addat10.github.io`. Confirm the intended account and address before publishing. No deployment or repository rename has been performed.

## Research-led revision (20 October 2026)

The main page keeps a short first-person introduction and starts directly with Research. Two structural options (a brief introduction versus research immediately after the name) were reviewed; the brief introduction was retained for context. Selected papers are organized by theme. Robust control is explicitly marked as work developed during the PhD, with later publication dates retained. NeurIPS 2024 work is labeled as a workshop paper.

The owner supplied the Google Scholar URL and confirmed six project-to-publication relationships (Paulsen, Bakr, Ganz, Jadhav, Hespe, Altalmas), and accepted the proposed Wasserstein grouping.

Supervision counts are explicitly counts of entries on the TUHH project list: 10 master's theses, 6 bachelor's theses, and 11 project works. They are not presented as complete career totals or unique student counts. Other entries include a research seminar and two projects without a specified type.

Bibliographic correction: the owner recalled ACC for Altalmas; TUHH's publication record identifies the matching quaternion/LPV paper as ECC 2021 (DOI 10.23919/ECC54610.2021.9654965), which is retained. Bakr's paper is labeled CDC 2018 using the DOI/conference year, rather than the institutional record's 2019 posting date.

The supplied CV is unchanged. The website does not use the term “mentoring.”
