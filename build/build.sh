#!/bin/bash
#
# Compile to PDF.

# Setup variables
PROJECT_NAME="swim"
PROJECT_NAME_EXT="swim.tex"

SCRIPT_LOCATION=$(readlink -e "$0")
SCRIPT_LOCATION=${SCRIPT_LOCATION%/*}
PROJECT_DIR="$SCRIPT_LOCATION/../"


compile() {
	xelatex -synctex=1 -interaction=nonstopmode "$PROJECT_NAME_EXT"
}

bibliography() {
	biber "$PROJECT_NAME"
}

# Temporarily enter the root project directory
pushd "$PROJECT_DIR" 2>/dev/null > /dev/null

# Compile!
compile && bibliography && compile && compile

# Restore working directory
popd 2>/dev/null > /dev/null
