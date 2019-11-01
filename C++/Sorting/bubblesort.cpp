#include<bits/stdc++.h>
using namespace std;
typedef long long ll;

void bubble(vector<ll>v){
	for(int i=0;i<v.size();i++){
		for(int j=0;j<v.size()-1;j++){
			if(v[j]>v[j+1]){
				ll temp=v[j];
				v[j]=v[j+1];
				v[j+1]=temp;
			}
		}
	}
	
	cout<<"Sorted Array is: \n";
	for(int i=0;i<v.size();i++){
		cout<<v[i]<<" ";
	}
}

int main(){
	int n;
	cout<<"Enter the size of the array: \n";
	cin>>n;
	
	vector<ll>v;
	cout<<"Enter the elements of the array: \n";
	for(int i=0;i<n;i++){
		ll x;
		cin>>x;
		v.push_back(x);
	}
	cout<<"Orginal array is:\n";
	for(int i=0;i<v.size();i++){
		cout<<v[i]<<" ";
	}
   	
   	bubble(v);
}
