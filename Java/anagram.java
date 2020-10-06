//To check if two strings are anagrams or not 

// Solution 1:Sort and compare i.e

// boolean anagram1(String s,String t){
//  	return sort(s)==sort(t);
//  }

//SOLUTION 2:Check if the two strings have equal number of each unique chars
class anagram{
public static boolean anagram(String s,String t){
	if(s.length()!=t.length()) return false;
	int[] letters=new int[256];
	int num_unique_chars=0;
	int num_completed_t=0;
	char[] s_array=s.toCharArray();

	for(char c:s_array){
		if(letters[c]==0)
			++num_unique_chars;
			++letters[c];
		}

	for(int i=0;i<t.length();i++){
		int c=(int) t.charAt(i);
		if(letters[c]==0) return false; //since it's already seen that t has an extra character

		--letters[c];
		if(letters[c]==0){ 
			num_completed_t++;
			if(num_completed_t==num_unique_chars)
				return i==t.length()-1;//to check if all the iteration of the i loop has taken place
		}
	}
	return false;
}


public static void main(String[] args){
	String s="togod";
	String t="dotog";
	System.out.println(anagram(s,t)); //prints true

	s="cykab";
	System.out.println(anagram(s,t)); //prints false

}
}