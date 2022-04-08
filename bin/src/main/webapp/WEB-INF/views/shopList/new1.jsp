<%@page import="java.util.List"%>
<%@page import="com.javaclass.basic.vo.AddInfoVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매장 정보</title>

<link rel="stylesheet" href="/7team_project/resources/assets/css/shop.css">
</head>
<body bgcolor="#BBDEFB">
	

	
				<div class='main3'>
					<table border='8' class='main'>
					 
					<tr class='main2'><h1 text align='center'><strong><br/>매장명 : ${getAddInfo.shopName} </strong></h1></tr><br/>
					<tr><td class='circle'><span class='content2'><img class='img2' src="/7team_project/resources/assets/img/phone.jpg" style= "margin-left:10px; margin-right:10px; width:80px; height:90px; vertical-align: middle;"><b>전화번호 : ${getAddInfo.shopTel}</b></span> <p/></td></tr>
					<tr><td class='circle'><span class='content3'><img class='img3' src="/7team_project/resources/assets/img/juso.jpg" style= "margin-left:10px; margin-right:10px; width:80px; height:90px; vertical-align: middle;"><b>상세주소 : ${getAddInfo.shopAddr}</b></span>  <p/></td><tr>
					
					</table>
				</div>
					
		

</body>
</html>