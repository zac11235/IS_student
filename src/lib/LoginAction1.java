package lib;
import com.opensymphony.xwork2.*;
public class LoginAction1 implements Action{
  private String loginName;  //登录账号
  private String loginPwd;   //登录密码
  public String getLoginName(){return loginName;}
  public void setLoginName(String loginName){this.loginName=loginName;}
  public String getLoginPwd(){return loginPwd;}
  public void setLoginPwd (String loginPwd){this.loginPwd=loginPwd;}
  public String execute() throws Exception{ //Action接口的execute方法实现
    //简单的登录验证
    if(loginName!=null&&loginName.equalsIgnoreCase("admin")&&loginPwd!=null&& loginPwd.equalsIgnoreCase("admin")){
      ActionContext ctx=ActionContext.getContext();//通过ActionContext辅助类访问session
      ctx.getSession().put("logined",loginName);
      return SUCCESS; //登录成功
    }else  return LOGIN;  //重新登录
  }
}