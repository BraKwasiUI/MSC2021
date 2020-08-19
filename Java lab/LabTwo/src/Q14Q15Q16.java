
public class Q14Q15Q16 {
	public static void main(String[] args) {
		
		//Q1  
		System.out.println(args[0]);
		
		//Q3
		String s="200";  
		int n=Integer.parseInt(s); 
		System.out.println(n);
		
		//Q4
		int f=Integer.parseInt(args[1]);
		System.out.println(f+f);
		
		
		//Q13
		 System.out.println("Public Notice :" +args[0]);
		//Q14
		int a,b,c;
        a=Integer.parseInt(args[0]);
        b=Integer.parseInt(args[1]);

        c=a+b;
        System.out.println("sum of " + a + " and " + b +" is " +c);
		
      //Q15
        int i,j;
        i=Integer.parseInt(args[0]);
        j=Integer.parseInt(args[1]);

        if (i>j) {
        System.out.println("I is the largest ");
        }
        else {
            System.out.println("J is the largest ");		
        }
        
      //Q16
        System.out.println("Welcome " +args[0]);
      
      //Q22
        int q=10;
        System.out.println(q>3);
        System.out.println(q<9);
        
	}
}
