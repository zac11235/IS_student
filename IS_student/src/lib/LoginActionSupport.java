package lib;
import com.opensymphony.xwork2.*;
import org.apache.struts2.*;
public class LoginActionSupport extends ActionSupport{
	  private String loginName;  //登录账号
	  private String loginPwd;   //登录密码
	  public String getLoginName(){return loginName;}
	  public void setLoginName(String loginName){this.loginName=loginName;}
	  public String getLoginPwd(){return loginPwd;}
	  public void setLoginPwd (String loginPwd){this.loginPwd=loginPwd;}

	  public String execute() throws Exception{ //重载ActionSupport类的execute方法
	    //简单的登录验证
	    if(loginName.equalsIgnoreCase("admin")&&loginPwd.equalsIgnoreCase("12345")){  
	      //通过ServletActionContext辅助类直接访问session
	      ServletActionContext.getRequest().getSession().setAttribute("logined",loginName);
	      return SUCCESS; //登录成功
	    }else {addFieldError("loginName","账户或密码错误");
	    	return LOGIN;  //重新登录
	  }
	  }
	  public void validate (){ //重载ActionSupport类的validate方法
	    if(loginName==null||loginName.trim().length()<1)
	      addFieldError("loginName","登录账号不能为空！");
	    if(loginPwd==null||loginPwd.trim().length()<1)
	      addFieldError("loginPwd","登录密码不能为空");
	  }
	}