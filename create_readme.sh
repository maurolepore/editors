file=README.md

cat README_head.md                                       >  $file
echo                                                     >> $file
echo 'Updated on '$(date)                                >> $file
echo                                                     >> $file
echo '```bash'                                           >> $file
./last_activity_on_assigned_issues.sh | sort | column -t >> $file
echo '```'                                               >> $file

