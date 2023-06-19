#include <stdio.h>

int main() {
    int numberOfPeople, isBusinessCustomer, isSeniorCitizen;
    double basePrice = 0.0, discount = 0.0, totalPrice = 0.0;

    printf("Enter the number of people: ");
    scanf("%d", &numberOfPeople);

    printf("Is the customer staying on company business? (1 for yes, 0 for no): ");
    scanf("%d", &isBusinessCustomer);

    printf("Is the customer over 60 years of age? (1 for yes, 0 for no): ");  
    scanf("%d", &isSeniorCitizen);

    if (numberOfPeople == 2) {
        basePrice = 85.00;
    } else if (numberOfPeople == 3) {
        basePrice = 90.00;
    } else if (numberOfPeople == 4) {
        basePrice = 95.00;
    } else if (numberOfPeople > 4) {
        basePrice = 95.00 + 6.00 * (numberOfPeople - 4);
    }

    if (isBusinessCustomer == 1 && isSeniorCitizen == 0) {
        discount = 0.20;
    } else if (isBusinessCustomer == 0 && isSeniorCitizen == 1) {
        discount = 0.15;
    }

    totalPrice = basePrice - (basePrice * discount);

    printf("Cost of the room: $%.2lf\n", totalPrice);

    return 0;
}
