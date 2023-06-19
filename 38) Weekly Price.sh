#!/bin/bash

# Read the original price of the item
read -p "Enter the original price of the item: $" originalPrice

# Initialize the sale price as the original price
salePrice=$originalPrice

# Calculate and display the sale price for each day
for ((day=1; day<=5; day++))
do
    echo "Day $day: $salePrice"
    
    # Calculate the discount for the next day
    discount=$(echo "scale=2; $salePrice * 0.10" | bc)
    
    # Calculate the sale price for the next day
    salePrice=$(echo "scale=2; $salePrice - $discount" | bc)
done
