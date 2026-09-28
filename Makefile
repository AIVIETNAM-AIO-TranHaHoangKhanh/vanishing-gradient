PROJECT_ROOT := $(CURDIR)
MAIN_DIR := vanishing-gradient
MAIN_FILE := vanishing_gradient_outline.tex
OUTPUT_DIR := $(PROJECT_ROOT)/output/pdf

.PHONY: pdf clean

pdf:
	mkdir -p "$(OUTPUT_DIR)"
	latexmk -cd -xelatex -interaction=nonstopmode -halt-on-error -file-line-error \
		-outdir="$(OUTPUT_DIR)" "$(MAIN_DIR)/$(MAIN_FILE)"

clean:
	latexmk -C -cd -outdir="$(OUTPUT_DIR)" "$(MAIN_DIR)/$(MAIN_FILE)"
