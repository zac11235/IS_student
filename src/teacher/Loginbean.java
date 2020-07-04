package teacher;
class Loginbean {
	public Loginbean(){

	}
	private String loginId;  //登录账号
	  private String loginPwd;   //登录密码
	  //public Admin(){}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPwd(){return loginPwd;}
	  public void setLoginPwd (String loginPwd){this.loginPwd=loginPwd;}
}
