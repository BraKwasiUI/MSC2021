import java.util.*;
//import java.io.CharArrayWriter;
public class vowels {
	
	static boolean isavowel(char c) {
		
		if (c=='a' || c=='A' || c=='e' || c=='E' ||
				c=='i' || c=='I' || c=='o' || c=='O' ||
				c=='u' || c=='U') {
			return true;
		}
		else {
			return false;
			}
		
		
		
	}
	
	
	
	public static void main(String[] args) {
		  Scanner sc=new Scanner(System.in);
		  //CharArrayWriter chw = null;
		  
		  int i;
		  String word;
		  System.out.print("Enter a Word\n");
		  word=sc.nextLine();
		  System.out.print("The word is "+word+"\n");
		  int vowels=0;
		  char arrChar[]=new char[word.length()];
		 // chw = new CharArrayWriter();
		  for (i=0; i<word.length(); i++) {
			  char c=word.charAt(i);
			  
			  //Here we append the characters that the function isavowel accepts to the 
			  if (isavowel(c)) {
				  
				  //chw.append(c);
				  arrChar[i]=c;
				  ++vowels;	
			  }
			 
		  }	  
		  
		  System.out.print("The word has : "+vowels+" Vowels\n");  
		//  System.out.print("Vowels are "+chw.toString()+"\n");   
		  System.out.print("The Vowels are : "+Arrays.toString(arrChar)+"\n");
	}
	
}

