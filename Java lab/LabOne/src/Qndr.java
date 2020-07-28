import java.util.*;
public class Qndr {

	public static void main(String[] args) {
	
		Scanner sc= new Scanner(System.in);
		int quotient,remainder,num1,num2;
		
		System.out.print("Enter a divident :");
		num1=sc.nextInt();
		System.out.print("Enter a divider :");
		num2=sc.nextInt();
		
		quotient=num1/num2;
		remainder=num1%num2;
		
		System.out.print("Quotient: "+quotient);
		System.out.print("\nRemainer: "+remainder);
		
		
		
	}
}
