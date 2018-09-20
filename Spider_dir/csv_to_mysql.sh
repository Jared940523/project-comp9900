#!/bin/bash

path=`find -name "csv_to_mysql.py"`
for subpath in $path
do
	cd ${subpath%/*}
	python3.6 csv_to_mysql.py
	cd ..
done
