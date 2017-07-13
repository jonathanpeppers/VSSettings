#!/usr/bin/env bash

VS_DIR=~/Library/VisualStudio/7.0/Policies/
VS_SUFFIX=.mdpolicy.xml
VS_FILE=UserDefault$VS_SUFFIX
VS_PREVIOUS_FILE=$VS_FILE.previous

# Gracefully close VS: http://osxdaily.com/2014/09/05/gracefully-quit-application-command-line/
osascript -e 'quit app "Visual Studio"'

# Copy files
echo cp $VS_DIR$VS_FILE $VS_DIR$VS_PREVIOUS_FILE
echo cp ./$1$VS_SUFFIX $VS_DIR$VS_FILE
cp $VS_DIR$VS_FILE $VS_DIR$VS_PREVIOUS_FILE
cp ./$1$VS_SUFFIX $VS_DIR$VS_FILE

# Reopen VS
sleep 5
open /Applications/Visual\ Studio.app/