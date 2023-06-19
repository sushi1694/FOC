#!/bin/bash

loanAmount=3000
monthlyPayment=85
interestRate=0.01

balance=$loanAmount
numMonths=0
totalInterest=0

echo "Loan Amount: $loanAmount"
echo "Monthly Payment: $monthlyPayment"
echo "Interest Rate: $interestRate"
echo "-------------------------------------"

while ((balance > 0))
do
    ((numMonths++))
    
    interest=$(bc <<< "scale=2; $balance * $interestRate")
    principal=$(bc <<< "scale=2; $monthlyPayment - $interest")
    balance=$(bc <<< "scale=2; $balance - $principal")
    totalInterest=$(bc <<< "scale=2; $totalInterest + $interest")

    echo "Month $numMonths:"
    echo "Interest: $interest"
    echo "Principal: $principal"
    echo "Balance: $balance"
    echo "-------------------------------------"
done

numYears=$((numMonths / 12))
numMonths=$((numMonths % 12))

echo "Number of years to pay off the loan: $numYears years and $numMonths months"
echo "Total interest paid: $totalInterest"
