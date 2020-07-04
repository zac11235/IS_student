package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

//课程号 名字 地点，老师，时间
public class Xuanke {
    private String l_id;//课程号
    private String lesName;  //课程名字
    private String place;   //上课地点
    private String teacher;//任课老师
    private String time;//上课时间
    private String score;//课程成绩
    private String rank;//课程排名


    public Xuanke() {
    }


    public String getL_id() {
        return l_id;
    }

    public void setL_id(String l_id) {
        this.l_id = l_id;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getLesName() {
        return lesName;
    }

    public void setLesName(String lesName) {
        this.lesName = lesName;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }


    public Vector<Xuanke> readLesson(String st_Id) throws SQLException {
        {
            Vector<Xuanke> lessons = new Vector<Xuanke>(100, 100);
            int teacher_id=0;
            try {
                Connection conn=Datab.getcon();
                String sql = "select * from xuanke where id=?";
                PreparedStatement pr=conn.prepareStatement(sql);
                pr.setString(1,st_Id);
                ResultSet rs = pr.executeQuery();
                while (rs.next()) {
                    //该学生选课的所有记录
                    Xuanke ls = new Xuanke(); //创建了不同对象
                    //不循环则只创建了一个对象
                    l_id=Integer.toString(rs.getInt(2));
                    ls.setL_id(l_id);
                    score=Integer.toString(rs.getInt(3));
                    ls.setScore(score);
                    rank=Integer.toString(rs.getInt(4));
                    ls.setRank(rank);
                    String sql2 = "select * from lesson where id=?";
                    PreparedStatement pr2=conn.prepareStatement(sql2);
                    pr2.setString(1, l_id);
                    ResultSet rs2 = pr2.executeQuery();
                    while (rs2.next()){
                        lesName=rs2.getString(2);
                        place=rs2.getString(3);
                        teacher_id=rs2.getInt(4);
                        time=rs2.getString(5);
                        ls.setLesName(lesName);
                        ls.setPlace(place);
                        ls.setTime(time);
                    }
                    pr2.close();
                    rs2.close();

                    String sql3 = "select name from teacher where id=?";
                    PreparedStatement pr3=conn.prepareStatement(sql3);
                    pr3.setInt(1,teacher_id);
                    ResultSet rs3 = pr3.executeQuery();
                    while (rs3.next()){
                        teacher=rs3.getString(1);
                        ls.setTeacher(teacher);
                    }
                    lessons.add(ls);    //放入但始终只是一个对象 也一直在变幻同一个对象
                    pr3.close();
                    rs3.close();

                }
                conn.close();
                pr.close();
                rs.close();

            } catch (SQLException sqlException) {
                sqlException.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return lessons;

        }
    }
}
