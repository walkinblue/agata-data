#!/bin/bash

outfile=/root/agatamind/agata-data/command/sft-cmd.txt
search_dir=/root/agatamind/agata-data/source/.

echo "  " >  $outfile echo
for entry in "$search_dir"/*.png
do
  echo "get $entry /Users/mark/Coding/agatamind/agata-data/source/." >> $outfile
done

for entry in "$search_dir"/*.png
do
  echo "put $entry /root/agatamind/agata-data/source/." >> $outfile
done

cd /root/agatamind