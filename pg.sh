#!/bin/bash
#
cd ~/pg
#
QUERY="$*"
source ./settings.txt
#
echo -n "🧞 -"
tput bold; \
$LLAMA_DIR/main -m "$MODEL_DIR/$MODEL_FILE" \
-p "$PROMPT" --prompt-cache "cache.bin" --samplers "min_p;temp" \
--min-p $MIN_P --temp $TEMP --threads $NUM_THREADS \
-e --no-display-prompt --log-disable ; tput sgr0 ; echo