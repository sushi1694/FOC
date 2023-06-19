#!/bin/bash

bestScore=0

# Read the best score
echo "Enter the best score: "
read bestScore

# Calculate grade ranges
aRange=$((bestScore))
bRange=$((bestScore - 3))
cRange=$((bestScore - 5))
dRange=$((bestScore - 7))

# Function to calculate grade based on score
calculateGrade() {
    score=$1

    if [[ $score -ge $aRange ]]; then
        echo "A"
    elif [[ $score -ge $bRange ]]; then
        echo "B"
    elif [[ $score -ge $cRange ]]; then
        echo "C"
    elif [[ $score -ge $dRange ]]; then
        echo "D"
    else
        echo "F"
    fi
}

# Loop through each student
for ((i=1; i<=35; i++))
do
    echo "Enter the score for student $i: "
    read score

    grade=$(calculateGrade $score)

    echo "Student $i Grade: $grade"
done
