<%@ page contentType = "text/html;charset=utf-8" %>
<%	
%>

 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "꾸팡.com에 오신것을 환영합니다.";
      String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
</div>	
<div class="card bg-dark text-white">
    <img src="image/top.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">그래픽 카드 이벤트</h5>
    <p class="card-text">출처 : 다나와</p>
  </div>
 </div>

	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
</div>
