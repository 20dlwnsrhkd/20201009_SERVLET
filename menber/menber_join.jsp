<%@ page contentType="text/html;charset=utf-8"%>
<html>
    <head>
        <%@ page import="example.*" %> 
        <%@ page import="java.util.Date"%>
        <%@ page buffer="1kb" autoFlush="true"%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    </head>
     <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">회원 가입</h1>
            </div>
        </div>
        <div class="container">

                    <form action="menber_join_process.jsp" class="form-horizontal" method="post">
                        <div class="form-group">
                            <label for="inputId" class="col-sm-2 control-label">아이디</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputId" name="id" placeholder="아이디" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-sm-2 control-label">패스워드</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword" name="password" placeholder="패스워드" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPasswordConfirm" class="col-sm-2 control-label">패스워드 재입력</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPasswordConfirm" name="passwordConfirm" placeholder="패스워드 재입력" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputName" class="col-sm-2 control-label">이름</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputName" name="name" placeholder="이름" required>
                            </div>
                        </div>
                                                <div class="form-group">
                            <label class="col-sm-2 control-label">성별</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male" checked> 남자
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female"> 여자
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-2 control-label">이메일</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail" name="email" placeholder="이메일" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPhoneNumber" class="col-sm-2 control-label">폰 번호</label>
                            <div class="col-sm-10">
                                <input type="tel" class="form-control" id="inputPhoneNumber" name="phoneNumber" placeholder="폰 번호" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputAddress" class="col-sm-2 control-label">주소</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputAddress" name="address" placeholder="주소" required>
                            </div>
                        </div>
                        <!-- 추가된 입력 폼 끝 -->
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">가입하기</button>
                            </div>
                        </div>
                    </form>

        </div>
    </body>
</html>