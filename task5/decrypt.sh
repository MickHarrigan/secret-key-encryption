#!/bin/bash
# Decrypt the 4 ciphertexts

ciphertypes=("aes-128-ecb" "aes-128-cbc" "aes-128-cfb" "aes-128-ofb")

key=0123456789abcdef
iv=00112233445566778899aabbccddeeff

# Decrypt
for i in {0..3}
do
    set -x
    openssl enc -${ciphertypes[$i]} -d -in corrupted$i -out decrypted$i.txt \
        -K $key \
        -iv $iv
    set +x    
done
