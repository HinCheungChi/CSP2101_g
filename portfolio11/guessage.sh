#!/bin/bash
random_age=$(($RANDOM % 100 + 1))
for (( ; ; ))
do
  read -p "Guess the age between 0 to 100: " user_number
  if [ $user_number -eq $random_age ]
  then
    echo "Your guess is correct"
    break
  else 
    echo "Your guess is wrong"
    if [ $user_number -ge $random_age ]
    then
      echo "the guess is too high"
    else
      echo "the guess is too low"
    fi
  fi
done