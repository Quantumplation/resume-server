#!/bin/bash
mkdir /out
cd /out

../rebuild.sh
http-server&

while true
do
  ../rebuild.sh
  sleep 60
done
