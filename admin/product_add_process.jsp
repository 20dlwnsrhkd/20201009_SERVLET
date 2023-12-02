<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");


    String filename = "";
	String realFolder = request.getServletContext().getRealPath("image/product"); //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);


    String p_Id = multi.getParameter("productId");
    String p_name = multi.getParameter("name");
    String p_unitPrice = multi.getParameter("unitPrice");
    String p_description = multi.getParameter("description");
    String p_manufacturer = multi.getParameter("manufacturer");
    String p_category = multi.getParameter("category");
    String p_unitsInStock = multi.getParameter("unitsInStock");
    String p_condition = multi.getParameter("condition");

	
    Integer price;

	if (p_unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(p_unitPrice);

	long stock;

	if (p_unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(p_unitsInStock);

    Enumeration files = multi.getFileNames();
	String p_fName = (String) files.nextElement();
	String p_fileName = multi.getFilesystemName(p_fName);


	String sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, p_Id); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, p_name);
	pstmt.setString(3, p_unitPrice);
	pstmt.setString(4, p_description);
	pstmt.setString(6, p_category);
    pstmt.setString(5, p_manufacturer);
	pstmt.setString(7, p_unitsInStock);
	pstmt.setString(8, p_condition);
	pstmt.setString(9, p_fileName);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();

	response.sendRedirect("index_ad.jsp");
%>

