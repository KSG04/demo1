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
    Integer userID = null;
    Integer answer = null;

    userID = Integer.parseInt(request.getParameter("userID"));

    UserDTO userDTO = new UserDTO(userID);
    UserDAO userDAO = new UserDAO();

    int insertCount = userDAO.delete(userDTO);

    if (insertCount == 1){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('삭제 성공')");
        script.println("location.href = 'index.jsp'");
        script.println("</script>");
        script.close();
    }

//    if (answer == 1 ){
//        PrintWriter script = response.getWriter();
//        script.println("<script>");
//        script.println("confirm('정말 삭제하시겠습니까?')");
//    }





%>