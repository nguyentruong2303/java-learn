package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.ConnectSQL;
import entity.Customer;

public class CustomerRepositoryImpl implements CustomerRepository {
	private  Connection connection = null;
	private PreparedStatement ptmt = null;
	private ResultSet rs = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn =null;
		conn = ConnectSQL.getInstance().getConnection();
		return conn;
		
	}
	

	@Override
	public List<Customer> findAll() {
		List<Customer> lscus = new ArrayList();
		String sql = "select * from customer";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);					
			rs = ptmt.executeQuery();
			while(rs.next()) {
				Customer cus = new Customer();
				cus.setId_customer(rs.getString(1));			
				cus.setId_user(rs.getString(2));			
				cus.setName_customer(rs.getString("name_customer"));
				cus.setNumberphone(rs.getInt(4));			
				cus.setMail(rs.getString("mail"));
				cus.setMoney(rs.getInt(6));		
	
				lscus.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ptmt != null) {
					ptmt.close();
				}
				if(connection != null) {
					connection.close();
				}
				if(rs !=null) {
					rs.close();
				}
			} catch (SQLException e) {
				// TODO: handle exception
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return lscus;
	}

	@Override
	public Customer findById(String id_customer) {
//		List<Customer> lsCusById = new ArrayList();
//		String sql = "select * from customer where id_customer=?";
//		try {
//			connection = getConnection();
//			ptmt = connection.prepareStatement(sql);
//			rs = ptmt.executeQuery();
//			while(rs.next()) {
//			Customer cus = new Customer();
//			
//			cus.setId_user(rs.getString(2));
//			cus.setName_customer(rs.getString("name_customer"));
//			cus.setNumberphone(rs.getInt(4));
//			cus.setMail(rs.getString("mail"));
//			cus.setMoney(rs.getInt(6));
//			lsCusById.add(cus);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally {
//			try {
//				if(ptmt != null) {
//					ptmt.close();
//				}
//				if(connection !=null) {
//					connection.close();
//				}
//				if(rs!= null) {
//					rs.close();
//				}
//			} catch (SQLException e) {
//				// TODO: handle exception
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//		}
		return null;
	}

	@Override
	public void update(Customer cus) {
		//Customer cus = new Customer();
		String sql = "update customer set id_user=?"+
	"name_customer=?"+"numberphone=?"+"mail=?"+"money=? where id_customer=?";
		try {
			
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			
			ptmt.setString(1,cus.getId_user());
			ptmt.setString(2,cus.getName_customer());
			ptmt.setInt(3, cus.getNumberphone());
			ptmt.setString(4, cus.getMail());
			ptmt.setInt(5,cus.getMoney());
			ptmt.setString(6, cus.getId_customer());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ptmt!= null) {
					ptmt.close();
				}
				if(connection != null) {
					connection.close();
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}

	}

	@Override
	public void delete(String id_customer) {
		String sql = "delete from customer where id_customer=?";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1,id_customer);
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ptmt!= null) {
					ptmt.close();
				}
				if(connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
		
	}


	@Override
	public void add(Customer cus) {
		String sql = "INSERT INTO "+"customer(id_user,name_customer,numberphone,mail,money)"
	+"VALUES(?,?,?,?,?)";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1, cus.getId_user());
			ptmt.setString(2, cus.getName_customer());
			ptmt.setInt(3, cus.getNumberphone());
			ptmt.setString(4, cus.getMail());
			ptmt.setInt(5, cus.getMoney());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ptmt!=null) {
					ptmt.close();
				}
				if(connection!=null) {
					connection.close();
				}
			} catch (SQLException e) {
				// TODO: handle exception
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
	}

}
