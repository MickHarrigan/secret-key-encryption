#!/bin/zsh

CIPHERTYPES=("aes-128-ecb" "aes-128-cbc" "aes-128-cfb" "aes-128-ofb")

key=0123456789abcdef

set -x
#Get the Header and Body ECB
for i in {1..4}
do

openssl enc -${CIPHERTYPES[$i-1]} -e -in p1.bmp -out c$i.bmp

head -c 54 p1.bmp > header
tail -c +55 c$i.bmp > body
cat header body > new$i.bmp

done