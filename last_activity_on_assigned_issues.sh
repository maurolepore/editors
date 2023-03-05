#!/usr/bin/env bash

for i in $(cat editors)
do
  gh issue list --limit 1 -S "assignee:$i state:open state:closed sort:updated" \
    --repo ropensci/software-review \
    --json state,updatedAt,number,assignees --template \
    '{{range .}}{{tablerow .state .updatedAt (printf "#%v" .number) (pluck "login" .assignees | join ",") (timeago .updatedAt)}}{{end}}' | cat  
done
