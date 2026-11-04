# Build the university course materials.
#
#   make          concat + render (all documents, all sizes: a4, a5, a6)
#   make concat   join each subject's Gyakorlat sheets into one Markdown file
#                 per sheet folder, overwriting previous files
#   make render   render Markdown files as PDFs into out/a4, out/a5, out/a6
#                 (overwriting previous files). To render a specific file:
#                   make render FILE="path/to/document.md"
#                 To render a specific size:
#                   make render SIZES=a4
#   make clean    remove the out directory

PANDOC     ?= pandoc
PDF_ENGINE ?= xelatex
HEADER     := header.tex
FILTER     := extension.lua
SIZES      ?= a4 a5 a6

# Proportional margins per paper size:
# Side margins ≈ 7.5% of width, top ≈ 5.3%, bottom ≈ 6.1% of height.
GEOMETRY_a4 ?= a4paper,top=16mm,bottom=18mm,left=16mm,right=16mm,footskip=8mm
GEOMETRY_a5 ?= a5paper,top=11mm,bottom=13mm,left=11mm,right=11mm,footskip=6mm
GEOMETRY_a6 ?= a6paper,top=8mm,bottom=9mm,left=8mm,right=8mm,footskip=4.5mm

# No -V lang: this TeX install has no Hungarian hyphenation patterns.
PANDOC_FLAGS = \
  --pdf-engine=$(PDF_ENGINE) \
  --toc --toc-depth=2 -V toc-title=Tartalomjegyzék \
  -V documentclass=extarticle -V fontsize=11pt \
  -V mainfont=FreeSerif -V sansfont=FreeSans -V monofont=FreeMono \
  -V colorlinks=false \
  -H $(HEADER) --lua-filter=$(FILTER)

.PHONY: all concat render clean a4 a5 a6

all: concat render

a4:
	@$(MAKE) render SIZES=a4

a5:
	@$(MAKE) render SIZES=a5

a6:
	@$(MAKE) render SIZES=a6

concat:
	@find . -mindepth 3 -maxdepth 3 -path './*/Gyakorlat/*' -type d | LC_ALL=C sort -V | while IFS= read -r dir; do \
	  dir="$${dir#./}"; \
	  subj="$${dir%%/*}"; \
	  folder="$${dir##*/}"; \
	  target="$$subj/$$subj Gyakorlat $$folder.md"; \
	  echo "==> $$target"; \
	  { printf '<!-- Generated file, do not edit! Source: %s/, regenerate with: make concat -->\n\n' "$$dir"; \
	    find "$$dir" -maxdepth 1 -name '*.md' -print0 | LC_ALL=C sort -zV \
	    | xargs -0 awk 'FNR == 1 && NR != 1 { print "" } { print }'; \
	  } > "$$target"; \
	done

render:
ifdef FILE
	@for size in $(SIZES); do \
	  case "$$size" in \
	    a4) geom="$(GEOMETRY_a4)" ;; \
	    a5) geom="$(GEOMETRY_a5)" ;; \
	    a6) geom="$(GEOMETRY_a6)" ;; \
	    *)  geom="$${size}paper" ;; \
	  esac; \
	  src="$(FILE)"; \
	  src="$${src#./}"; \
	  dest="out/$$size/$${src%.md}.pdf"; \
	  echo "==> $$dest"; \
	  mkdir -p "$$(dirname "$$dest")"; \
	  $(PANDOC) "$$src" -o "$$dest" \
	    --resource-path="$$(dirname "$$src")" \
	    -V title-meta="$$(basename "$$src" .md)" \
	    -V geometry:"$$geom" \
	    $(PANDOC_FLAGS); \
	done
else
	@for size in $(SIZES); do \
	  case "$$size" in \
	    a4) geom="$(GEOMETRY_a4)" ;; \
	    a5) geom="$(GEOMETRY_a5)" ;; \
	    a6) geom="$(GEOMETRY_a6)" ;; \
	    *)  geom="$${size}paper" ;; \
	  esac; \
	  find . -name '*.md' -not -path './.*' -not -path './out/*' -not -name 'README.md' -not -path '*/Gyakorlat/*' | LC_ALL=C sort -V | while IFS= read -r src; do \
	    src="$${src#./}"; \
	    dest="out/$$size/$${src%.md}.pdf"; \
	    echo "==> $$dest"; \
	    mkdir -p "$$(dirname "$$dest")"; \
	    $(PANDOC) "$$src" -o "$$dest" \
	      --resource-path="$$(dirname "$$src")" \
	      -V title-meta="$$(basename "$$src" .md)" \
	      -V geometry:"$$geom" \
	      $(PANDOC_FLAGS); \
	  done; \
	done
endif

clean:
	rm -rf out
