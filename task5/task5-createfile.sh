#!/bin/bash
# Create plaintext that is at least 1000 bytes long

for n in {1..100}
do
    echo "Bytes welcome $n" >> plaintext.txt
done
