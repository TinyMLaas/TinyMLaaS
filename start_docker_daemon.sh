#!/bin/sh

dockerd > /var/log/dockerd.log 2>&1 &
