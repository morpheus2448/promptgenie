#!/bin/bash
#
cd ~/pg
#
QUERY="$*"
source ./settings.txt
#
echo -n "🧞"
$LLAMA_DIR/main -m "$MODEL_DIR/$MODEL_FILE" -p "$PROMPT" --prompt-cache "cache.bin" --samplers "min_p;temp" --min-p 0.9 --temp 0.01 --threads 4 -e --no-display-prompt --log-disable && echo