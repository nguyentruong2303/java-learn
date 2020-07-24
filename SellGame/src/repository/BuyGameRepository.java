package repository;

import java.util.ArrayList;
import java.util.List;

import entity.Game;

public class BuyGameRepository {
	
 public void selectGame() {
	 System.out.println("Please select game");
		GameRepository gameRepo = new GameRepositoryImpl();
		List<Game> ls = new ArrayList();
		ls = gameRepo.infoGame();
		for (int i = 0; i < ls.size(); i++) {
			System.out.print(ls.get(i).getId_game()+"."+" ");
			System.out.print(ls.get(i).getName()+" ");
			System.out.print(ls.get(i).getPrice()+" "+" ");
			System.out.println(ls.get(i).getProducer()+" ");
 }}
}
