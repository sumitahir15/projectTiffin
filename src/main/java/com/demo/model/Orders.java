package com.demo.model;

import java.util.Date;

public class Orders {
		private int orderId;
		private int customerId;
		private Date orderdate;
		private double totalamount;
		private int  menuId;
		private int  quantity;
		
		private int paymentId;
		
		
		private double amount;
		private Date date;
		private String paymentStatus;
		
		public Orders() {
			super();
		}

		public Orders(int orderId, int customerId, Date orderdate, double totalamount, int menuId, int quantity,
				 int paymentId, double amount, Date date, String paymentStatus) {
			super();
			this.orderId = orderId;
			this.customerId = customerId;
			this.orderdate = orderdate;
			this.totalamount = totalamount;
			this.menuId = menuId;
			this.quantity = quantity;
			
			this.paymentId = paymentId;
			this.amount = amount;
			this.date = date;
			this.paymentStatus = paymentStatus;
		}

		public int getOrderId() {
			return orderId;
		}

		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}

		public int getCustomerId() {
			return customerId;
		}

		public void setCustomerId(int customerId) {
			this.customerId = customerId;
		}

		public Date getOrderdate() {
			return orderdate;
		}

		public void setOrderdate(Date orderdate) {
			this.orderdate = orderdate;
		}

		public double getTotalamount() {
			return totalamount;
		}

		public void setTotalamount(double totalamount) {
			this.totalamount = totalamount;
		}

		public int getMenuId() {
			return menuId;
		}

		public void setMenuId(int menuId) {
			this.menuId = menuId;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		

		public int getPaymentId() {
			return paymentId;
		}

		public void setPaymentId(int paymentId) {
			this.paymentId = paymentId;
		}

		public double getAmount() {
			return amount;
		}

		public void setAmount(double amount) {
			this.amount = amount;
		}

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}

		public String getPaymentStatus() {
			return paymentStatus;
		}

		public void setPaymentStatus(String paymentStatus) {
			this.paymentStatus = paymentStatus;
		}

		@Override
		public String toString() {
			return "Orders [orderId=" + orderId + ", customerId=" + customerId + ", orderdate=" + orderdate
					+ ", totalamount=" + totalamount + ", menuId=" + menuId + ", quantity=" + quantity + ", " +", paymentId=" + paymentId + ", amount=" + amount + ", date=" + date
					+ ", paymentStatus=" + paymentStatus + "]";
		}

}
