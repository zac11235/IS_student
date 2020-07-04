package mannager;

import DB.Datab;
import DB.Lesson;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

public class ManBean extends Datab {
    private String id;
    private String password;
    private String name;
    private String phone;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String deot) {
        this.phone = deot;
    }


    public ManBean() {
//          id=null;
//          password=null ;
//          name=null;
//    dept=null;
//    office=null;
    }

    public boolean read(String id1, String password1) {
        try {
            Connection conn = getcon();
            String sql = "select * from admin where id=?";
            PreparedStatement pStmt = conn.prepareStatement(sql);
            pStmt.setString(1, id1);
            ResultSet rs = pStmt.executeQuery();
            if (!rs.next()) {
                return false;
            } else if (password1.equalsIgnoreCase(rs.getString("password").trim())) {
                setId(id1);
                this.password = rs.getString("password").trim();
                name = rs.getString("name").trim();
                phone = rs.getString("phone");
                return true;
            } else return false;
        } catch (Exception e) {
            return false;
        }
    }


    public Vector<Lesson> readLesson( ) throws SQLException {
        {
            Vector<Lesson> lessons = new Vector<Lesson>(100, 100);
            try {

                Connection conn = getcon();
                String sql = "select * from lesson where teacher_id=?";
                PreparedStatement pStmt = conn.prepareStatement(sql);
                pStmt.setString(1, "1703001");
                ResultSet rs = pStmt.executeQuery();
                while (rs.next()) {
                    //从当前记录中读取各字段的
                    Lesson ls = new Lesson(); //创建了不同对象
                    //不循环则只创建了一个对象	    		   	    	
                    String id = rs.getString(1).trim();
                    String name = rs.getString(2).trim();
                    String place = rs.getString(3).trim();
                    String teacher_id = rs.getString(4).trim();
                    String time = rs.getString(5).trim();

                    System.out.println(id);
                    ls.setName(id);
                    System.out.println(ls.getName());

                    ls.setId(id);
                    ls.setName(name);
                    ls.setPlace(place);
                    ls.setTeacher_id(teacher_id);
                    ls.setTime(time);
                    lessons.add(ls);    //放入但始终只是一个对象 也一直在变幻同一个对象
                }

            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return lessons;

        }
    }

    @Override
    public String delete(String x) {
        return super.delete(x);
    }

    @Override
    public String add(Object x) {
        return super.add(x);
    }

    @Override
    public String update(Object x) {
        return super.update(x);
    }

    //测试号成功,bean的使用存在问题。bean对象在类中创建能直接被jsp网页读取吗？
//    public static void main(String[] args) throws SQLException {
//        TeacBean ub = new TeacBean();
//        TeacBean bb = new TeacBean();
////		ub.login();
//        if (ub.read("1703001", "111aaa")) System.out.println("true");
//        else System.out.println("false");
//        ub.read("1703001", "111aaa");
//        System.out.println(ub.getId());
//        System.out.println(ub.getName());
//        Vector lesson = (Vector) bb.readLesson();
//        for (int i = 0; i < lesson.size(); i++) {
//            Lesson order = (Lesson) lesson.elementAt(i);
//            System.out.println(order.getName());
//            System.out.println(order.getTime());
//        }
//    }
}
