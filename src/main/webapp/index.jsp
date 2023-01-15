<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<fieldset>
    <legend>데이터 입력</legend>
    <form method="post" action="addUser.jsp">
        이름 : <input type="text" name="userName"> <br>
        생년월일 : <input type="text" name="userYear"> <br>
        성별 : <input type="text" name="gender"> <br>
        핸드폰번호 : <input type="text" name="number"> <br>
        <input type="submit" value="등록">
    </form>
</fieldset>

</body>
</html>