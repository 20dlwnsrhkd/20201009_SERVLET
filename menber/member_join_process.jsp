<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    // 폼에서 전송된 데이터 받기
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("email");
    String phone = request.getParameter("phoneNumber");
    String address = request.getParameter("address");

    // 현재 날짜 및 시간을 "yyyy-MM-dd HH:mm:ss" 형식으로 포맷팅
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String registDay = dateFormat.format(new java.util.Date());


    // SQL 쿼리 작성
    String sql = "INSERT INTO member (id, password, name, gender, birth, mail, phone, address, regist_day) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);

    // 쿼리 파라미터 설정
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    pstmt.setString(3, name);
    pstmt.setString(4, gender);
    pstmt.setString(5, birth);
    pstmt.setString(6, mail);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);
    pstmt.setString(9, registDay);

    // 쿼리 실행
    int result = pstmt.executeUpdate();

    // 자원 해제
    pstmt.close();
    conn.close();

    // 회원 가입 결과에 따라 메시지 출력
    if (result > 0) {
        out.println("<p>회원 가입이 성공적으로 완료되었습니다.</p>");
        out.println("<p><a href='index.jsp'>홈으로 돌아가기</a></p>");
    } else {
        out.println("<p>회원 가입에 실패하였습니다.</p>");
        out.println("<p><a href='menber_join.jsp'>다시 시도하기</a></p>");
    }
%>
