#!/bin/bash

ninput=100

while (( $# > 0 )); do
	if (( $1 <= 100 && $1 >=1 )); then 
		ninput=$1;
	fi

	shift
done


echo $(((RANDOM%ninput)+1))

