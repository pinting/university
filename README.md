# ELTE Matematika BSc 2026 university materials

## Build

Install the required dependencies then build the project.

```bash
sudo pacman -S --needed \
  make \
  pandoc-cli \
  texlive-basic \
  texlive-latex \
  texlive-latexrecommended \
  texlive-latexextra \
  texlive-xetex \
  texlive-pictures \
  texlive-fontsrecommended \
  texlive-fontsextra \
  texlive-mathscience \
  gnu-free-fonts
```

```bash
make          # Build concatenated notes and all PDFs
make pdf      # Build all PDFs only
make textbook # Build only the textbooks
make clean    # Remove generated files
```

## Contributions

Feel free to create pull requests or reach out via [email](mailto:astameteo@posteo.net) for corrections / requests.