#!/usr/bin/env bash

file=README.md

cat README_head.md                                       >  $file
echo                                                     >> $file
echo 'Updated on '$(date)                                >> $file
echo                                                     >> $file
echo '```bash'                                           >> $file
echo '# Standard'                                        >> $file
cat out_standard.txt | ./pretty.sh                       >> $file
echo                                                     >> $file
echo '# Stats'                                           >> $file
cat out_stats.txt | ./pretty.sh                          >> $file
echo '```'                                               >> $file

