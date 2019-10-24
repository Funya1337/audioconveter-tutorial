#!/bin/bash
name=$1
d=$(date +%Y%m%d%H%M%S)
file='result'$d'.txt'
deepspeech --model deepspeech-0.5.1-models/output_graph.pbmm --alphabet deepspeech-0.5.1-models/alphabet.txt --lm deepspeech-0.5.1-models/lm.binary --trie deepspeech-0.5.1-models/trie --audio $name >> $file
