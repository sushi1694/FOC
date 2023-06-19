#include <stdio.h>

int main() {
    double usage, bill = 0.0;

    printf("Enter the cubic feet of water used: ");
    scanf("%lf", &usage);

    if (usage <= 1000) {
        bill = 15.00;
    } else if (usage <= 2000) {
        bill = 15.00 + 0.0175 * (usage - 1000);
    } else if (usage <= 3000) {
        bill = 15.00 + 0.0175 * 1000 + 0.02 * (usage - 2000);
    } else {
        bill = 15.00 + 0.0175 * 1000 + 0.02 * 1000 + 70.00 * (usage - 3000);
    }

    printf("Water bill: $%.2lf\n", bill);

    return 0;
}
