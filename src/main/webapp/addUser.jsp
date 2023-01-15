<%--
  Created by IntelliJ IDEA.
  User: ksg04001
  Date: 2023-01-12
  Time: 오후 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>

<%
    request.setCharacterEncoding("UTF-8");

    String userName = null;
    String userYear = null;
    String gender = null;
    String number = null;

    if (request.getParameter("userName") != null) {
        userName = (String) request.getParameter("userName");
    }
    if (request.getParameter("userYear") != null) {
        userYear = (String) request.getParameter("userYear");
    }
    if (request.getParameter("gender") != null) {
        gender = (String) request.getParameter("gender");
    }
    if (request.getParameter("number") != null) {
        number = (String) request.getParameter("number");
    }

    if(userName.equals("") || userYear.equals("") || gender.equals("") || number.equals("")){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('입력 안된 항목이 있습니다.')");
        script.println("history.back()");
        script.println("</script>");
        script.close();
        return;
    }
    UserDTO userDTO = new UserDTO(userName,userYear,gender,number);
    UserDAO userDAO = new UserDAO();
    int insertCount = userDAO.addUser(userDTO);

    if (insertCount >= 1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('등록 성공')");
        script.println("location.href='index.jsp'");
        script.println("</script>");
        script.close();
    }




%>
