# Build the university course materials.
#
#   make          concat + render
#   make concat   join each subject's Gyakorlat sheets into one Markdown file
#                 per sheet folder, overwriting previous files
#   make render   render Markdown files as PDFs with matching names (overwriting
#                 previous files). To render a specific file:
#                   make render FILE="path/to/document.md"

PANDOC     ?= pandoc
PDF_ENGINE ?= xelatex
HEADER     := header.tex
FILTER     := extension.lua

# No -V lang: this TeX install has no Hungarian hyphenation patterns.
PANDOC_FLAGS = \
  --pdf-engine=$(PDF_ENGINE) \
  --toc --toc-depth=2 -V toc-title=Tartalomjegyzék \
  -V documentclass=extarticle -V fontsize=11pt \
  -V mainfont=FreeSerif -V sansfont=FreeSans -V monofont=FreeMono \
  -V colorlinks=false \
  -H $(HEADER) --lua-filter=$(FILTER)

.PHONY: all concat render

all: concat render

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
	@src="$(FILE)"; \
	dest="$${src%.md}.pdf"; \
	echo "==> $$dest"; \
	$(PANDOC) "$$src" -o "$$dest" \
	  --resource-path="$$(dirname "$$src")" \
	  -V title-meta="$$(basename "$$src" .md)" \
	  $(PANDOC_FLAGS)
else
	@find . -mindepth 2 -maxdepth 2 -name '*.md' -not -path './.*' | LC_ALL=C sort -V | while IFS= read -r src; do \
	  src="$${src#./}"; \
	  dest="$${src%.md}.pdf"; \
	  echo "==> $$dest"; \
	  $(PANDOC) "$$src" -o "$$dest" \
	    --resource-path="$$(dirname "$$src")" \
	    -V title-meta="$$(basename "$$src" .md)" \
	    $(PANDOC_FLAGS); \
	done
endif

%.pdf: %.md $(HEADER) $(FILTER)
	@echo "==> $@"
	@$(PANDOC) "$<" -o "$@" \
	  --resource-path="$$(dirname "$<")" \
	  -V title-meta="$$(basename "$<" .md)" \
	  $(PANDOC_FLAGS)
