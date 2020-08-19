class customerInfo{
	String name;
	int age;
	double payment;

void details() {
	System.out.println("Customer Details One: ");
	System.out.println(name);
	System.out.println(age);
	System.out.println(payment);
}
}

public class CustomerDemo3 {
	public static void main(String[] args) {
		
		customerInfo cus = new customerInfo();
		customerI cus2=new customerI();
	 	
		cus.name="Jesse";
		cus.age=20;
		cus.payment=10000.4;
				
		cus.details();
		
}
}