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
<button type="submit">장바구니에 담기 </button> 담기 성공 
</form>




<form action="cart.do">
<label>회원아이디</label> <input name="memberId" value="${ sessionScope.memberId }">

<button type="submit">장바구니 보기</button>
</form>

<form action="sesstest.do">
<label>회원아이디</label> <input name="memberId" placeholder="id">
<button type="submit"> 로그인하기 </button>
</form>

		<form action="orderNoList.do">
	    <input type="hidden"  name="memberId" value="${ sessionScope.memberId }">
	    <button type="submit">구매목록보기</button>
	    </form>

1.로그인하기
2.장바구니에 상품담기
3.장바구니 보기
4.구매내역 보기

</body>
</html>