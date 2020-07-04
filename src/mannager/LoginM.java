package mannager;

import DB.Lesson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

import java.util.Vector;

public class LoginM extends ActionSupport implements ModelDriven<Loginbean>{
	private ManBean manBean =new ManBean();
	public ManBean getManBean() { return manBean;
}
	private Loginbean model=new Loginbean();
	  public Loginbean getModel(){return model;}
	  public String execute() throws Exception{ //重载ActionSupport类的execute方法
	    //简单的登录验证
		String id= getModel().getLoginId();
		  String pwd= getModel().getLoginPwd();
		  boolean flag = manBean.read(id,pwd);
//		  System.out.println(teacBean.getName());
	    if(flag){
	      //通过ServletActionContext辅助类直接访问session
			ServletActionContext.getRequest().getSession().setAttribute("phone", getManBean().getPhone());
			ServletActionContext.getRequest().getSession().setAttribute("name", getManBean().getName());
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


	  //get and  setter


	public void setManBean(ManBean manBean) {
		this.manBean = manBean;
	}



//	测试函数 main（）
	public static void main(String[] args) throws Exception {
		ManBean ub = new ManBean();
		ManBean bb = new ManBean();
//		ub.login();
		if (ub.read("1703001", "111aaa")) System.out.println("true");
		else System.out.println("false");
		ub.read("1703001", "111aaa");
		System.out.println(ub.getId());
		System.out.println(ub.getName());
		Vector lesson = (Vector) bb.readLesson();
		for (int i = 0; i < lesson.size(); i++) {
			Lesson order = (Lesson) lesson.elementAt(i);
			System.out.println(order.getName());
			System.out.println(order.getTime());
		}

		LoginM l=new LoginM();
		l.execute();
	}
	}