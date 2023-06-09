#!/bin/bash
cd /root/agatamind/agata-data/source

search_dir=.
for entry in "$search_dir"/*.png
do
  echo "$entry"
done

cd /root/agatamind