package com.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.demo.model.Orders;
import com.demo.model.Payment;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	JdbcTemplate jdbcTemplate;
	
private class OrderRowMapper implements RowMapper<Orders> {
		
		public Orders mapRow(ResultSet rs, int rowNum) throws SQLException {
			Orders o = new Orders();
			o.setOrderId(rs.getInt(1));
			o.setCustomerId(rs.getInt(2));
			o.setOrderdate(rs.getDate(3));
			o.setTotalamount(rs.getDouble(4));
			o.setMenuId(rs.getInt(5));
			o.setQuantity(rs.getInt(6));
			o.setPaymentId(rs.getInt(7));
			o.setDate(rs.getDate(8));
			o.setPaymentStatus(rs.getString(9));
			
			return o;
		}

	
}

@Override
public int saveOrder(int ordId, Object custId, double amt, Object menuId, int qty) {
	String sql="insert into orders values(?,?,?,?,?,?)";
	Date date=new Date();
	return jdbcTemplate.update(sql,new Object[] {ordId,custId,date,amt,menuId,qty});
}

@Override
public int savePayment(String tXNID, String oRDERID, String tXNAMOUNT, String sTATUS) {
	String sql="insert into payment values(?,?,?,?,?)";
	Date date=new Date();
	return jdbcTemplate.update(sql,new Object[] {tXNID,oRDERID,tXNAMOUNT,date,sTATUS});
}

@Override
public List<Orders> getAllOrders() {
	String sql="select orders.order_id,orders.customer_id,orders.order_date,orders.total_amount,orders.menu_id,orders.quantity ,payment.payment_id,payment.date,payment.payment_status from orders,payment where orders.order_id=payment.order_id";
	return jdbcTemplate.query(sql,new OrderRowMapper());
}

@Override
public int deleteOrder(int orderId) {
	String sql="delete from orders where order_id=?";
	return jdbcTemplate.update(sql,new Object[] {orderId});
	
}


}
