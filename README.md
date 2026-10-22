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
make examples # Build worked examples (Példafeladatok)
make practice # Build practice problems (Gyakorlófeladatok)
make practice-solutions # Build practice problem solutions (Gyakorlófeladatok Megoldások)
make supplementary # Build all example and practice collections
make html     # Build interactive HTML presentation & simulations (Analízis 1)
make clean    # Remove generated files
```

## Interactive Calculus Presentation & Simulations

The calculus worked examples (`Analízis 1 Példafeladatok`) can be viewed as an interactive HTML5 presentation application:

- **Presentation Mode:** Slide deck view for lectures and personal study with keyboard shortcuts (`←` / `→` slide navigation, `F` fullscreen, `T` toggle theory recap, `S` toggle full solution).
- **Reader Mode:** Unified continuous reading view with collapsible solutions and theoretical notes.
- **2D & 3D Interactive Simulations:**
  1. *$\varepsilon$-$N$ Convergence Explorer:* Real-time threshold boundary $N(\varepsilon)$ visualizer on 2D canvas with customizable sequence models ($\frac{1}{n}$, $\frac{(-1)^n}{n}$, $\frac{3n+2}{2n-1}$, $\frac{\sin n}{n}$).
  2. *Cobweb Iteration Diagram:* Fixed point attractor/repeller tracer for recursive sequences ($x_{n+1} = \sqrt{2 + x_n}$, logistic map, Newton iteration).
  3. *Riemann Rearrangement Demonstrator:* Live term-by-term partial sum accumulator demonstrating the Riemann rearrangement theorem for conditionally convergent alternating harmonic series to any user-specified target sum $M \in \mathbb{R}$.
  4. *Bolzano Bisection Root Finder:* Visual interval halving $[a_k, b_k]$ tracking intermediate value theorem guarantees.
  5. *3D Helix Sequence Convergence (Three.js WebGL):* 3D spatial orbit visualization with interactive $\varepsilon$-tube and bounding sphere.
- **Pseudocode Library:** Formatted and copyable algorithmic implementations for numerical root finding, square root approximations, and sequence convergence threshold searches.

Open `Analízis 1/Analízis 1 Példafeladatok.html` or `Analízis 1/index.html` directly in any modern web browser.

## Contributions

Feel free to create pull requests or reach out via [email](mailto:astameteo@posteo.net) for corrections / requests.