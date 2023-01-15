package user;

public class UserDTO {
    private int id;
    private String name;
    private String year;
    private String ss;
    private String phone_number;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getSs() {
        return ss;
    }

    public void setSs(String ss) {
        this.ss = ss;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public UserDTO(String name, String year, String ss, String phone_number) {
        this.name = name;
        this.year = year;
        this.ss = ss;
        this.phone_number = phone_number;
    }

    public UserDTO(int id, String name, String year, String ss, String phone_number) {
        this.id = id;
        this.name = name;
        this.year = year;
        this.ss = ss;
        this.phone_number = phone_number;
    }

    @Override
    public String toString() {
        return "UserDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", year='" + year + '\'' +
                ", ss='" + ss + '\'' +
                ", phone_number='" + phone_number + '\'' +
                '}';
    }
}
