#!/bin/bash

#create variables
states=(California, Hawaii, Texas, Colorado, Oregon)

#create loop that looks for Hawaii
for state in ${states[@]};
do
  if [ $state == 'Hawaii' ];
  then
   echo "Hawaii is the best!"
  else
   echo "I'm not a fan of Hawaii."
  fi
done

