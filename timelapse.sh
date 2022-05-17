#!/bin/bash
ffmpeg -framerate 30 -pattern_type glob -i "/var/motion/capture/$1/*-snap.jpg"  -s:v 640x480 -c:v libx264 -threads 1 -pix_fmt yuv420p -y "/var/motion/timelapse/$1.mp4"
