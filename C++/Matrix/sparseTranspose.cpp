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

//Main
int main() {
  Matrix A;
  int m, n;
  tup spA[MAX], spAT[MAX];

  // Get the order
  cout<<"\n Enter the order of matrix : ";
  cin>>m>>n;

  // Input elements A
  cout<<"\n Enter the elements of matrix : ";
  for(int i=0;i<m;i++){
    for(int j=0;j<n;j++){
      cin>>A[i][j];
    }
  }

  cout<<"\n Sparse matrix representation of the matrix is : \n\n";
  constructSparseMatrix(A, spA, m, n);
  spTranspose(spA, spAT);
  cout<<"\n The transpose of matrix in sparse matrix representation is : \n\n";
  displaySp(spAT);
  return 0;
}