package com.ivs.Model;

public class Admin {
		private int id;
		private String userName;
		private String passWord;
		private String tenUser;
		private boolean quyen;
		
		
		
		public Admin(int id, String userName, String passWord, String tenUser, boolean quyen) {
			super();
			this.id = id;
			this.userName = userName;
			this.passWord = passWord;
			this.tenUser = tenUser;
			this.quyen = quyen;
		}
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassWord() {
			return passWord;
		}
		public void setPassWord(String passWord) {
			this.passWord = passWord;
		}
		public String getTenUser() {
			return tenUser;
		}
		public void setTenUser(String tenUser) {
			this.tenUser = tenUser;
		}

		public boolean isQuyen() {
			return quyen;
		}

		public void setQuyen(boolean quyen) {
			this.quyen = quyen;
		}
	
		
		
		
}
