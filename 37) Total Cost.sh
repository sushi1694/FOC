#!/bin/bash

# Read initial price of the car
read -p "Enter the initial price of the car: $" initialPrice

# Initialize total cost
totalCost=$initialPrice

# Read the number of accessories
read -p "Enter the number of accessories (0 to 10): " numAccessories

# Read the price for each accessory and add it to the total cost
for ((i=1; i<=numAccessories; i++))
do
    read -p "Enter the price for accessory $i: $" accessoryPrice
    totalCost=$(echo "$totalCost + $accessoryPrice" | bc)
done

# Read the sales tax percentage
read -p "Enter the sales tax percentage (e.g., 8.5 for 8.5%): " salesTax

# Calculate the sales tax amount and add it to the total cost
salesTaxAmount=$(echo "scale=2; $totalCost * $salesTax / 100" | bc)
totalCost=$(echo "scale=2; $totalCost + $salesTaxAmount" | bc)

# Print the total cost of the car
echo "Total cost of the car: $totalCost"
