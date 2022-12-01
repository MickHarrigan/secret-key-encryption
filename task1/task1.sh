#!/bin/zsh

tr 'abcdefghijklmnopqrstuvwxyz' $(cat translate.txt) < plain.txt > cipher.txt
