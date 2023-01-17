<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<%@ page import="java.util.List" %>


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

<fieldset>
    <legend>id 값으로 정보 찾기</legend>
    <form method="post" action="search.jsp">
        조회할 id 입력 : <input type="text" name="userID"> <br>
        <input type="submit" value="조회"> <br>
    </form>

</fieldset>


</body>
</html>