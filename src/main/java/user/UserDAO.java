package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    public PreparedStatement pstmt;
    public ResultSet rs;

    private static String url = "jdbc:mysql://localhost:3306/proj1";
    private static String user = "root";
    private static String password = "Gosemvhs1!";


    public int addUser(UserDTO DTO){
        int insertCount = 0;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (Exception e){
            e.printStackTrace();
        }
        String sql = "Insert into user(name1,year1,ss,phone_number) values(?,?,?,?)";
        try(Connection conn = DriverManager.getConnection(url,user,password);
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, DTO.getName());
            ps.setString(2, DTO.getYear());
            ps.setString(3, DTO.getSs());
            ps.setString(4, DTO.getPhone_number());
            insertCount = ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return insertCount;
    }

}
