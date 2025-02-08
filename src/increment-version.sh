#!/bin/bash
version=$(cat version.tex)
new_version=$(echo "$version + 0.1" | bc)
printf "%.1f" $new_version > version.tex
