#!/bin/sh
rm config.h
make clean
PREFIX=~/.local make uninstall
