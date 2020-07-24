package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import config.ConnectSQL;
import entity.ReceiptEntity;

public class ReceiptRepositoryImpl implements ReceiptRepository {
	private Connection connection = null;
	private PreparedStatement ptmt = null;
	private ResultSet rs = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn = null;
		conn = ConnectSQL.getInstance().getConnection();
		return conn;
	}

	@Override
	public void add(ReceiptEntity repEntity) {
		String sql = "INSERT INTO "+
	"receipt(name_customer,id_customer,phone_customer,id_game,name_game,price,producer,total)";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1, repEntity.getName_customer());
			ptmt.setString(2, repEntity.getId_customer());
			ptmt.setString(3, repEntity.getPhone_customer());
			ptmt.setString(4, repEntity.getId_game());
			ptmt.setString(5, repEntity.getName_game());
			ptmt.setInt(6, repEntity.getPrice());
			ptmt.setString(7, repEntity.getProducer());
			ptmt.setDouble(8, repEntity.getTotal());
			ptmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(ptmt!= null) {
					ptmt.close();
				}
				if(connection!= null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				// TODO: handle exception
			}catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
	}

	@Override
	public void update(ReceiptEntity repEntity) {
		String sql = "UPDATE receipt set name_customer=?"+"id_customer=?"+
	"phone_customer=?"+"id_game=?"+"name_game=?"+"price=?"+"producer=?"+"total=? where id=?";
	try {
		connection = getConnection();
		ptmt = connection.prepareStatement(sql);
		ptmt.setString(1, repEntity.getName_customer());
		ptmt.setString(2, repEntity.getId_customer());
		ptmt.setString(3, repEntity.getPhone_customer());
		ptmt.setString(4, repEntity.getId_game());
		ptmt.setString(5, repEntity.getName_game());
		ptmt.setInt(6, repEntity.getPrice());
		ptmt.setDouble(7, repEntity.getTotal());
		ptmt.setString(8, repEntity.getId());
		ptmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		try {
			if( ptmt!= null) {
				ptmt.close();
			}
			if(connection!=null) {
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
	public void delete(String id) {
		String sql = "delete from receipt where id=?";
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setString(1, id);
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
				e.printStackTrace();
				// TODO: handle exception
			} catch (Exception e) {
				e.printStackTrace();
				// TODO: handle exception
			}
		}
		
	}

	@Override
	public List<ReceiptEntity> printReceipt() {
		// TODO Auto-generated method stub
		return null;
	}

}
