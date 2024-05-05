#!/bin/bash

read -p "Enter you block(in 20s ):" -t 20 MY_BLOCK
BLOCK_STATE=$?
if [[ $BLOCK_STATE -eq 142 ]]
then
    MY_BLOCK='/dev/sda'
fi
echo "your block is $MY_BLOCK"
echo "your block is $BLOCK_STATE"