#!/bin/bash


echo "Guess a number if you want to play"
read guess
echo "You guessed $number"

echo "the correct number is:"
echo $(( $RANDOM % 1000	 + 1 ))
