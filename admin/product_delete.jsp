<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    String p_id = request.getParameter("id");

    ProductRepository productRepository = new ProductRepository();

	String sql = "delete from product where p_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, p_id);
	int rowsAffected = pstmt.executeUpdate(); // executeUpdate 메서드 사용

    if (rowsAffected > 0) {
        out.println("<p>상품이 성공적으로 삭제되었습니다.</p>");
        response.sendRedirect("index_ad.jsp");
        
    } else {
        out.println("<p>상품 삭제에 실패했습니다.</p>");
        response.sendRedirect("index_ad.jsp");
    }

    // 리소스 정리
    if (rs != null) {
        rs.close();
    }
    if (pstmt != null) {
        pstmt.close();
    }
%>
