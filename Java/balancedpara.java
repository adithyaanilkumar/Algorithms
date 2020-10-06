//to check if a the brackets are balanced or not.
//i.e all the normal conditios for paranthesis to be balanced
//eg {({[(){}]})} is balanced whereas {([{]})} is not
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;


public class balancedpara{
	public static char[][] TOKENS={{'{','}'},{'[',']'},{'(',')'}};

	public static boolean isOpenTerm(char c){
		for(char[] array:TOKENS){
			if(array[0]==c)
				return true;
		}
		return false;

	}

	public static boolean matches(char openTerm,char closeTerm){
		for(char[] array:TOKENS){
			if(array[0]==openTerm)
				return array[1]==closeTerm;
		}
		return false;

	}

	public static boolean isBalanced(String expression){
		Stack<Character> stack= new Stack<Character>();
		for(char c:expression.toCharArray()){
			if(isOpenTerm(c)){
				stack.push(c);
			} else{
				if(stack.isEmpty()||!matches(stack.pop(),c)){
					return false;
				}

			}

		}
		return stack.isEmpty();
	}


	public static void main(String[] args){
		String s="{((([{}])))}";
		boolean ans=isBalanced(s);
		System.out.println(ans);
	}
}