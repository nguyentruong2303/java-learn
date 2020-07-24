import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import entity.Game;
import repository.BuyGameRepository;
import repository.GameRepository;
import repository.GameRepositoryImpl;



public class main {
	 static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		BuyGameRepository buyGameRep = new BuyGameRepository();
		buyGameRep.selectGame();
			//System.out.println(ls.get(2).getKey());
		//}
//		CustomerRepository cusRepository = new CustomerRepositoryImpl();
//		Customer cus = new Customer();
//		 
//	User us = new User();
//			UserRepository ur = new UserRepositoryImpl();
//			CustomerRepository cusRe = new CustomerRepositoryImpl();
//			List<Customer> lcus = new ArrayList();
//			lcus = cusRe.findAll();
//			for (int i = 0; i < lcus.size(); i++) {
//				System.out.println(lcus.get(i).getName_customer());
//			}
//			System.out.println("please input id");
//			us.setPassword("123");
//			ur.update();
//			ur.delete();
//		 System.out.println("Please select 1.sign in 2. sign up");
//		 int key =sc.nextInt();
//		switch (key) {
//		case 1:
//			us.signIn();
//			break;
//		case 2:		
//			 us.signUp();
//			 System.out.println("Do you want sign in?");
//			 String answer = sc.next();
//			 if(answer.equals("Y")) {
//				 us.signIn();
//			 }if (answer.equals("N")){
//				 System.out.println("Goodbye");
//			 }
//			break;
//		}
	//	cusRepository.delete("3");
//		infoGame igame = new infoGame();
//		 igame.setName("addad");
//		 igame.setPrice(500);
//		Dao_game dgame= new Dao_game();
//		dgame.add(igame);
	}


	

}
