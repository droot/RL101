# Generate SVG diagrams from Mermaid source files

# Source files
MERMAID_SOURCES := $(wildcard *.mmd)
# Target SVG files
SVG_TARGETS := $(MERMAID_SOURCES:.mmd=.svg)

.PHONY: all clean

all: $(SVG_TARGETS)

# Note: Using zsh -ic to ensure user's 'mmdc' alias is picked up from .zshrc
%.svg: %.mmd
	zsh -ic "mmdc -i $< -o $@"

clean:
	rm -f $(SVG_TARGETS)
