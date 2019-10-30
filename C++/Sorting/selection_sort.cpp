#include<bits/stdc++.h>
#include<iostream>
using namespace std;


void selection_sort(int arr[], int n){
	int i, j, k;
	
	for(i = 0; i < n-1; i++){
		k = i;
		for(j = i+1; j < n; j++)
		if(arr[j] < arr[k])
			k = j;
			
		swap(arr[k], arr[i]);
			
		
	}

}

int main(){
	int arr[] = {53, 123, 22, 20, 1, 223, 15, 4141};
	int n = sizeof(arr)/sizeof(arr[0]);
	
	selection_sort(arr, n);
	
	printf("The sorted array: \n");
	for(int i = 0; i < n; i++){
		printf(" %d ,", arr[i]); 
	}
}