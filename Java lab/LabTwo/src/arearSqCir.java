import java.util.Scanner;
import java.util.*;
public class arearSqCir {	
	public static void main(String arg[]) {
		   //Q8,Q21,Q24
		    int l,b,c,rad,num;
		    l=5;
		    rad=5;
		    double pie=3.143;
		    double areaCir;
		    int areaSq=l*l;
		    areaCir=pie*rad*rad;
		    
		    System.out.print("Area of Square with length: "+l+" = "+areaSq);
		    System.out.print("\nArea of Circle with Radius: "+rad+" = "+areaCir);
		    
		  //Positive or negative
			Scanner sc= new Scanner(System.in);
			System.out.print("\n\nEnter a number : ");
			num=sc.nextInt();
			if(num>0) {
			    System.out.print("\n"+num+" is Positive \n");
			} 
			else if(num<0) {
			    System.out.print(num+" is Negative\n");
			}
			else {System.out.print(num+" Zero");}		
		  }

}