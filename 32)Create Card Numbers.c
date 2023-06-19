#include <stdio.h>

int main() {
    int number, originalNumber, sum = 0, checkDigit;
    
    printf("Enter a four-digit number: ");
    scanf("%d", &number);

    // Store the original number for later display
    originalNumber = number;

    // Calculate the sum of the digits
    while (number > 0) {
        sum += number % 10;
        number /= 10;
    }

    // Add a check digit of 0 or 1 to make the sum even
    if (sum % 2 != 0) {
        checkDigit = 1;
    } else {
        checkDigit = 0;
    }

    // Add the check digit to the original number
    int newNumber = originalNumber * 10 + checkDigit;

    // Print the original number and the new number
    printf("Original number: %d\n", originalNumber);
    printf("New number: %d\n", newNumber);

    return 0;
}
