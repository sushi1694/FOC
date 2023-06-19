#!/bin/bash

totalMiles=0
totalGallons=0

echo "Enter the starting odometer reading: "
read startOdometer

for ((i=1; i<=6; i++))
do
    echo "Fillup $i:"
    echo "Enter the number of gallons of gas: "
    read gallons

    echo "Enter the odometer reading: "
    read odometer

    miles=$(bc <<< "scale=2; $odometer - $startOdometer")
    startOdometer=$odometer

    totalMiles=$(bc <<< "scale=2; $totalMiles + $miles")
    totalGallons=$(bc <<< "scale=2; $totalGallons + $gallons")

    echo "---------------------------"
done

averageMPG=$(bc <<< "scale=2; $totalMiles / $totalGallons")

echo "Average MPG: $averageMPG"
