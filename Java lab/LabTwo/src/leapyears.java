public class leapyears {	
static boolean isleap(int y) {
		if ((y%400== 0)) {
			return true;
		}
		else if (y%100== 0) {
			return false;
			}
		else if (y%4== 0) {
			return true;
			}
		else {
		return false;	
}		
}
	public static void main(String arg[]) {
		 
int n=2020;
		int i;
		for (i=1980; i<=n; i++) {
			 if(isleap(i)) {
				 
				 System.out.print(i+" ");				 
			 }
		}		
}
}
