#include<iostream>
using namespace std;
int main()
{
	int i,j,x,y,z;
	j=20;
	y=1;
	while(j>=1)
	{
		for(i=1;i<=j;i++)
			cout<<" ";
		for(x=1;x<=y;x++)
			cout<<"*";
		if(y>=2)
			for(z=1;z<=y-1;z++)
				cout<<"*";
		j--;
		y++;
		cout<<endl;
		
	}
	
	for(int w=1;w<=7;w++)
	{
		for(int s=1;s<=(y-2);s++)
			cout<<" ";
		cout<<"***\n";
	}
	
	return 0;
}

