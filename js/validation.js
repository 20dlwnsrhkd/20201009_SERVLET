function CheckAddProduct() {
var productId = document.getElementById("productId");
var name = document.getElementById("name");
var unitPrice = document.getElementById("unitPrice");
var unitsInStock = document.getElementById("unitsInStock");
// 상품아이디 체크
if (!check(/^P[0-9]{4,11}$/, productId,"[상품 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
return false;
// 상품명 체크
if (name.value.length < 4 || name.value.length > 12) {
alert("[상품명]\n최소 4자에서 최대 50자까지 입력하세요");
name.select();
name.focus();
return false;
}
// 상품 가격 체크
if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
alert("[가격]\n숫자만 입력하세요");
unitPrice.select();
unitPrice.focus();
return false;
}

if (unitPrice.value < 0) {
alert("[가격]\n음수를 입력할 수 없습니다");
unitPrice.select();
unitPrice.focus();
return false;
} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice,"[가격]\n소수점 둘째 자리까지만 입력하세요"))
return false;

// 재고 수 체크
if (isNaN(unitsInStock.value)) {
alert("[재고 수]\n숫자만 입력하세요");
unitsInStock.select();
unitsInStock.focus();
return false;
}

function check(regExp, e, msg) {

if (regExp.test(e.value)) {
return true;
}
alert(msg);
e.select();
e.focus();
return false;
}

document.newProduct.submit()
}

function CheckAddMember() {
    // 아이디, 패스워드, 이메일 등 각 필드에 대한 유효성 검사
    var id = document.getElementById("id").value.trim();
    var password = document.getElementById("password").value.trim();
    var passwordCheck = document.getElementById("password_check").value.trim();
    var name = document.getElementById("name").value.trim();
    var mail = document.getElementById("mail").value.trim();
    var gender = document.getElementById("gender").value.trim();
    var phone = document.getElementById("phone").value.trim();
    var address = document.getElementById("address").value.trim();

    // 아이디는 최소 4자 이상
    if (id.length < 4) {
        alert("아이디는 최소 4자 이상이어야 합니다.");
        return;
    }

    // 패스워드는 최소 6자 이상
    if (password.length < 6) {
        alert("패스워드는 최소 6자 이상이어야 합니다.");
        return;
    }

    // 패스워드와 패스워드 재입력이 일치하는지 확인
    if (password !== passwordCheck) {
        alert("패스워드와 패스워드 재입력이 일치하지 않습니다.");
        return;
    }

    // 이름은 최소 2자 이상
    if (name.length < 2) {
        alert("이름은 최소 2자 이상이어야 합니다.");
        return;
    }

    // 이메일 형식 검사
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!emailPattern.test(mail)) {
        alert("올바른 이메일 주소를 입력하세요.");
        return;
    }

    // 전화번호 형식 검사 (숫자만 허용)
    var phonePattern = /^\d+$/;
    if (!phonePattern.test(phone)) {
        alert("전화번호는 숫자만 입력 가능합니다.");
        return;
    }

    // 유효성 검사가 성공하면 폼 제출
    document.newMember.submit();
}
