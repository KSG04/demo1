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
  String number = null;

  if (request.getParameter("userName") != null) {
    userName = (String) request.getParameter("userName");
    UserDTO userDTO = new UserDTO(userName);
    UserDAO userDAO = new UserDAO();
    int insertCount = userDAO.modify(userDTO);

    if (insertCount >= 1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('변경 성공')");
      script.println("history.back()'");
      script.println("</script>");
      script.close();
    }

  }
  if (request.getParameter("number") != null) {
    number = (String) request.getParameter("number");
    UserDTO userDTO = new UserDTO(userName,number);
    UserDAO userDAO = new UserDAO();
    int insertCount = userDAO.modify(userDTO);

    if (insertCount >= 1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('변경 성공')");
      script.println("history.back()'");
      script.println("</script>");
      script.close();
    }

  }
  if (request.getParameter("userName") != null && request.getParameter(number) != null) {
    userName = (String) request.getParameter("userName");
    number = (String) request.getParameter("number");
    UserDTO userDTO = new UserDTO(userName,number);
    UserDAO userDAO = new UserDAO();
    int insertCount = userDAO.modify(userDTO);

    if (insertCount >= 1){
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('변경 성공')");
      script.println("history.back()'");
      script.println("</script>");
      script.close();
    }

  }

  if(userName.equals("") && number.equals("")){
    PrintWriter script = response.getWriter();
    script.println("<script>");
    script.println("alert('입력 안된 항목이 있습니다.')");
    script.println("history.back()");
    script.println("</script>");
    script.close();
    return;
  }



%>
