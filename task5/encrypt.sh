#!/bin/bash
# Encrypt plaintext.sh using 4 modes of the AES-128 cipher

ciphertypes=("aes-128-ecb" "aes-128-cbc" "aes-128-cfb" "aes-128-ofb")

key=0123456789abcdef
iv=00112233445566778899aabbccddeeff

# Encrypt
for i in {0..3}
do
    set -x
    openssl enc -${ciphertypes[$i]} -e -in plaintext.txt -out cipher$i \
        -K $key \
        -iv $iv
    set +x    
done
