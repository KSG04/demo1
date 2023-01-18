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
<%@ page import="java.util.List" %>

<%
    request.setCharacterEncoding("UTF-8");

     Integer userID = null;

    if (request.getParameter("userID") != null) {
       userID =Integer.parseInt(request.getParameter("userID"));
    }
    UserDTO userDTO = new UserDTO(userID);
    UserDAO userDAO = new UserDAO();

    if(userID.equals("")){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('입력 안된 항목이 있습니다.')");
        script.println("history.back()");
        script.println("</script>");
        script.close();
        return;
    }else {

        %>
    <div>
<%

        List<UserDTO> list = userDAO.searchID(userDTO);
        for (int i = 0; i < list.size(); i++){
%>
<table border="1px">
    <thead>
    <tr>
        <th>id</th>
        <th>이름</th>
        <th>생년월일</th>
        <th>성별</th>
        <th>핸드폰번호</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=list.get(i).getId()%></td>
        <td><%=list.get(i).getName()%></td>
        <td><%=list.get(i).getYear()%></td>
        <td><%=list.get(i).getSs()%></td>
        <td><%=list.get(i).getPhone_number()%></td>
    </tr>
    </tbody>
</table>
<%
    }

%>
            </div>
<%
    }

%>
<br>
<fieldset>
    <legend>수정하기</legend>
<form method="post" action="update.jsp">
변경 ID  : <%=userID%> <input type="hidden" name="userID" value="<%=userID%>"> <br>
번호 변경 : <input type="text" name="number"> <br>
    <input type="submit" value="변경">
</form>
</fieldset>

<fieldset>
    <legend>삭제하기</legend>
    <form method="post" action="delet.jsp">
        삭제 ID : <%=userID%> <br>
        <input type="hidden" name="userID" value="<%=userID%>">
        <input type="submit" value="삭제" name="1">
    </form>
</fieldset>