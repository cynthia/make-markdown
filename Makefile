SOURCE_DOCS := $(wildcard *.md)
EXPORTED_DOCS=$(SOURCE_DOCS:.md=.html)

RM=rm
MARKDOWN=markdown

%.html : %.md
	@$(MARKDOWN) $< | sed '1s;^;<head><meta charset="utf-8"><link rel="stylesheet" type="text/css" href="github-markdown.css"></head><body class="markdown-body">;' > $@

# Targets and dependencies

.PHONY: all clean

all : $(EXPORTED_DOCS)

clean:
	@- $(RM) -f $(EXPORTED_DOCS)
