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

// Function to do multiplication in sparse representation. 
void spMultiply(tup a[MAX], tup b[MAX], tup prod[MAX]){
  prod[0].r = a[0].r;
  prod[0].c = b[0].c;
  prod[0].value = 0;
  int flag = 0;
  int k=0, s=0;
  for(int i = 1;i<=a[0].value;i++){
    for(int j=1;j<=b[0].value;j++){
      flag = 0;
      if(a[i].c == b[j].r){
        s = a[i].value * b[j].value;
        for(int l=1;l<=k;l++){
           if(prod[l].r == a[i].r && prod[l].c == b[j].c){
              prod[l].value += s;
              flag = 1;
           }
        }
        if(flag == 0){
          k++;
          prod[k].r = a[i].r;
          prod[k].c = b[j].c;
          prod[k].value = s;
          flag = 1;
        }
      }
    }
  }
  prod[0].value = k; // Update size of sum
}

//Main
int main() {
  Matrix A, B;
  int m, n, p, q;
  tup spA[MAX], spB[MAX], PROD[MAX];

  // Get the order of A
  cout<<"\n Enter the order of matrix A : ";
  cin>>m>>n;

  // Input elements A
  cout<<"\n Enter the elements of matrix A: ";
  for(int i=0;i<m;i++){
    for(int j=0;j<n;j++){
      cin>>A[i][j];
    }
  }

 // Get the order of B
  cout<<"\n Enter the order of matrix B : ";
  cin>>p>>q;
  
  if(n != p){
    cout<<"\n Cannot perform multiplication... \n";
    exit(0);
  }

  // B
  printf("\n Enter the elements of matrix B: ");
  for(int i=0;i<p;i++){
    for(int j=0;j<q;j++){
      cin>>B[i][j];
    }
  }
  cout<<"\n The sparse matrix representation of A is : \n\n";
  constructSparseMatrix(A, spA, m, n);
  cout<<"\n The sparse matrix representation of B is : \n\n";
  constructSparseMatrix(B, spB, p, q);
  spMultiply(spA, spB, PROD);
  cout<<"\n The result of multiplication of matrices, AB, in sparse representation is : \n\n";
  displaySp(PROD);
  return 0;
}