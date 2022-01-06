git remote add upstream git://git.suckless.org/dmenu
git pull upstream master &&
git checkout master &&
git rebase --rebase-merges upstream/master