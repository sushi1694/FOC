#include <stdio.h>

double calculateGPA(char grades[], int credits[], int numCourses) {
    double totalGradePoints = 0.0;
    int totalCredits = 0;
    
    for (int i = 0; i < numCourses; i++) {
        double gradePoint = 0.0;
        
        // Calculate grade point based on letter grade
        switch (grades[i]) {
            case 'A':
                gradePoint = 4.0;
                break;
            case 'B':
                gradePoint = 3.0;
                break;
            case 'C':
                gradePoint = 2.0;
                break;
            case 'D':
                gradePoint = 1.0;
                break;
            case 'F':
                gradePoint = 0.0;
                break;
        }
        
        totalGradePoints += gradePoint * credits[i]; // Calculate total grade points
        totalCredits += credits[i]; // Calculate total credits
    }
    
    double gpa = totalGradePoints / totalCredits;
    
    return gpa;
}

int main() {
    char grades[] = {'B', 'A', 'A', 'C', 'B'};
    int credits[] = {3, 3, 1, 4, 3};
    int numCourses = sizeof(grades) / sizeof(grades[0]);
    
    double gpa = calculateGPA(grades, credits, numCourses);
    
    printf("GPA: %.2lf\n", gpa);
    
    return 0;
}
