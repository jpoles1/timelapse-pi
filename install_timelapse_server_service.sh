#!/bin/bash
sudo cp timelapse_server.service /etc/systemd/system/timelapse_server.service &&\
sudo systemctl enable timelapse_server
