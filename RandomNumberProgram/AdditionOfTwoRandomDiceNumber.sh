#!/bin/bash -x
randVal=$((RANDOM%6))
randVal2=$((RANDOM%6))
randVal=$(( $randVal+ 1 ))
randVal2=$(( $randVal2 + 1 ))
echo $randVal "+" $randVal2 ":" $(($randVal+$randVal2))
