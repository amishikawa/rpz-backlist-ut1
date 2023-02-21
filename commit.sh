#!/bin/bash
commits=(`git log --oneline | head -n 1`)
git add .
git commit --fixup $commits
GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash HEAD~2
git push -f
