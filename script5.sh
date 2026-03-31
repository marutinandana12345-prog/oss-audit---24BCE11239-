#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "----------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT

echo "I use $TOOL daily, and it reminds me that open source is about $FREEDOM." >> $OUTPUT
echo "Inspired by VLC and the FOSS community, I will build $BUILD and share it freely." >> $OUTPUT
echo "Knowledge grows when it is shared openly with the world." >> $OUTPUT

# Example alias concept (documentation purpose)
# alias vlcmanifesto='./script5.sh'

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
