#!/bin/bash
# inside array we always refer values with index and it starts from 0
PERSONS=("Ramesh" "Suresh" "Sachin")
# this is called array, instead of single value it can hold multiple values
echo "First Person: ${PERSONS[0]}"
echo "All Persons: ${PERSONS[@]}"