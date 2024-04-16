#!bin/bash

SPORTS=("Hockey" "Carrom" "Chess")

# size of above array is 3
# index are 0,1,2
# list always starts with 0

echo "Fisrt Sport is: ${SPORTS[0]}"
echo "Second Sport is: ${SPORTS[1]}"
echo "Sports are: ${SPORTS[@]}"