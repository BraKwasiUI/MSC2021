package lab4;

import java.util.Arrays;
import java.util.Scanner;

public class secondmaxmin {
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
		  //max
		  int sndmax=arr[0];
		  int max=arr[0];
		  for(i=0;i<n;i++) {
			  if (arr[i]>max) {
					sndmax=max;
				  max=arr[i];
				}
			  else if(arr[i]>sndmax) {
				  sndmax=arr[i];
			  }   
		  }
		  System.out.print("\nSecond max is : "+sndmax);
		  
		 // 
		  int smallest = Integer.MAX_VALUE;;
		    int secondSmallest =Integer.MAX_VALUE;;
		  for ( i = 0; i < n; i++) {
		        if(arr[i]==smallest){
		          secondSmallest=smallest;
		        } else if (arr[i] < smallest) {
		            secondSmallest = smallest;
		            smallest = arr[i];
		        } else if (arr[i] < secondSmallest) {
		            secondSmallest = arr[i];
		        }
		  }
		  System.out.print("\n2nd Smallest Number is: "+secondSmallest);
		  }
}
