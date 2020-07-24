package entity;

public class Customer {
	private String id_customer;
	private String id_user;
	private String name_customer;
	private int numberphone;
	private String mail;
	private int money;
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(String id_customer, String id_user, String name_customer, int numberphone, String mail, int money) {
		super();
		this.id_customer = id_customer;
		this.id_user = id_user;
		this.name_customer = name_customer;
		this.numberphone = numberphone;
		this.mail = mail;
		this.money = money;
	}
	public String getId_customer() {
		return id_customer;
	}
	public void setId_customer(String id_customer) {
		this.id_customer = id_customer;
	}
	public String getId_user() {
		return id_user;
	}
	public void setId_user(String id_user) {
		this.id_user = id_user;
	}
	public String getName_customer() {
		return name_customer;
	}
	public void setName_customer(String name_customer) {
		this.name_customer = name_customer;
	}
	public int getNumberphone() {
		return numberphone;
	}
	public void setNumberphone(int numberphone) {
		this.numberphone = numberphone;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	
}
