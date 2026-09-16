#include<stdio.h>
#define MAX 100
int stack[MAX],stop=-1;
int queue[MAX],front=0,rear=0;
void push(int v){stack[++stop]=v;}
int pop(){return stack[stop--];}
void enqueue(int v){queue[rear++]=v;}
int dequeue(){return queue[front++];}
int main(){
    push(10);push(20);push(30);
    printf("Stack pop: %d %d %d\n",pop(),pop(),pop());
    enqueue(10);enqueue(20);enqueue(30);
    printf("Queue dequeue: %d %d %d\n",dequeue(),dequeue(),dequeue());
    return 0;
}
