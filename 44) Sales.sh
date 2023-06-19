#!/bin/bash

salespeople=10
days=7

# Two-dimensional array to store sales data
declare -A salesData

# Read the sales amount for each salesperson and each day
for ((i=0; i<salespeople; i++))
do
    for ((j=0; j<days; j++))
    do
        echo "Enter the sales amount for salesperson $((i+1)) on day $((j+1)): "
        read salesData[$i,$j]
    done
done

# Calculate and print the average sales amount for each salesperson
echo "Average Sales Amount per Salesperson:"
for ((i=0; i<salespeople; i++))
do
    sum=0

    for ((j=0; j<days; j++))
    do
        sum=$((sum + salesData[$i,$j]))
    done

    average=$((sum / days))
    echo "Salesperson $((i+1)): $average"
done

# Calculate and print the total sales amount for each day and the week
echo "Total Sales Amount:"
for ((j=0; j<days; j++))
do
    sum=0

    for ((i=0; i<salespeople; i++))
    do
        sum=$((sum + salesData[$i,$j]))
    done

    echo "Day $((j+1)): $sum"
done

