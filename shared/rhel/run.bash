#!/bin/bash
if [ ! -f "/etc/profile.d/rvm.sh" ]; then
  echo "+ RVM: not installed"
else
  echo "+ RVM: installed"
fi

if [ ! -f "/etc/profile.d/golang.sh" ]; then
  echo "+ Golang: not installed"
else
  echo "+ Golang: installed"
fi

if [ ! -f "/build/build" ]; then
  echo "Build script not found."
  exit
fi

/build/build
