import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Calculator_method {
	static Scanner scan  =new Scanner(System.in); 
	static List <String> listOperation = new ArrayList<>();
	static int a,b;
	
	
	static void operation() {
		listOperation.add("+");
		listOperation.add("-");
		listOperation.add("*");
		listOperation.add("/");
		for (int i = 0; i < listOperation.size(); i++) {
			System.out.print(listOperation.get(i)+"   ");
		}

	}
	static void sum(int a, int b) {
		System.out.println(a+b);
	}
	static void minus (int a, int b) {
		System.out.println(a-b);
	}
	static void multiply(int a, int b) {
		System.out.println(a*b);
	}
	static float divide (int a, int b) {
		System.out.println(a/b);
		return (a/b);
	}
 public static void main(String[] args) {
	do {
		System.out.println("input a:");
		a = scan.nextInt();
	}while(a<0);
//	System.out.println(a);
	System.out.println("Please select Operations");
	
	operation();
	String op = scan.next();
	do {
		System.out.println(" ");
		System.out.println("input b");
		b = scan.nextInt();
	}while(b<0);

	if(op.equals("+")) {
		sum(a,b);
	}
	else if(op.equals("-")) {
		minus(a, b);
	}
	else if(op.equals("*")) {
		multiply(a, b);
	}
	else if(op.equals("/")) {
		divide(a, b);
	}
//	sum(a,b);
//	minus(a, b);
//	multiply(a, b);
//	divide(a, b);
	
}
}
