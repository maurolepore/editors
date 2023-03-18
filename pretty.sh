#!/usr/bin/env bash
file=$1
cat $file | sort | sed s/'  '/' '/g | sed s/'CLOSED'/'FREE'/g | sed s/'OPEN'/'BUSY'/g | cut -d' ' -f1,3-7 | column -t
