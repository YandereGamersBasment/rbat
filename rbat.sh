#!/bin/bash

if [ "$1" == "-help" ] || [ "$1" == "-?" ]; then
  echo "run:"
  echo "rbat MyBatchFile.bat"
  exit 0
fi


if [ $# -eq 0 ]; then
    echo "Please provide a batch file to run."
    exit 1
fi

clear
wine cmd /c $1
