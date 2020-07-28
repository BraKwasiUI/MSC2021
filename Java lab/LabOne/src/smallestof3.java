import java.util.*;
import java.util.Arrays;
import java.util.Scanner;

public class smallestof3 {
	
	public static void main(String[] args) {
	  Scanner sc=new Scanner(System.in);
	    
	  int n,i,j;
	  
	  
	  System.out.print("Enter number of elements in array\n");
	  n=sc.nextInt();
	  int arr[] = new int[n];//assigns the number of elements to array size
	  
	  //for loop for accepting elements in array
	  System.out.print("Enter elements into array\n");
	  for (i=0; i<n; i++) {
		  
		  arr[i]=sc.nextInt();	  
	  }
	
	  System.out.print("Array contains:"+Arrays.toString(arr));
	  int smallest=arr[0];
	  
	  for(j=0; j<n; j++) {
		if (arr[j]<smallest) {
			smallest=arr[j];
			
		}  
		  
		 	  
	  }
	  System.out.print("\nSmallest Number is: "+smallest);
	} 
	  
}
