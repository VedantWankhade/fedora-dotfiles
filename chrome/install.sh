#!/bin/bash

echo "Downloading chrome stable rpm"

https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm --output chrome.rpm

echo "Installing chrome'

sudo dnf install ./chrome.rpm
