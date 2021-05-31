package com.demo.model;



	
	public class Vendor {
		
		private int id;
		private String name;
		private String mobile;
		private String address;
		private String email;
		private String username;
		private String password;
		public Vendor() {
			super();
		}
		public Vendor(int id, String name, String mobile, String address, String email, String username,
				String password) {
			super();
			this.id = id;
			this.name = name;
			this.mobile = mobile;
			this.address = address;
			this.email = email;
			this.username = username;
			this.password = password;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
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
		@Override
		public String toString() {
			return "Vendor [id=" + id + ", name=" + name + ", mobile=" + mobile + ", address=" + address + ", email="
					+ email + ", username=" + username + ", password=" + password + "]";
		}
		
		
			}

