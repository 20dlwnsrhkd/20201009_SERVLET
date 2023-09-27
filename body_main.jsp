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
    <img src="image/volvo_movile_main_230907.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">시승 이벤트</h5>
    <p class="card-text">출처 : 엔카</p>
  </div>
 </div>
<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        지포스 3060 시리즈
      </a>
      <a href="#" class="list-group-item list-group-item-action">지포스 3070 시리즈</a>
      생략…. <!--이후 추가하기-->
    </div>

	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
</div>
