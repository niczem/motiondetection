#!/bin/bash
for filename in ./examples/*.mp4; do
	echo "RUNNING FOR $filename"
	time python2 main.py -v "$filename" -u ./output -i
done
