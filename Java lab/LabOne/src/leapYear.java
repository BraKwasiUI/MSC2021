import java.util.*;
public class leapYear {

	public static void main(String arg[]) {
		Scanner sc= new Scanner(System.in);
		
		int year;
		boolean leap;
		System.out.print(" Enter Year\n");
		year=sc.nextInt();
		
		if (year%400== 0) {
			
			System.out.print(" Leap year");
		}
		
		
		else if (year%100== 0) {
			System.out.print(" Not Leap year");
		}
		
		else if (year%4== 0) {
			System.out.print(" Leap year");
		}
	}
	
}
