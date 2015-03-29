#!/bin/bash

for i in {26..56}; do
  curl -O http://www.nsf.gov/statistics/nsf13327/tables/tab${i}.xls &
done
