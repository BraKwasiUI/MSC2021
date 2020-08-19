
public class CustomerDemo2 {
	public static void main(String[] args) {
	
	customerI cus = new customerI();
	customerI cus2=new customerI();
 	
	cus.name="Jesse";
	cus.age=20;
	cus.payment=10000.4;
	
	cus2.name="Jason";
	cus2.age=25;
	cus2.payment=20000.4;
	
	System.out.println("Customer Details One: ");
	System.out.println("\nName: "+cus.name);
	System.out.println("Age: "+cus.age);
	System.out.println("Payment: "+cus.payment);

	System.out.println("Customer Details Two: ");
	System.out.println("\nName: "+cus2.name);
	System.out.println("Age: "+cus2.age);
	System.out.println("Payment: "+cus2.payment);
	}
}