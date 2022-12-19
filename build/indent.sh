#!/bin/bash
#
# Automatically format the LaTeX file.


# Setup variables
CONFIG_FILE="latexindent-config.yaml"
PROJECT_NAME_EXT="swim.tex"

SCRIPT_LOCATION=$(readlink -e "$0")
SCRIPT_LOCATION=${SCRIPT_LOCATION%/*}
PROJECT_DIR="$SCRIPT_LOCATION/../"

latexindent --overwriteIfDifferent --modifylinebreaks --local="$SCRIPT_LOCATION/$CONFIG_FILE" "$PROJECT_DIR/$PROJECT_NAME_EXT"
