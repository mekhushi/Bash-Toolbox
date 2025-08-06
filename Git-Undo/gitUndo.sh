#!/bin/bash

echo "Last Git action:"
git reflog | head -n1

read -p "Undo this action? [y/N]: " confirm
if [[ $confirm == [yY] ]]; then
  git reset --hard HEAD@{1}
  echo "Reverted to previous Git state"
else
  echo "Cancelled"
fi
