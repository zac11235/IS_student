package teacher;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import teacher.Teacher;

public class LoginT extends ActionSupport implements ModelDriven<Teacher>{
	TeacBean teacBean=new TeacBean();
	  private Teacher model=new Teacher();
	  public Teacher getModel(){return model;}
	  public String execute() throws Exception{ //重载ActionSupport类的execute方法
	    //简单的登录验证
		String id= getModel().getLoginId();
		  String pwd= getModel().getLoginPwd();
		  boolean flag = teacBean.read(id,pwd);
	    if(flag){
	      //通过ServletActionContext辅助类直接访问session
	      ServletActionContext.getRequest().getSession().setAttribute("logined", getModel().getLoginId());
	      return SUCCESS; //登录成功
	    }else  return INPUT;  //重新登录
	  }
	  @Override
	  public void validate(){ //重载ActionSupport类的validate方法
	    if(getModel().getLoginId()==null|| getModel().getLoginId().trim().length()<1)
	      addFieldError("loginName","登录账号不能为空！");	      
	    if(getModel().getLoginPwd()==null|| getModel().getLoginPwd().trim().length()<4) 
	      addFieldError("loginPwd","登录密码必须有4位以上！");
	  
	  }
	}