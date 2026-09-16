#include<stdio.h>
int main(){
    int n; printf("N students: "); scanf("%d",&n);
    float att[n],gpa[n];
    printf("Enter attendance and GPA for each student:\n");
    for(int i=0;i<n;i++) scanf("%f%f",&att[i],&gpa[i]);
    printf("Scholarship eligible (attendance>=75 and GPA>=8.0):\n");
    for(int i=0;i<n;i++) if(att[i]>=75&&gpa[i]>=8.0) printf("Student %d\n",i+1);
    return 0;
}
