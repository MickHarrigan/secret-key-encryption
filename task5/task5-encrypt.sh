#!/bin/bash
# Encrypt plaintext.sh using 4 modes of the AES-128 cipher,
# corrupt the 55th byte, then decrypt

CIPHERTYPES=("aes-128-ecb" "aes-128-cbc" "aes-128-cfb" "aes-128-ofb")
key=0123456789abcdef

for i in {0..3}
do
    openssl enc -${CIPHERTYPES[$i]} -e -in plaintext.txt -out cipher$i.txt \
        -K $key
        -iv 

done

