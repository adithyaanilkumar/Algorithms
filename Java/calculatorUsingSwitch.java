/******************************************************************************

                            Online Java Compiler.
                Code, Compile, Run and Debug java program online.
Write your code in this editor and press "Run" button to execute it.

*******************************************************************************/


import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        int first,second;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter two numbers: ");
        first = sc.nextInt();
        second = sc.nextInt();
        System.out.print("Enter an operator (+, -, *, /): ");
        char operator = sc.next().charAt(0);

        switch(operator)
        {
            case '+':
                System.out.printf("%d + %d = %d", first, second, first + second);
                break;

            case '-':
                System.out.printf("%d - %d = %d", first, second, first - second);
                break;

            case '*':
                System.out.printf("%d + %d = %d", first, second, first * second);
                break;

            case '/':
                System.out.printf("%d + %d = %d", first, second, first / second);
                break;
            default:
                System.out.printf("\nInvalid Operator");
                return;
        }
    }
}