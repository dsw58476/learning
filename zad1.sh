#!bin/bash
git commit
git commit

git checkout -b bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git merge bugFix

git checkout -b bugFix
git commit
git checkout main
git commit
git checkout bugFix
git rebase main


git checkout C4

git checkout C3

git branch -f main C6
git branch -f bugFix HEAD~3
git checkout C1

git reset HEAD^
git checkout pushed
git revert HEAD


git cherry-pick C3 C4 C7

git rebase -i HEAD~4


git checkout main
git cherry-pick C4

git rebase -i HEAD^^
git commit --amend
git rebase -i HEAD^^
git branch -f main C3''

git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

git tag v0 C1
git tag v1 C2
git checkout C2

git commit


git rebase main bugFix
git rebase bugFix side
git rebase side another
git branch -m main C7'

git branch bugWork main~^2~

git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2


git clone

git commit
git checkout o/main
git commit

git fetch

git pull

git clone 
git fakeTeamwork main 2
git commit
git pull

git clone
git commit
git commit
git push

git clone
git fakeTeamwork
git commit
git pull --rebase
git push


git fetch
git rebase o/master side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 master
git push

git checkout master
git pull
git merge side1
git merge side2
git merge side3
git push

git checkout -b side o/master
git commit
git pull --rebase
git push

git push origin main
git push origin foo

git push origin main~1:foo
git push origin foo:main

git fetch origin main~1:foo;
git fetch origin foo:main;
git checkout foo;
git merge main;

git push origin :foo;
git fetch origin :bar;

git pull origin bar:foo;
git pull origin main:side;
