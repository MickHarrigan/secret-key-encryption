#!/bin/zsh

cipher=("aes-128-cbc" "bf-cbc" "aes-128-cfb")

for i in {1..3}
do

openssl enc -${cipher[$i]} -e -in plain.txt -out cipher$i.bin \
	-K 00112233445566778899aabbccddeeff \
	-iv 0102030405060708

done
