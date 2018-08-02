#!/bin/bash

nohup python process.py &
nohup sh checker.sh process.py &