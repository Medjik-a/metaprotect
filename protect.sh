#!/usr/bin/bash
git clone https://github.com/Medjik-a/metaprotect &&
pip install pyarmor &&
pyarmor gen --recursive . -O protected &&
pip unistall -y pyarmor pyarmor.cli.core && python protected/main.py

# Checking git pull