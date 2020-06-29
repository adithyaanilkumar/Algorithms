//Passing 2D array to function

#include<stdio.h>

double average(int [][2], int, int); //no need to specify array/variable names in this step

void main()
{
    int M=3,N=2;
    
    double mean;
    int matrix[3][2]=  
                    {
                        {1,2},
                        {3,4},
                        {5,6}
                        };
                        
    mean = average(matrix,M,N);
    printf("average over the matrix is %f", mean);
}

double average(int x[][2],int M,int N)  // require bounds for all dimensions except the first
{
    int i, j;
    double sum = 0.0;
    for (i=0; i<M; i++)
        for(j=0; j<N; j++)
            sum += x[i][j];
    return(sum/(M*N));
}