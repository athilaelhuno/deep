#!/bin/bash

nohup python process.py &
sleep 5
nohup sh checker.sh process.py &