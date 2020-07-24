package entity;

public class ReceiptEntity {
	private String id;
	private String name_customer;
	private String id_customer;
	private String phone_customer;
	private String id_game;
	private String name_game;
	private int price;
	private String producer;
	private double total;
	
	
	public ReceiptEntity() {
		super();
	}
	public ReceiptEntity(String id, String name_customer, String id_customer, String phone_customer, String id_game,
			String name_game, int price, String producer, double total) {
		super();
		this.id = id;
		this.name_customer = name_customer;
		this.id_customer = id_customer;
		this.phone_customer = phone_customer;
		this.id_game = id_game;
		this.name_game = name_game;
		this.price = price;
		this.producer = producer;
		this.total = total;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName_customer() {
		return name_customer;
	}
	public void setName_customer(String name_customer) {
		this.name_customer = name_customer;
	}
	public String getId_customer() {
		return id_customer;
	}
	public void setId_customer(String id_customer) {
		this.id_customer = id_customer;
	}
	public String getPhone_customer() {
		return phone_customer;
	}
	public void setPhone_customer(String phone_customer) {
		this.phone_customer = phone_customer;
	}
	public String getId_game() {
		return id_game;
	}
	public void setId_game(String id_game) {
		this.id_game = id_game;
	}
	public String getName_game() {
		return name_game;
	}
	public void setName_game(String name_game) {
		this.name_game = name_game;
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
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
}
