#!/bin/bash

totalGradePoints=0
numCourses=0

while true
do
    echo "Enter a letter grade (or 'q' to quit): "
    read grade

    if [[ $grade == "q" ]]; then
        break
    fi

    case $grade in
        "A") gradePoints=4 ;;
        "B") gradePoints=3 ;;
        "C") gradePoints=2 ;;
        "D") gradePoints=1 ;;
        "F") gradePoints=0 ;;
        *) echo "Invalid grade entered. Please try again." ;;
    esac

    if [[ $gradePoints != "" ]]; then
        totalGradePoints=$(bc <<< "scale=2; $totalGradePoints + $gradePoints")
        numCourses=$((numCourses + 1))
    fi
done

if [[ $numCourses -gt 0 ]]; then
    averageGrade=$(bc <<< "scale=2; $totalGradePoints / $numCourses")
    echo "Grade Average: $averageGrade"
else
    echo "No grades entered. Exiting..."
fi
