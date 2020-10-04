#include <iostream>
using namespace std;

void pyramid(int n)
{
  for (int i = 1, k = 0; i <= n; i++, k = 0)
  {
    for (int j = 1; j <= n - i; j++)
    {
      cout << "  ";
    }
    while (k != 2 * i - 1)
    {
      cout << "* ";
      k++;
    }
    cout << '\n';
  }
}
int main()
{
  int n;
  cout << "\nEnter number of rows : ";
  cin >> n;
  pyramid(n);
  return 0;
}