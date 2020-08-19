class car{
	String name;
	String model;
	String Transmission;
	int year;
	
}
public class carDemo {
	public static void main(String[] args) {
		car ca = new car();
		ca.name="Toyota";
		ca.model="Four Wheel";
		ca.Transmission="Dual";
		ca.year=2017;
		
		System.out.println("Car Details");
		System.out.println("Name: "+ca.name);
		System.out.println("Model: "+ca.model);
		System.out.println("Transmission: "+ca.Transmission);
		System.out.println("Year: "+ca.year);

}
}
