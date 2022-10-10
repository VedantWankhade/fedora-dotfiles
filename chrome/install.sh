#!/bin/bash

echo "Downloading chrome stable rpm"

curl https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm --output ~/Downloads/chrome.rpm

echo "Installing chrome'

sudo dnf install ~/Downloads/chrome.rpm
