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
  String number = null;
    userID = Integer.parseInt(request.getParameter("userID"));
    number = (String) request.getParameter("number");
    UserDTO userDTO = new UserDTO(userID,number);
    UserDAO userDAO = new UserDAO();
    int insertCount = userDAO.modify(userDTO);


    if (insertCount == 1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('변경 성공')");
      script.println("history.back(-1)");
      script.println("</script>");
      script.close();

  }else {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('입력 안한 사항이 있습니다.')");
      script.println("history.back(-1)");
      script.println("</script>");
      script.close();
    }





%>
