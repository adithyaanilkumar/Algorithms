#include <iostream>

using namespace std;

#define MAX 50
typedef int Matrix[100][100];

struct tup {
   int r;
   int c;
   int value;
};

// Funcion to display sparse matrix
void displaySp(tup sp[MAX]){
  for(int i=0;i<=sp[0].value;i++){
      cout<<" "<<sp[i].r<<" "<<sp[i].c<<" "<<sp[i].value<<"\n";
  }
}

// Function to construct sparse matrix
void constructSparseMatrix(Matrix(a), tup sp[MAX], int m, int n){
  int k = 1;
  sp[0].r = m;
  sp[0].c = n;
  for(int i = 0;i<m;i++){
    for(int j=0;j<n;j++){
      if(a[i][j] != 0){
        sp[k].r = i;
        sp[k].c = j;
        sp[k].value = a[i][j];
        k++;
      }
    }
  }
  sp[0].value = k-1;
  displaySp(sp);
}

// Function to find the transpose of a sparse matrix representation
void spTranspose(tup a[MAX], tup aT[MAX]){
  // Interchange number of rows and columns values
  aT[0].r = a[0].c;
  aT[0].c = a[0].r;
  aT[0].value = a[0].value;
  // Interchange row and column positions of each elements
  for(int i=1;i<=a[0].value;i++){
    aT[i].r = a[i].c;
    aT[i].c = a[i].r;
    aT[i].value = a[i].value;
  }
}

// Function to find the sum of two sparse matrices
void spAdd(tup a[MAX], tup b[MAX], tup sum[MAX]){
  sum[0].r = a[0].r;
  sum[0].c = a[0].c;
  int i = 1, j = 1, k=1;
  while(i<=a[0].value && j<=b[0].value){
    if(a[i].r == b[j].r && a[i].c == b[j].c){ // Row and Column equal
      sum[k].r = a[i].r;
      sum[k].c = a[i].c;
      sum[k].value = a[i].value + b[j].value;
      i++;
      j++;
      k++;
    }else if(a[i].r == b[j].r && a[i].c != b[j].c){ // Row equal
      if(a[i].c < b[j].c){
        sum[k].r = a[i].r;
        sum[k].c = a[i].c;
        sum[k].value = a[i].value;
        i++;
        k++;
      }else {
        sum[k].r = b[j].r;
        sum[k].c = b[j].c;
        sum[k].value = b[j].value;
        j++;
        k++;
      }
    }else{ // Row not equal
      if(a[i].r < b[j].r){
        sum[k].r = a[i].r;
        sum[k].c = a[i].c;
        sum[k].value = a[i].value;
        i++;
        k++;
      }else {
        sum[k].r = b[j].r;
        sum[k].c = b[j].c;
        sum[k].value = b[j].value;
        j++;
        k++;
      }
    }
  }
  while(i<=a[0].value){ // Copy items, if remaining from matrix A
    sum[k].r = a[i].r;
    sum[k].c = a[i].c;
    sum[k].value = a[i].value;
    i++;
    k++;
  }
  while(j<=b[0].value){ // Copy items, if remaining from matrix B
    sum[k].r = b[j].r;
    sum[k].c = b[j].c;
    sum[k].value = b[j].value;
    j++;
    k++;
  }
  sum[0].value = k-1; // Update size of sum
}


//Main
int main() {
  Matrix A, B;
  int m, n;
  tup spA[MAX], spB[MAX], SUM[MAX];

  // Get the order
  cout<<"\n Enter the order of matrices : ";
  cin>>m>>n;

  // Input elements A
  cout<<"\n Enter the elements of matrix A: ";
  for(int i=0;i<m;i++){
    for(int j=0;j<n;j++){
      cin>>A[i][j];
    }
  }
  // B
  printf("\n Enter the elements of matrix B: ");
  for(int i=0;i<m;i++){
    for(int j=0;j<n;j++){
      cin>>B[i][j];
    }
  }
  cout<<"\n The sparse matrix representation of A is : \n\n";
  constructSparseMatrix(A, spA, m, n);
  cout<<"\n The sparse matrix representation of B is : \n\n";
  constructSparseMatrix(B, spB, m, n);
  spAdd(spA, spB, SUM);
  cout<<"\n The sum of matrices, A+B is : \n\n";
  displaySp(SUM);
  return 0;
}