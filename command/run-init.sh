#!/bin/bash

mkdir /root/commons
mkdir /root/services
mkdir /root/agatamind
mkdir /root/agatamind/agata-common
mkdir /root/agatamind/agata-common-service
mkdir /root/agatamind/agata-shop
mkdir /root/agatamind/agata-shop-service
mkdir /root/agatamind/agata-workshop
mkdir /root/agatamind/agata-workshop-service
mkdir /root/agatamind/agata-wuxing
mkdir /root/agatamind/agata-data
mkdir /root/agatamind/agata-data/data
mkdir /root/agatamind/agata-data/source

cd /root/agatamind/agata-common
git init
cd /root/agatamind/agata-common-service
git init
cd /root/agatamind/agata-shop
git init
cd /root/agatamind/agata-shop-service
git init
cd /root/agatamind/agata-workshop
git init
cd /root/agatamind/agata-workshop-service
git init
cd /root/agatamind/agata-wuxing
git init

cd /root/agatamind