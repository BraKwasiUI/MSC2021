class carinfo1{
	String name;
	String model;
	String Transmission;
	int year;
	double rentprice,totalrent;
	int days;
	
	void rentdetails() {
		System.out.println("Car Rent Details");
		System.out.println("Name: "+name);
		System.out.println("Model: "+model);
		System.out.println("Transmission: "+Transmission);
		System.out.println("Year: "+year);
		System.out.println("Days: "+days);
		System.out.println("Rent Per day: "+rentprice);
	}
	
	Double total() {
		totalrent=rentprice*days;
		return totalrent;}}
	
	
public class carDemo4 {
	
	public static void main(String[] args) {
		
		double t;
		carinfo1 ca = new carinfo1();
		ca.name="Toyota";
		ca.model="Four Wheel";
		ca.Transmission="Dual";
		ca.year=2017;
		ca.days=10;
		ca.rentprice=100.50;
		
		ca.rentdetails();
		t=ca.total();
		System.out.println("Total Rent: "+t);
		
	
	
	}
}
