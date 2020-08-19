
public class carDemo2 {
	public static void main(String[] args) {
		car ca = new car();
		
		ca.name="Toyota";
		ca.model="Four Wheel";
		ca.Transmission="Dual";
		ca.year=2017;
		
		car ca2 = new car();
		ca2.name="Benz";
		ca2.model="Salon";
		ca2.Transmission="Automatic";
		ca2.year=2018;
		
		System.out.println("Car Details");
		System.out.println("Name: "+ca.name);
		System.out.println("Model: "+ca.model);
		System.out.println("Transmitionion: "+ca.Transmission);
		System.out.println("Year: "+ca.year);

		System.out.println("\nCar 2 Details");
		System.out.println("Name: "+ca2.name);
		System.out.println("Model: "+ca2.model);
		System.out.println("Transmission: "+ca2.Transmission);
		System.out.println("Year: "+ca2.year);
}
}
