#bin/bash
#pip install pyarmor &&
git pull ; rm -rf protected && pyarmor gen --recursive main.py -O protected
#&& pip unistall -y pyarmor