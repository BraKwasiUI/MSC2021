class carinfo{
	String name;
	String model;
	String Transmission;
	int year;
	
void cardetails() {

	System.out.println("Car Details");
	System.out.println("Name: "+name);
	System.out.println("Model: "+model);
	System.out.println("Transmission: "+Transmission);
	System.out.println("Year: "+year);

}
}
public class carDemo3 {
	public static void main(String[] args) {
		carinfo ca = new carinfo();
		
		ca.name="Toyota";
		ca.model="Four Wheel";
		ca.Transmission="Dual";
		ca.year=2017;		
		ca.cardetails();
}
}