#!/usr/bin/env bash
file=$1
grep "#" -v $file | sort | tr '\n' ' ' | fmt
