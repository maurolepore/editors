#!/usr/bin/env bash

file=README.md

cat README_head.md                    >  $file
echo                                  >> $file
echo 'Updated on '$(date)             >> $file
echo                                  >> $file
echo '```bash'                        >> $file
echo '# Standard'                     >> $file
./pretty_list.sh editors_standard.txt >> $file
echo                                  >> $file
./pretty_table.sh out_standard.txt    >> $file
echo                                  >> $file
echo                                  >> $file
echo '# Stats'                        >> $file
./pretty_list.sh editors_stats.txt    >> $file
echo                                  >> $file
./pretty_table.sh out_stats.txt       >> $file
echo '```'                            >> $file

