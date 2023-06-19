#!/bin/bash

# Initialize grade counters
totalA=0
totalB=0
totalC=0
totalD=0
totalF=0

# Process grades for each student
for ((i=1; i<=200; i++))
do
    echo "Enter details for Student $i:"
    
    # Read student number and number grade
    read -p "Student Number: " studentNumber
    read -p "Number Grade: " numberGrade
    
    # Determine letter grade
    if ((numberGrade >= 90 && numberGrade <= 100)); then
        letterGrade="A"
        ((totalA++))
    elif ((numberGrade >= 78 && numberGrade <= 89)); then
        letterGrade="B"
        ((totalB++))
    elif ((numberGrade >= 65 && numberGrade <= 77)); then
        letterGrade="C"
        ((totalC++))
    elif ((numberGrade >= 50 && numberGrade <= 64)); then
        letterGrade="D"
        ((totalD++))
    else
        letterGrade="F"
        ((totalF++))
    fi
    
    # Print student information
    echo "Student Number: $studentNumber"
    echo "Number Grade: $numberGrade"
    echo "Letter Grade: $letterGrade"
    echo
    
done

# Print total grades
echo "Total Number of As: $totalA"
echo "Total Number of Bs: $totalB"
echo "Total Number of Cs: $totalC"
echo "Total Number of Ds: $totalD"
echo "Total Number of Fs: $totalF"
