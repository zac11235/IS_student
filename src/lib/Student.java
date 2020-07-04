package lib;
 public class Student {
	private String id;//学生学号
	private String loginName;  //登录学生姓名
	private int sclass;//学生班级
	private String loginPwd;   //登录密码
	private String record;// 学生奖惩记录
	public Student(){}
	  public String getLoginName(){return loginName;}
	  public void setLoginName(String loginName){this.loginName=loginName;}

	  public String getId(){return id;}
	  public void setId(String id){this.id=id;}

	public int getSclass(){return sclass;}
	public void setSclass(int sclass){this.sclass=sclass;}

	public String getRecord(){return record;}
	public void setRecord(String record){this.record=record;}

	  public String getLoginPwd(){return loginPwd;}
	  public void setLoginPwd (String loginPwd){this.loginPwd=loginPwd;}
}
