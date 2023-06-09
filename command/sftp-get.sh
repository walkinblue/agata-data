#!/bin/bash

outfile=/root/agatamind/agata-data/command/sft-put.txt
search_dir=/root/agatamind/agata-data/source/.

echo "  " >  $outfile echo
for entry in "$search_dir"/*.png
do
  echo "get $entry /Users/mark/Coding/agatamind/agata-data/source/." >> $outfile
done

