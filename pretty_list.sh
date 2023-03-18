#!/usr/bin/env bash
file=$1
grep "#" -v $file | sort -f | tr '\n' ' ' | fmt
