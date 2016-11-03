#!/bin/sh

## This tool will remove the Apple Push notifications for Mac App Store Updates

## Mac App Store Push Agent
/usr/local/outset/custom/NCutil.py -a none com.apple.maspushagent

## Mac App Store
/usr/local/outset/custom/NCutil.py -a none com.apple.appstore

## Store Asset Daemon
/usr/local/outset/custom/NCutil.py -a none _SYSTEM_CENTER_:com.apple.storeassetd