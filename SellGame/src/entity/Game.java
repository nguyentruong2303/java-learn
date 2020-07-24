package entity;

public class Game {
 private int id_game;
 private String name;
 private int price;
 private String producer;
 private String key;
public Game() {
	super();
	// TODO Auto-generated constructor stub
}
public Game(int id_game, String name, int price, String producer) {
	super();
	this.id_game = id_game;
	this.name = name;
	this.price = price;
	this.producer = producer;
}
public String getKey() {
	return key;
}
public void setKey(String key) {
	this.key = key;
}
public Game(String key) {
	super();
	this.key = key;
}
public int getId_game() {
	return id_game;
}
public void setId_game(int id_game) {
	this.id_game = id_game;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getProducer() {
	return producer;
}
public void setProducer(String producer) {
	this.producer = producer;
}


}
