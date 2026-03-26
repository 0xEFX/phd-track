```
# My PhD Notes - MkDocs Site

This repository contains my PhD notes, experiments, and literature summaries, built with [MkDocs](https://www.mkdocs.org/) and a custom theme.

---

## 1. Set up a Python virtual environment

It’s best to keep dependencies isolated:

```bash
# Create a virtual environment
python3 -m .venv venv

# Activate it
source .venv/bin/activate

---

## 2. Install MkDocs and theme

Inside the activated virtual environment, install MkDocs and your chosen theme:

```bash
pip install mkdocs mkdocs-terminal
```

> If using a different theme, replace `mkdocs-terminal` with the desired package.

---

## 3. Serve the site locally (development)

```bash
mkdocs serve
```

- Opens a live preview at [http://127.0.0.1:8000](http://127.0.0.1:8000)  
- Automatically reloads when you edit Markdown files

---

## 4. Build the static site

```bash
mkdocs build
```

- Output goes into the `site/` folder  
- Ready to deploy to GitHub Pages, a web server, or any static hosting

---

## 5. Optional: Deploy to GitHub Pages

```bash
mkdocs gh-deploy
```

- Publishes the site to the `gh-pages` branch  
- Automatically builds the site before deployment

---

## 6. Notes

- Keep your Markdown files in the `docs/` folder  
- Update `mkdocs.yml` to adjust navigation (`nav:`) or theme settings  
- Always activate the virtual environment before installing packages or serving the site

---

## 7. Re-install / update dependencies

If needed on a new machine:

```bash
pip install -r requirements.txt
```

- Save current dependencies with:

```bash
pip freeze > requirements.txt
```

> Pro tip: Use `docs/index.md` for your homepage and create `index.md` in each subfolder for section intros.
```
