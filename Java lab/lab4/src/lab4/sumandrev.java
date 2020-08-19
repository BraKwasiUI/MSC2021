package lab4;

import java.util.Arrays;
import java.util.Scanner;

public class sumandrev {
	public static void main(String[] args) {
		  Scanner sc=new Scanner(System.in);
		    
		  int n,i,j;
		  
		  
		  System.out.print("Enter number of elements in array\n");
		  n=sc.nextInt();
		  int arr[] = new int[n];//assigns the number of elements to array size
		  int revarr[] = new int[n];
		  int sumarr[]= new int[n];
		  //for loop for accepting elements in array
		  System.out.print("Enter elements into array\n");
		  for (i=0; i<n; i++) {
			  
			  arr[i]=sc.nextInt();	  
		  } 
		  System.out.print("Array contains: "+Arrays.toString(arr));
		 //reverse array
		  int r=n;
		 for(i=0;i<n; i++) {
		 revarr[r-1]=arr[i];
		r=r-1;
	}
		 System.out.print("\nReversed Array: "+Arrays.toString(revarr));
	
	//sum
		 for(i=0;i<n;i++) {
			 sumarr[i]=revarr[i]+arr[i];
		 }
		 System.out.print("\nSum Array: "+Arrays.toString(sumarr));
	
	}
	
	
}