file=README.md

cat README_head.md                                       >  $file
echo                                                     >> $file
echo 'Updated on '$(date)                                >> $file
echo                                                     >> $file
echo '```bash'                                           >> $file
echo # Standard editors                                  >> $file
cat out_standard.txt | sort | column -t                  >> $file
echo '```'                                               >> $file

