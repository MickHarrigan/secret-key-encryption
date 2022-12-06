#!/bin/zsh
set -x 
tr 'abcdefghijklmnopqrstuvwxyz' $(cat translate.txt) < plain.txt > cipher.txt
