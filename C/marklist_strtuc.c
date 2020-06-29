//structure - Marklist preparation

#include<stdio.h>
struct student
{
    char name[20];
    int rollno;
    int m1;
    int m2;
    int m3;
    int total;
    float average;
};
void main()
{
    struct student s[3];
    int i;
    
    for (i=0;i<3;i++)
        {
            printf("Enter the Name, Roll no Mark1, Mark2 and Mark3 of student %d\n", i);
            scanf("%s %d %d %d %d", s[i].name,&s[i].rollno,&s[i].m1,&s[i].m2,&s[i].m3);
        }
    for(i=0;i<3;i++)
        {
            s[i].total=s[i].m1+s[i].m2+s[i].m3;
            s[i].average=s[i].total/3;
        }
    printf("\n\t\t\t\tMARKLIST");
    printf("\n\nNAME\t\t\tRoll No\t\tMark1\tMark2\tMark3\tTotal\tAverage\t");
    for(i=0;i<3;i++)
    printf("\n\n%s\t\t\t%d\t\t%d\t%d\t%d\t%d\t%f\t",s[i].name,s[i].rollno,s[i].m1,s[i].m2,s[i].m3,s[i].total,s[i].average);
    
}