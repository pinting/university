# Requirements (Arch Linux)

Install the required build tools, Pandoc, XeLaTeX, TeX packages, and fonts:

```bash
sudo pacman -S --needed \
  make \
  pandoc-cli \
  texlive-xetex \
  texlive-latexrecommended \
  texlive-latexextra \
  texlive-pictures \
  texlive-fontsrecommended \
  gnu-free-fonts
```

## Build

```bash
make          # Build concatenated notes and all PDFs
make pdf      # Build all PDFs only
make tankonyv # Build only the textbooks
make clean    # Remove generated files
```
