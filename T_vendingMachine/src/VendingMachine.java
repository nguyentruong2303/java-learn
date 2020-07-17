import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class VendingMachine {

	
	static Scanner scan = new Scanner(System.in);
//	public static void inputMoney (int *a){
//		
//	}
	public static  void checkMoney(int a) {
		String checkString;
	
		int arr[] = {1000,500,400,100,900};
		for(int i = 0 ;i < arr.length; i++ ) {
			if(a < arr[i]) {
//				System.out.println(a);
				System.out.println("You need input more money. Please input Y/N");

				checkString = scan.next();
				if(checkString.equals("Y")) {
					
				}
		}	
			checkString = scan.next();
			if(checkString.equals("N") ){
					System.out.println("GoodBye");				
				}				
					
		
		System.out.println("Please choose your product");
	}
		}

	public static void main(String[] args) {
		int a;
		do {
			System.out.println("Please input your money");
			a = scan.nextInt();
		}while(a<0);
		
		List <String> listProduct = new ArrayList<>();
		listProduct.add("CoCa");
		listProduct.add("Pepsi");
		listProduct.add("Beer");
		listProduct.add("Coffee");
		listProduct.add("Juice");

	
		checkMoney(a);
		}
	
}