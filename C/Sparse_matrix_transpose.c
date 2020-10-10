#include<stdio.h>

//  FUNCTION TO FIND THE TRANSPOSE OF A MATRIX IN TRIPLE FORM.
void transpose(int a[10][3])
{
	int m,n,p,q=1,count,col,t[10][3];
	m=a[0][0];
	n=a[0][1];
	count=a[0][2];
	t[0][0]=n;
	t[0][1]=m;
	t[0][2]=count;
	printf("\n\nTranspose of Matrix:\n");
	
		for(col=0;col<n;col++)
			for(p=1;p<=count;p++)
			{
				if(a[p][1]==col)
				{
					t[q][0]=a[p][1];
					t[q][1]=a[p][0];
					t[q][2]=a[p][2];
					q++;
				}
			}
			printf("\n\tRow\tColumn\tElement");
			display(t);
}

// FUNCTION TO FIND THE TRIPLE FORM OF A SPARSE MATRIX.
void sparse(int s[10][3],int a[10][10],int m,int n)
{
	int i,j,k=1;
	for(i=0;i<m;i++)
		for(j=0;j<n;j++)
		{
			if(a[i][j]!=0)
			{
				s[k][0]=i;
				s[k][1]=j;
				s[k][2]=a[i][j];
				k++;
			}
		}
		s[0][0]=m;
		s[0][1]=n;
		s[0][2]=k-1;
		printf("\n\tRow\tColumn\tElement");
		display(s);
}

// FUNCTON TO DISPLAY THE MATRIX.
void display(int a[10][3])
{
	int i,j,k=1,n;
	n=a[0][2];
    printf("\n\t");
	for(i=0;i<=n;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",a[i][j]);
		}
		printf("\n\t");
	}
}

void main()
{
    int a[10][10],s[10][3],i,j,m,n,ch;
    char c;
    printf("\nEnter the rows and columns of the first matrix : ");
    scanf("%d%d",&m,&n);    
    printf("\nEnter the elements of Matrix: ");
    for(i=0; i<m; i++) 			//To Input Matrix
        for(j=0; j<n; j++)
            scanf("%d",&a[i][j]);
        printf("\n\n\tMATRIX:\n\t");
    for(i=0;i<m;i++)		//To Print Matrix
    	{for(j=0;j<n;j++)
    		printf("%4d",a[i][j]);
    		printf("\n\t");
		}
    printf("Sparse form of first matrix :\n");
    sparse(s,a,m,n);
    transpose(s);
}