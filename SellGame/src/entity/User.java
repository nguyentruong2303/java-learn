package entity;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class User   {
	private String id;
	private String username;
	private String password;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;

	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}



	public void signIn() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Username: ");
		String user = sc.next();
		System.out.println("Password: ");
		String password = sc.next();
		try {
			if(true) {
				String driverClassName = "org.mariadb.jdbc.Driver";
				String connectionUrl = "jdbc:mariadb://localhost:3306/sellgame";
				 String dbUser = "root";
				 String dbPwd = "123123";
				 Connection  conn = null;
				 conn = DriverManager.getConnection(connectionUrl,dbUser,dbPwd);
				String sql = "SELECT * FROM user WHERE username=? AND password = ?";
				PreparedStatement psm = conn.prepareStatement(sql);
				psm.setString(1, user);
				psm.setString(2, password);
				ResultSet rs = psm.executeQuery();
				if(rs.next()) {
					System.out.println("Login successful");
				}else {
					System.out.println("Login error");
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			//System.out.println("Connected error");
		}
	}
	public void signUp() {
		Scanner sc = new Scanner(System.in);
		System.out.println("Username: ");
		 String user = sc.next();
		System.out.println("Password: ");
		 String password = sc.next();
		 try {
			if(true) {
				String driverClassName = "org.mariadb.jdbc.Driver";
				String connectionUrl = "jdbc:mariadb://localhost:3306/sellgame";
				 String dbUser = "root";
				 String dbPwd = "123123";
				 Connection  conn = null;
				 conn = DriverManager.getConnection(connectionUrl,dbUser,dbPwd);
				 String sql = "INSERT INTO "+" user(username,password) "+" VALUES(?,?) ";
				 PreparedStatement psm = conn.prepareStatement(sql);
				 psm.setString(1, user);
				 psm.setString(2, password);
				 ResultSet rs = psm.executeQuery();
				 if(rs.next()) {
					 System.out.println("sign up successful");
				 }else {
					 System.out.println("sign up successful");
					 
				 }
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
