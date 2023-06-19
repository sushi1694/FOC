#!/bin/bash

hours=24
minEmployees=3

# Array to store the average number of customers per hour
declare -a avgCustomers

# Read the average number of customers for each hour
for ((i=0; i<hours; i++))
do
    echo "Enter the average number of customers for hour $((i+1)): "
    read avgCustomers[$i]
done

# Function to calculate the needed number of employees for an hour
calculateEmployees() {
    customers=$1

    employees=$((minEmployees + (customers / 20)))
    
    if ((employees < minEmployees)); then
        employees=$minEmployees
    fi
    
    echo $employees
}

# Loop through each hour
for ((i=0; i<hours; i++))
do
    employees=$(calculateEmployees ${avgCustomers[$i]})
    echo "Hour $((i+1)) - Needed Employees: $employees"
done
