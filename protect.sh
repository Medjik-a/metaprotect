#/usr/bin/bash
#pip install pyarmor &&
git pull && rm -rf protected && pyarmor gen --recursive . -O protected
#&&pip unistall -y pyarmor

# Checking git pull