#!/bin/bash
sleep 10
apt update
apt install -y ruby-full ruby-bundler build-essential
ruby -v
bundler -v
