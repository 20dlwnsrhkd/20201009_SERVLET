<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>

<%	
%>
<footer class="container">
		<p>&copy; 쇼핑몰 대표 : 이준광, 고유번호 : 20201009, 연락처 : jimmy010011@gmail.com 
        <%
            ShopTime time = new ShopTime();

        %>
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>

    
	</footer>