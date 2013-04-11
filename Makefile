ODT_OPTS = --generate-oowriter-toc \
			  --create-sections \
			  --create-links \
			  --toc-entry-backlinks \
			  --footnote-backlinks \
			  --stylesheet=./.wr-style.odt \
			  --section-numbering \
			  --date \
			  --time \
			  --table-border-thickness=0 \
			  --title="Generic Design Document Template"

PDF_OPTS = --inline-footnotes \
			  --smart-quotes=1 \
			  --repeat-table-rows \
			  --first-page-on-right \
			  --stylesheets="./rst2pdf.css"

HTML_OPTS = --toc-entry-backlinks \
				--footnote-backlinks \
				--section-numbering \
				--leave-comments \
				--rfc-references \
				--rfc-base-url=http://www.faqs.org/rfcs/ \
				--leave-footnote-reference-space \
				--file-insertion-enabled \
				--embed-stylesheet \
				--footnote-references=superscript \
				--compact-lists \
				--table-style=borderless

IN_DOCS = $(wildcard *.rst)

%.pdf: %.rst rst2pdf.css
	rst2pdf $(PDF_OPTS) $< -o $@

%.odt: %.rst .wr-style.odt
	rst2odt $(ODT_OPTS) $< $@

%.html: %.rst
	rst2html $(HTML_OPTS) $< $@

# We don't actually get a ppt out of this rule, we get a pdf, but I've already
# mangled the auto-gen rule for PDFs with rst docs.
%.ppt: %.pin
	pinpoint $< -o $*-presentation.pdf

all: odt pdf html ppt

pdf: $(IN_DOCS:%.rst=%.pdf)


odt: $(IN_DOCS:%.rst=%.odt)


html: $(IN_DOCS:%.rst=%.html)


ppt:  $(IN_DOCS:%.pin=%.ppt)


clean:
	rm -fr *.html *.odt *.pdf
