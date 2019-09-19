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
d9f1cf5 Changed again
105fd3d Changed content
df33c8a First commit
# Delete a remote commit
git push origin +master
```

If we have only First and Second commits

```bash
git reset --hard HEAD^
git log --pretty=oneline --abbrev-commit
git push origin +master
```

# Return deleted commit

```bash
git reflog
git reset --hard ID
```

# View the change history of a file
```bash
gitk --folow [filename]
```

# Remove commit history
[Original](https://stackoverflow.com/questions/11687899/remove-cut-off-gits-revision-commit-history)
If you  want to cut off the old commits.
For example, we have commits:
```
A -- B -- C -- D -- E -- F
```
and want to get something like
```
D -- E -- F
```
Assuming master is at commit F:
```bash
$ git checkout --orphan temp <d-sha1>
$ git commit

 # rebase everything else onto the temp branch
$ git rebase --onto temp <d-sha1> master

 # clean up
$ git checkout master
$ git branch -d temp
```
f you want to completely remove the old loose objects (A, B, & C), first make sure you have exactly what you want. This cannot be undone. Once you have confirmed it's what you want, run:
```bash
$ git reflog expire --expire=now --all
$ git gc --prune=now
```
