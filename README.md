# 🧞 PromptGenie - A useful, always available CLI AI assistant.


## Overview

**PromptGenie is a Command Line Interface (CLI) assistant designed to provide quick responses to a wide range of queries.**

PromptGenie utilizes llama.cpp's main binary and a quantized language model to generate responses. The assistant can be invoked with the command pg followed by a prompt, like `pg are pisachios healthy?` or `pg how to show free space in GB?`.

PromptGenie consumes minimal system resources and can drastically reduce the time between thought and response, avoiding the need to move away from the command-line. The current configuration only uses the CPU, but you can easily edit the `pg.sh` file to use your GPU.

PromptGenie will optionally use [glow](https://github.com/charmbracelet/glow) to render markdown. The only downside of this is responses aren't be streamed to the console any more. In practice this isn't really an issue; there's a spinner to watch while you wait, and you can set a timeout value to prevent things getting out of hand.


## Prerequisites

- GNU/Linux - Windows compatibility may come soon.
- The `main` binary from [llama.cpp](https://github.com/ggerganov/llama.cpp).
- A GGML format language model.


## Optional

- Charmbracelet's glow package for markdown rendering at the CLI.
- Find the installation instructions here: https://github.com/charmbracelet/glow

## Installation

1. Clone the repository:

- `git clone https://github.com/morpheus2448/promptgenie.git`

- `cd promptgenie`

2. Run the install.sh script to add an alias to your .bashrc file:

- `cd ~/pg`

- `./install.sh`


## Configuration

- Edit the settings.txt file located in the pg folder within your home directory.
- Update the paths for llama.cpp and your GGML models.
- Decide if you want to use glow and set the variable accordingly.
- Change inference settings as you see fit.


## Test

    `pg are pistachios healthy?`