package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<UserDTO> searchID(UserDTO DTO){
        List <UserDTO> list = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        }catch (Exception e){
            e.printStackTrace();
        }
        String sql = "Select id,name1,year1,ss,phone_number from user where id = ?";

        try(Connection conn = DriverManager.getConnection(url,user,password)) {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, DTO.getId());
            try(ResultSet rs = ps.executeQuery()) {
                while (rs.next()){
                    Integer   userID = rs.getInt(1);
                    String userName = rs.getString(2);
                    String userYear = rs.getString(3);
                    String ss = rs.getString(4);
                    String phone_number = rs.getString(5);

                    UserDTO userDTO = new UserDTO(userID,userName,userYear,ss,phone_number);
                    list.add(userDTO);
                }
            }catch (Exception e){
                e.printStackTrace();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
}
