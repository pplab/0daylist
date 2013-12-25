#!/bin/sh
SCRIPT=$(dirname $(readlink -f $0))
_POSTS=$SCRIPT/../_posts
FILENAME=$(date +%F)"-list.md"
$SCRIPT/get0daylist.py|cut -d'/' -f4 |awk '{print $0;printf "\n";}' > $_POSTS/$FILENAME

cd $SCRIPT/..
git add $_POSTS/$FILENAME
git commit -m "auto post"
git push origin gh-pages
