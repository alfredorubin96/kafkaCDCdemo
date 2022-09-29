#!/bin/bash

n=0
until [ "$n" -ge 3 ]
do
   mongoimport --host mongo1 --db test --drop --collection movies --type json --file /script/movies.json --jsonArray && break  # substitute your command here
   n=$((n+1))
   sleep 15
done
