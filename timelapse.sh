#!/bin/bash
ffmpeg -framerate 30 -pattern_type glob -i "/var/motion/capture/$1/*-snap.jpg"  -s:v 1024x768 -c:v libx264 -crf 17 -threads 2 -pix_fmt yuv420p -y "/var/motion/timelapse/$1.mp4"
