import java.util.Arrays;
import java.util.Scanner;

public class LargestNumber {
	
	
public static void main(String[] args) {
		
	    Scanner sc=new Scanner(System.in);
	    
	    int array[]= {10,30,4,39};// declare an array
	    int largest=array[0];//Assign the first element in array as largest
	    
	   int i;
	   //loop the will go through the array
	  
	   for(i=1; i<array.length; i++) {
		   if(array[i]>largest) {
			   largest=array[i];
		   }
		   
	   }
	    System.out.print(largest+" Is the Largest number in the array "+Arrays.toString(array));
	      
	  }


}
