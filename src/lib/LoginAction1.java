package lib;
import com.opensymphony.xwork2.*;
import org.apache.struts2.ServletActionContext;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static DB.Datab.getcon;

public class LoginAction1 extends ActionSupport implements ModelDriven<Student>{
  private Student model=new Student();
  public Student getModel(){return model;}
  public String execute() throws Exception{ //重载ActionSupport类的execute方法
    //登录验证
    Connection conn = getcon();
    String sql = "select * from student where id=? and password =?";
    PreparedStatement pr=conn.prepareStatement(sql);
    pr.setString(1,getModel().getId());
    pr.setString(2,getModel().getLoginPwd());
    ResultSet rs = pr.executeQuery();
    //登录验证
    if(rs.next()){
      model.setId(Integer.toString(rs.getInt(1)));
      model.setLoginName(rs.getString(3));
      model.setSclass(rs.getInt(4));
      model.setRecord(rs.getString(5));
      ServletActionContext.getRequest().getSession().setAttribute("student",model);
      return SUCCESS; //登录成功
    }else{
      System.out.println("no");
      addFieldError("model.id","学号或密码不正确！");
      return INPUT;  //重新登录
    }
  }
}
