package lab4;

import java.util.Arrays;
import java.util.Scanner;

public class mult5 {
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
		  System.out.print("Array contains: "+Arrays.toString(arr));

	//mult 5
		  int multarr[] = new int[n];
		  for(i=0; i<n; i++) {
			 if (arr[i]%5!=0) {
				multarr[i]=arr[i]; 
			 }
		  }
	
		  System.out.print("\nNot multiples of 5 Array: "+Arrays.toString(multarr));
	}
}