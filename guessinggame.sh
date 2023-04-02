#!/usr/bin/env bash

echo "Are you ready to play?"
echo "Are you sure?!"
echo "Let's go"

number_files=$(ls -1 | wc -l)

function guess {
	echo "Enter the number of files in the current directory:"
	read guess_user
  while [[ $guess_user -ne $number_files ]]
  do
    if [[ $guess_user -lt $number_files ]] 
    then
      echo "Na-ah. Try a higher number."
    else
      echo "Nope.Try a lower number."
    fi
  done
}

guess

echo "YAS! You got it! Congrats."

