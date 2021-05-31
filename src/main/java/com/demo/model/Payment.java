package com.demo.model;

import java.util.Date;

public class Payment {
	private int Payment_ID;
	private int Order_ID;
	
	private double amount;
	private Date date;
	private String Payment_Status;
	
	public Payment() {
		super();
	}

	public Payment(int payment_ID, int order_ID, double amount, Date date, String payment_Status) {
		super();
		Payment_ID = payment_ID;
		Order_ID = order_ID;
		this.amount = amount;
		this.date = date;
		Payment_Status = payment_Status;
	}

	public int getPayment_ID() {
		return Payment_ID;
	}

	public void setPayment_ID(int payment_ID) {
		Payment_ID = payment_ID;
	}

	public int getOrder_ID() {
		return Order_ID;
	}

	public void setOrder_ID(int order_ID) {
		Order_ID = order_ID;
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

	public String getPayment_Status() {
		return Payment_Status;
	}

	public void setPayment_Status(String payment_Status) {
		Payment_Status = payment_Status;
	}

	@Override
	public String toString() {
		return "Payment [Payment_ID=" + Payment_ID + ", Order_ID=" + Order_ID + ", amount=" + amount + ", date=" + date
				+ ", Payment_Status=" + Payment_Status + "]";
	}
	
	
	
}
