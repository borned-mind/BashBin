#!/bin/bash
if [[ $# < 2 ]];
then
	echo "$0 file.flv output.mp4"
	exit 0;
fi

if [[ $1 != *".flv" ]] || [[ $2 != *".mp4" ]];
then
	echo "$1 is not flv or $2 is not mp4!"
	exit 0;
fi;


ffmpeg -i $1 $2

