#include <bits/stdc++.h>
using namespace std;

void selectionSort(int arr[],int n)
{
    int i,key,j;
    for (i=0;i<n;i++)
    {
        key=i;
        for(j=i+1;j<n;j++)
        {
            if(arr[key]>arr[j])
                key=j;
        }
        if(arr[key]!=arr[i])
            swap(arr[i],arr[key]);
    }
}
void printArray(int arr[], int n)
{
    int i;
    for (i=0;i<n;i++)
        cout<<arr[i]<<" ";
    cout<<endl;
}

int main()
{
    int arr[100000],n,i;
    cout<<"Enter the size of the array:";
    cin>>n;
    cout<<"Enter the array elements:";
    for(i=0;i<n;i++)
        cin>>arr[i];
    selectionSort(arr, n);
    printArray(arr, n);
    return 0;
}
