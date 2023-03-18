#!/usr/bin/env bash

file=${1:-editors}
for i in $(cat $file)
do
  gh issue list --limit 1 -S "assignee:$i state:open state:closed sort:updated" \
    --repo ropensci/software-review \
    --json state,updatedAt,number,assignees --template \
    '{{range .}}{{tablerow .state .updatedAt (printf "#%v" .number) (pluck "login" .assignees | join ",") (timeago .updatedAt)}}{{end}}' | cat
done
