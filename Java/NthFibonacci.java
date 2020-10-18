/*
	This program is return the nth fibonacci number.

	Problem : If nth number of Fibbonacci is out of the integer range then it's give wrong value.

	Solution: Use BigInteger for calculating value .
 */

import java.math.BigInteger;

public class NthFibonacci{
	
	// Method 1: Using loop
	public static int nthFibboLoop(int n){
		// n should must be >= 0.

		if(n<2)
			return n;

		int a=0,b=1;
		int fibo=0;
		for(int i=2;i<=n;i++){
			fibo=a+b;
			a=b;
			b=fibo;
		}
		return fibo;

	}

	static int[] dp;	// This array is use for redusing the complexity.
	// Method 1: Using Recursion
	public static int nthFibboRecursion(int n){
		dp=new int[n+1];
		java.util.Arrays.fill(dp,-1);
		return nthFibbo(n);
	}
	
	private static int nthFibbo(int n){
		if(n<2)
			dp[n]=n;
		else if(dp[n]==-1)
			dp[n]=nthFibbo(n-1)+nthFibbo(n-2);
		return dp[n];
	}

	// Method 3: Using Formula
	public static int nthFibboFormula(int n){
		/*
		Formula:-
		fibbonaci(n) = (1+sqrt(5))^n - (1-sqrt(5))^n
					   ------------------------------	 this value give double take integer part of that.
							( sqrt(5) * (2^n) )
		 */

		double sq5 = Math.sqrt(5);
		double denominator = sq5*Math.pow(2,n);
		double numerator = Math.pow(1+sq5,n)-Math.pow(1-sq5,n);
		double fibo=numerator/denominator;

		return (int)fibo;
	}

	// Method 4: Using BigInteger 
	// You can make method 1,2 and 3 using BigInteger.
	// It return String because nth number of fibbonaaci is out of the range of int or long.
	public static String nthFibonacci(int n){
		if(n<2)
			return Integer.toString(n);

		BigInteger a = BigInteger.ZERO;
		BigInteger b = BigInteger.ONE;
		BigInteger fibo = BigInteger.ZERO;

		for(int i=2;i<=n;i++){
			fibo = a.add(b);
			a=b;
			b=fibo;
		}
		return fibo.toString();
	}
}