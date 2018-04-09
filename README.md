# CDWS [Change Directory With Steroids]
![bash_shields](https://img.shields.io/badge/bash-4.4.12(1)--release-blue.svg) ![dialog_shields](https://img.shields.io/badge/dialog-1.3--20160828-green.svg)

Change directory in BASH can be very annoying especially when this operation must be repeated more and more time! With CDWS you can bookmark your favourite directories with a simple command and then you can open the folder that you want using a simple BASH UI interface.
**Compatible with SSH and TMUX.**

## How to use
- Install the script: ```chmod +x install.sh && sudo ./install.sh```
- Add a specific folder to bookmarks: ```cdws -a [/path/to/bookmark]```
- Add current folder to bookmarks: ```cdws -a```
- Remove a specific folter to bookmarks: ```cdws -d [/path/to/remove]```
- Remove current folder from bookmarks: ```cdws -d```
- Show UI folder selection: ```ccc```. ```ccc``` is an alias of ```source /usr/bin/cdws```

## Dependency
Install ```dialog``` for your command; for example:
- Debian/Ubuntu: ```# apt-get install dialog```
- Fedora/CentOS: ```# yum install dialog```
