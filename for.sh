#!/bin/bash
for a in `ls .`;
do
	size=`du -h $a`
	echo "File: $a, Size: $size"
done;
