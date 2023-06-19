#!/bin/bash

students=25
tests=3

# Two-dimensional array to store test grades
declare -A gradeArray

# Read the test grades for each student
for ((i=1; i<=students; i++))
do
    for ((j=1; j<=tests; j++))
    do
        echo "Enter the grade for student $i, test $j: "
        read gradeArray[$i,$j]
    done
done

# Prompt for student number and test number
echo "Enter the student number (1-25): "
read studentNumber

echo "Enter the test number (1-3): "
read testNumber

# Retrieve and print the grade
grade="${gradeArray[$studentNumber,$testNumber]}"
echo "Grade for student $studentNumber, test $testNumber: $grade"
