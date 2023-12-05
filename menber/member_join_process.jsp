<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="../db/db_conn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");


    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String birth = request.getParameter("birth");


    // SimpleDateFormat을 사용하여 문자열을 Date 객체로 변환
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Date registDay = new Date();


    String sql = "INSERT INTO member (id, password, name, gender, birth, mail, phone, address, regist_day) VALUES (?, ?, ?, ?, ?, ?, ?, ?, NOW())";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    pstmt.setString(3, name);
    pstmt.setString(4, gender);
    pstmt.setString(5, birth);
    pstmt.setString(6, mail);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);

    int result = pstmt.executeUpdate();

    if (result > 0) {
        response.sendRedirect("index.jsp");
    } else {
        out.println("<p>회원 가입에 실패했습니다.</p>");
    }

   if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
    response.sendRedirect("index.jsp");
%>
