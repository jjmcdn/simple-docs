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
			  --title="Wind River Secure Remote Management"

PDF_OPTS = --inline-footnotes \
			  --smart-quotes=1 \
			  --repeat-table-rows \
			  --first-page-on-right

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

%.odt: %.rst
	rst2odt $(ODT_OPTS) $< $@

%.pdf: %.rst
	rst2pdf $(PDF_OPTS) $< -o $@

%.html: %.rst
	rst2html $(HTML_OPTS) $< $@

# We don't actually get a ppt out of this rule, we get a pdf, but I've already
# mangled the auto-gen rule for PDFs with rst docs.
%.ppt: %.pin
	pinpoint $< -o $*-presentation.pdf

all: sample.odt sample.pdf sample.html sample.ppt

clean:
	rm -fr *.html *.odt *.pdf
