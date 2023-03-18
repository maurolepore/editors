#!/usr/bin/env bash
file=$1
cat $file | sort -f | sed s/'  '/' '/g | sed s/'CLOSED'/'FREE CLOSED'/g | sed s/'OPEN'/'BUSY OPEN'/g | cut -d' ' -f1-2,4-7 | column -t
