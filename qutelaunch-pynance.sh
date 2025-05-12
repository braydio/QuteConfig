#!/bin/bash

# List of URLs to open
tabs=(
  "https://chatgpt.com/g/g-67f457deddb08191abab431d47eacfd2-pynance-dashroad-helper-man/c/681f27d1-4e84-8009-b660-07977b8ade00"
  "http://localhost:3533"
  "https://reddit.com/r/neovim"
  "https://huggingface.co/models"
)

# Launch qutebrowser with each URL as a tab
qutebrowser "${tabs[@]}" &
