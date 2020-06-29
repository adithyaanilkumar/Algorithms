/*
Name: Adithya A
Roll No: 03
Class : CS2B
*/
//Input any string from the user and find the first occurrence of a given character in the string.
#include <stdio.h>
#include <string.h>
int first_occurance(char str[1000],char c){
    int i = 0;
    for(i=0;i<strlen(str);i++){
        if(c==str[i]){
            return i;
        }
    }
    return -1;
}
void main(){
    char str[50], c;
    printf("Enter the string :\n");
    scanf("%s", str);
    printf("Enter character to be searched for :\n");
    scanf("%c", &c);
    int index = first_occurance(str,c);
    if(index==-1){
        printf("Character Not Found");
    }
    else{
        printf("character position is at %d \n", index+1);
        printf("character index  is at %d \n", index);
    }
}