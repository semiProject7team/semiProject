<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
form {

margin-top: 50px;

}

</style>

</head>
<body>

<form action="add.do">
<label>회원아이디</label><input name="memberId" value="${ sessionScope.memberId }">
<label>상품번호</label><input name="goodsNo" value="2">
<label>개수</label><input name="cartCnt" value="3">
<button type="submit">장바구니에 담기 </button>
</form>

<form action="cart.do">
<label>회원아이디</label> <input name="memberId" value="${ sessionScope.memberId }">

<button type="submit">장바구니 보기</button>
</form>

</body>
</html>