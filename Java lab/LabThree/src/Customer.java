import java.util.*;
class customerI{
	String name;
	int age;
	double payment;
}

public class Customer {
	public static void main(String[] args) {
		customerI cus = new customerI();
		cus.name="Jesse";
		cus.age=20;
		cus.payment=10000.4;
		
		System.out.println("Customer Details: ");
		System.out.println("\nName: "+cus.name);
		System.out.println("Age: "+cus.age);
		System.out.println("Payment: "+cus.payment);
}
}