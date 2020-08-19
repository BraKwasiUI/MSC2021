import java.util.*;
public class posnegcount {
static boolean ispositive(int n) {
		
		if ((n>0)) {
			return true;
		}
		else if (n< 0) {
			return false;
			}
		else {
		return false;}
}

public static void main(String[] args) {
	  Scanner sc=new Scanner(System.in);
	
	  int n,i,j,poscount,negcount;
	  poscount=0;
	  negcount=0;
	  int zerocount=0;
	  System.out.print("Enter number of elements in array\n");
	  n=sc.nextInt();
	  int numarray[]=new int[n];
	  
	  System.out.print("\nEnter  elements into array\n");
	  for (i=0; i<n; i++) {
		  numarray[i]=sc.nextInt();
	  }
	  System.out.print("\nNumbers are :"+Arrays.toString(numarray));
	  
	  int pos[]=new int[n];
	  int neg[]=new int[n];
	 for(j=0;j<n; j++) {

		 if(ispositive(numarray[j])) {
			 pos[j]=numarray[j];
			++poscount;
		 }
		 else if (numarray[j]==0){
			 ++zerocount;
		 }
		 else {
			 neg[j]=numarray[j];
			++negcount;
		 }
		 
	 }
	  
	 System.out.print("\nArray has : "+poscount+" Postive numbers and "+negcount+" Negative numbers"
	 		+ " and "+zerocount+" Zeros");
	 System.out.print("\nPositives : "+Arrays.toString(pos));
	 System.out.print("\nNegatives : "+Arrays.toString(neg));







}


}
