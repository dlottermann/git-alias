#!/bin/bash

git config --global core.editor "code -w"

git config --global user.name "dlottermann"
git config --global user.email "diegolottermann@gmail.com"
git config --global init.defaultBranch master

#git config --global -e

alias='[alias]'

go='go=checkout'
find="find=!git branch -r | grep"
st='st=status -sb'
lg="lg=log --pretty='%C(yellow)%h%Creset %Cblue%an%Creset %Cgreen%cr%Creset%Cred%d%Creset %s'"
rr='rr=!git fetch origin && git reset --hard @{u}'

echo $alias >>~/.gitconfig

echo $go >>~/.gitconfig
echo $find >>~/.gitconfig
echo $st >>~/.gitconfig
echo $lg >>~/.gitconfig
echo $rr >>~/.gitconfig
