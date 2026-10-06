# Build the generated documents of every subject.
#
#   make          concat + pdf
#   make concat   join each subject's Gyakorlat sheets into one Markdown file
#                 per sheet folder, in the subject directory, e.g.
#                   Analízis 1/Analízis 1 Gyakorlat Feladatlapok.md
#                   Analízis 1/Analízis 1 Gyakorlat Megoldások.md
#   make pdf      build a reMarkable-sized PDF next to every Markdown file in
#                 the root of a subject directory (X.md -> X.pdf)
#   make clean    remove the concatenated Markdown files and the PDFs
#
# The page layout lives in header.tex. Override PANDOC or PDF_ENGINE to use
# other binaries, e.g. `make PDF_ENGINE=tectonic`.

PANDOC     ?= pandoc
PDF_ENGINE ?= xelatex
HEADER     := header.tex

# No -V lang: this TeX install has no Hungarian hyphenation patterns.
PANDOC_FLAGS = \
  --pdf-engine=$(PDF_ENGINE) \
  --toc --toc-depth=2 -V toc-title=Tartalomjegyzék \
  -V documentclass=extarticle -V fontsize=11pt \
  -V mainfont=FreeSerif -V sansfont=FreeSans -V monofont=FreeMono \
  -V colorlinks=false \
  -H $(HEADER)

# Every path in this repository contains spaces, which make cannot keep apart
# in a word list. Paths are carried around with each space encoded as "|":
# `dec` turns one back into the real name for the shell, `esc` into a make
# target name with escaped spaces.
EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
dec = $(subst |,$(SPACE),$1)
esc = $(subst |,\$(SPACE),$1)
find_enc = $(shell find . $1 -printf '%P\n' | LC_ALL=C sort -V | tr ' ' '|')

# Sheet folders: <subject>/Gyakorlat/<folder> holding at least one .md file.
GROUPS := $(sort $(patsubst %/,%,$(dir \
  $(call find_enc,-mindepth 4 -maxdepth 4 -path './*/Gyakorlat/*/*.md'))))

# <subject>/Gyakorlat/<folder> -> <subject>/<subject> Gyakorlat <folder>.md
subject_of = $(firstword $(subst /, ,$1))
concat_of  = $(call subject_of,$1)/$(call subject_of,$1)|Gyakorlat|$(notdir $1).md

CONCAT := $(foreach g,$(GROUPS),$(call concat_of,$g))
SOURCES := $(sort $(CONCAT) \
  $(call find_enc,-mindepth 2 -maxdepth 2 -name '*.md' -not -path './.*'))
PDFS := $(SOURCES:.md=.pdf)

.PHONY: all concat pdf clean
all: concat pdf
concat: $(call esc,$(CONCAT))
pdf: $(call esc,$(PDFS))

# $1: sheet folder. The sheets are joined in version order (2 before 10),
# separated by a blank line.
define concat_rule
$(call esc,$(call concat_of,$1)): $(call esc,$(call find_enc,-mindepth 4 -maxdepth 4 -path './$(call dec,$1)/*.md'))
	@echo "==> $(call dec,$(call concat_of,$1))"
	@{ printf '<!-- Generált fájl, ne szerkeszd! Forrás: %s/, újragenerálás: make concat -->\n\n' "$(call dec,$1)"; \
	   find "$(call dec,$1)" -maxdepth 1 -name '*.md' -print0 | LC_ALL=C sort -zV \
	   | xargs -0 awk 'FNR == 1 && NR != 1 { print "" } { print }'; \
	 } > "$(call dec,$(call concat_of,$1))"
endef

# $1: Markdown source. Relative image paths resolve against the source's
# own directory.
define pdf_rule
$(call esc,$(1:.md=.pdf)): $(call esc,$1) $(HEADER)
	@echo "==> $(call dec,$(1:.md=.pdf))"
	@$$(PANDOC) "$(call dec,$1)" -o "$(call dec,$(1:.md=.pdf))" \
	  --resource-path="$(call dec,$(dir $1))" \
	  -V title-meta="$(call dec,$(basename $(notdir $1)))" \
	  $$(PANDOC_FLAGS)
endef

$(foreach g,$(GROUPS),$(eval $(call concat_rule,$g)))
$(foreach s,$(SOURCES),$(eval $(call pdf_rule,$s)))

clean:
	@$(foreach f,$(CONCAT) $(PDFS),rm -f "$(call dec,$f)";)
