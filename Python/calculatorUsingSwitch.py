def add(x, y):
   return x + y
def subtract(x, y):
   return x - y
def multiply(x, y):
   return x * y
def divide(x, y):
   return x / y

print("\nSelect operation\n1.Add\n2.Subtract\n3.Multiply\n4.Divide")
choice = input("Enter choice:")


num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

if choice == '1':
   print("\n",num1,"+",num2,"=", add(num1,num2))

elif choice == '2':
   print("\n",num1,"-",num2,"=", subtract(num1,num2))

elif choice == '3':
   print("\n",num1,"*",num2,"=", multiply(num1,num2))

elif choice == '4':
   print("\n",num1,"/",num2,"=", divide(num1,num2))
else:
   print("\nInvalid input")
