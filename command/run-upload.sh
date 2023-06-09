#!/bin/bash
read -s -p "Enter Github token: " github_token

cd /root/agatamind/agata-data
git add .
git commit -m "server commit"
git branch -M main
git push -u https://walkinblue:${github_token}@github.com/walkinblue/agata-data.git main

cd /root/agatamind