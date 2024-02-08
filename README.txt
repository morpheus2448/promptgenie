# 🧞 PromptGenie - A useful, always available CLI assistant

## Overview

PromptGenie is a Command Line Interface (CLI) assistant designed to provide quick responses to a wide range of queries. It utilizes llama.cpp and a quantized language model to generate responses. The assistant can be invoked with the command pg followed by a prompt, like pg are pisachios healthy? or pg how to show free space in GB?. It consumes minimal system resources and can handle various types of queries. The current configuration only uses the CPU, but you can easily edit the pg.sh file and use some GPU layers!

## Prerequisites

- GNU/Linux - Windows compatibility may come soon.
- The `main` binary from (llama.cpp)[https://github.com/ggerganov/llama.cpp].
- GGML format language model (tested with (rosa_v2_7b.Q4_0.gguf)[https://huggingface.co/TheBloke/Rosa_v2_7B-GGUF/resolve/main/rosa_v2_7b.Q4_0.gguf])).

## Installation

1. Clone the repository:

    `git clone https://github.com/morpheus2448/promptgenie.git`
    `cd promptgenie`


2. Copy the “pg” folder into your home directory:

    `cp -r pg ~`


3. Run the install.sh script to add an alias to your .bashrc file:

    `cd ~/pg`
    `./install.sh`


4. Restart your terminal or source your .bashrc file:

    `source ~/.bashrc`
    


## Configuration

Edit the settings.txt file located in the pg folder within your home directory. Update the paths for llama.cpp and the GGML model, along with the name and location of your GGML model.

## Test

    `pg are pistachios healthy?`