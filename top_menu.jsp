<%@ page contentType = "text/html;charset=utf-8" %>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">shose</a>
        <a class="dropdown-item" href="#"></a>
     </div>
	</div>
    
    <div>
        <img src="../image/kreamlogo.png" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container" align="right">
		<div class="navbar-header">
			<a class="navbar-brand" href="../index.jsp" >상품목록(기본 홈) </a>
            <a class="navbar-brand" href="../login/login_user.jsp">로그인</a>
            <a class="navbar-brand" href="../menber/menber_join.jsp">회원가입</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="../admin/index_ad.jsp">관리자모드</a>
		</div>
	</div>
</nav>