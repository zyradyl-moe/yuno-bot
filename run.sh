#!/bin/bash
git clone https://github.com/zyradyl-moe/yuno-bot.git
cd yuno-bot
poetry install
poetry run python yuno_bot/main.py