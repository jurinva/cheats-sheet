# How to delete a commit in git, local and remote
[Original](https://ncona.com/2011/07/how-to-delete-a-commit-in-git-local-and-remote/)

```bash
git rebase -i HEAD~2
pick d9f1cf5 Changed again
pick 46cd867 Changed with mistake

# Rebase 105fd3d..46cd867 onto 105fd3d
#
# Commands:
#  p, pick = use commit
#  r, reword = use commit, but edit the commit message
#  e, edit = use commit, but stop for amending
#  s, squash = use commit, but meld into previous commit
#  f, fixup = like "squash", but discard this commit's log message
#  x, exec = run command (the rest of the line) using shell
#
# If you remove a line here THAT COMMIT WILL BE LOST.
# However, if you remove everything, the rebase will be aborted.
#
```

Remove second line

```bash
# We can see that the change was applied correctly
git log --pretty=oneline --abbrev-commit
git log --pretty=oneline --abbrev-commit
d9f1cf5 Changed again
105fd3d Changed content
df33c8a First commit
# Delete a remote commit
git push origin +master
```
