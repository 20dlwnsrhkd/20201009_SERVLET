<%@ page contentType ="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%> <!-- 자바 리스트 자료구조 연동 -->
<%@ page import="dto.Product"%> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "꾸팡.com에 오신것을 환영합니다."; String tagline = "하단 페이지 : 확인";%>
<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
            <%
            String sql = "select * from product"; // 조회
		    pstmt = conn.prepareStatement(sql); // 연결 생성
    		rs = pstmt.executeQuery(); // 쿼리 실행
    		while (rs.next()) { // 결과 ResultSet 객체 반복
            %>

            <div class="col-md-3">
                <div class="card bg-dark text-white">
                    <img src="../image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
		        <p><%=rs.getString("p_UnitPrice")%>원
		        <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
            <%
            } // 반복문 끝난 이후 db 연결 종료	
            if (rs != null)
                rs.close();
 	    	if (pstmt != null)
     			pstmt.close();
     		if (conn != null)
    			conn.close();
        	%>

        </div>
        <hr>
</div>
<!--
<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        지포스 3060 시리즈
      </a>
      <a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
      생략…. 
</div>
-->