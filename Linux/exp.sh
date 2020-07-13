#!/bin/bash

read -p "Which year did you start coding? [20YY] " myyear


current=$(date +%y)
exp=`expr $current - $myyear`
echo "Great! :) You have $exp years of experience"
