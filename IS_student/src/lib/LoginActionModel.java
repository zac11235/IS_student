package lib;
import com.opensymphony.xwork2.*;
import org.apache.struts2.*;
public class LoginActionModel extends ActionSupport implements ModelDriven<Admin>{
	  private Admin model=new Admin();
	  public Admin getModel(){return model;}
	  public String execute() throws Exception{ //重载ActionSupport类的execute方法
	    //简单的登录验证
	    if(getModel().getLoginName().equalsIgnoreCase("admin")&& getModel().getLoginPwd().equalsIgnoreCase("12345")){  
	      //通过ServletActionContext辅助类直接访问session
	      ServletActionContext.getRequest().getSession().setAttribute("logined", getModel().getLoginName());
	      return SUCCESS; //登录成功
	    }else  return INPUT;  //重新登录
	  }
	  @Override
	  public void validate(){ //重载ActionSupport类的validate方法
	    if(getModel().getLoginName()==null|| getModel().getLoginName().trim().length()<1) 
	      addFieldError("loginName","登录账号不能为空！");	      
	    if(getModel().getLoginPwd()==null|| getModel().getLoginPwd().trim().length()<4) 
	      addFieldError("loginPwd","登录密码必须有4位以上！");
	  
	  }
	}