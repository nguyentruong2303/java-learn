package repository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.ConnectSQL;
import entity.User;

public class UserRepositoryImpl implements UserRepository {
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	public UserRepositoryImpl() {
		super();
		// TODO Auto-generated constructor stub
	}
	private Connection getConnection() throws SQLException{
		Connection conn;
		conn = ConnectSQL.getInstance().getConnection();
		return conn;
	}

	@Override
	public void update(){
		User us = new User();
		String sql = "update user set username=?"+"password=? where id=?";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1,us.getUsername());
			ptmt.setString(2,us.getPassword());
			ptmt.setString(3,us.getId());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {	
				try {
					if( ptmt !=null) {
					ptmt.close();
					} 
					if( connection !=null ) {
						connection.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}catch (Exception e) {
					e.printStackTrace();
					// TODO: handle exception
				}
			}
		
	}
	@Override
	public void delete() {
		User us = new User();
		String sql = "delete from user where id=? ";

		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1, us.getId());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if( ptmt !=null) {
					ptmt.close();
				} if(connection !=null) {
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
	
}
