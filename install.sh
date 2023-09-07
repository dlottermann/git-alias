#!/bin/bash

git config --global core.editor "code -w"

git config --global user.name "dlottermann"
git config --global user.email "diegolottermann@gmail.com"
git config --global init.defaultBranch main

#git config --global -e

alias='[alias]'

go='go=checkout'
find="find=!git branch -r | grep"
st='st=status -sb'
lg="lg=log --pretty='%C(yellow)%h%Creset %Cblue%an%Creset %Cgreen%cr%Creset%Cred%d%Creset %s'"
rr='rr=!git fetch origin && git reset --hard @{u}'
pub='pub=!git push -u origin && git rev-parse --abbrev-ref HEAD'
clean='clean=!git branch -d'
kill='kill=!git push origin --delete'
flush='flush="!f() { git add -A && git commit -m \"$@\" && git push; }; f"'

echo $alias >>~/.gitconfig

echo $go >>~/.gitconfig
echo $find >>~/.gitconfig
echo $st >>~/.gitconfig
echo $lg >>~/.gitconfig
echo $rr >>~/.gitconfig
echo $pub >>~/.gitconfig
echo $clean >>~/.gitconfig
echo $kill >>~/.gitconfig
echo $flush >>~/.gitconfig
