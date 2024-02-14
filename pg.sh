#!/bin/bash

cd ~/pg

QUERY="$*"

source ./settings.txt

DATE_STAMP=$(date +"%G%V%d%H%M%S")
HEADER="🧞 $DATE_STAMP - $MODEL_NAME - \"$QUERY\""

#

function generate() {
	$LLAMA_DIR/main -m "$MODEL_DIR/$MODEL_FILE" \
	-p "$PROMPT" --prompt-cache "cache.bin" --samplers "min_p;temp" \
	--repeat-penalty $REPEAT_PEN --min-p $MIN_P --temp $TEMP --threads $NUM_THREADS \
	-c 0 -e --no-penalize-nl --no-display-prompt --log-disable
}

tput setaf 7;
echo "# $HEADER" | tee generations/$DATE_STAMP.md

echo | tee -a generations/$DATE_STAMP.md
generate | tee -a generations/$DATE_STAMP.md

if [ $USE_GLOW == True ]; then
	glow -p generations/$DATE_STAMP.md
fi

tput setaf sgr0
echo