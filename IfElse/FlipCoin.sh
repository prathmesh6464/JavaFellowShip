#!/bin/bash -x
flip=$((RANDOM%2))
if [ $flip==0 ]
then
	echo Tails
else
	echo Head
fi
