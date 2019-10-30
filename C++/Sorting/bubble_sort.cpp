#include <bits/stdc++.h>
#include<iostream>

using namespace std;

void bubble_sort(int arr[], int n){
	if(n == 1){
		return;
	}
	
	for( int i = 0; i < n-1; i++){
		if(arr[i] > arr[i+1]){
			swap(arr[i], arr[i+1]);
		}
	}
	bubble_sort(arr, n-1);
}

int main(){
	int arr[] = { 15, 20, 3414, 424, 213141, 32342342};
	int n = sizeof(arr)/sizeof(arr[0]);
	
	bubble_sort(arr, n);
	
	cout<<"The elements of the array are:";
	
	for(int i = 0; i < n; i++){
		printf(" %d ,", arr[i]);
	}
	
	return 0;	
}