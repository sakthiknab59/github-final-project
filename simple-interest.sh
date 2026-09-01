#!/bin/bash

# Simple Interest Calculator
# Computes simple interest based on user input:
# Principal amount, Rate of interest, and Time period.

echo "----- Simple Interest Calculator -----"

# Prompt user for input
read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of interest (per annum): " rate
read -p "Enter the Time period (in years): " time

# Validate that inputs are numeric
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate Simple Interest: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "---------------------------------------"
echo "Principal Amount   : $principal"
echo "Rate of Interest   : $rate% per annum"
echo "Time Period         : $time year(s)"
echo "Simple Interest      : $simple_interest"
echo "---------------------------------------"
