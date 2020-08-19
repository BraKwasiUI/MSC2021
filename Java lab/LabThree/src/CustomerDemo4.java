class customerGoods{
	String name,item1,item2;
	int age;
	double payment,totalprice,item1p,item2p;
	
void details() {
	System.out.println("Customer Details One: ");
	System.out.println(name);
	System.out.println(age);
	System.out.println(item1);
	System.out.println(item2);
}
Double total() {
	totalprice=item1p+item2p;
	return totalprice;}}

public class CustomerDemo4 {
public static void main(String[] args) {
		
	double t;
		customerGoods cus = new customerGoods();
		cus.name="Jesse";
		cus.age=20;
		cus.item1="Tomatoes";
		cus.item2="Fish";
		cus.item1p=50.50;
		cus.item2p=60.5;

cus.details();
t=cus.total();
System.out.println("Total Purchase: "+t);
}
}