#!/bin/bash
if [ "$#" -ne 3 ]; then
	echo "Wrong input"
	exit 1
fi

sum=$(( $1 + $2 + $3 ))


echo $sum
