<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manager_paging.jsp</title>
</head>
<body>
	<!-- 페이징 !!--------------------------------------------------------------------------------------------------->

	<ul class="pagination">     
		<c:set var="P" value="${param.P}" />	<!-- parameter P값얻어오기  -->
		<c:set var="p" value="1" />				
		<c:if test="${P != null}">
			<fmt:parseNumber var="p" type="number" value="${P}" />
		</c:if>                                                     <!-- P값 없으면 1로 지정,페이지 뜨자마자 페이지수1에 내용보기  -->
		<fmt:parseNumber var="pNum" value="${(recordsCnt+9)/10}"  
			integerOnly="true" /> 									<!-- 총 페이지수 계산하기 -->
		<fmt:parseNumber var="Plast" value="${(pNum+9)/10}" integerOnly="true" />	<!-- 마지막 p수 얻어오기 -->
		<c:set var="page" value="1"></c:set>
		<c:if test="${param.page != null}">
			<fmt:parseNumber var="page" type="number" value="${param.page}" />
		</c:if>														<!-- page값 없으면 1로 지정,페이지 뜨자마자 페이지수1에 내용보기  -->
		
		<!-- 상황에 따라 페이징 화면 뜨기 -->
		<c:choose>
			<c:when test="${pNum<=10}"> 	<!-- 총 페이지수가 10보다 적으면 "<<" 하고 ">>" 필요없음 -->
				<c:choose>
					<c:when test="${page==1}">		<!-- page == 1이면 Previous 누러도 1이빈다 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page}" id="previous">Previous</a></li>
					</c:when>
					<c:otherwise>	<!-- 페이지수 2~10 이면 Previous 누러서 전페이지에 가기 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page-1}" id="previous">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="1" end="${pNum}">		<!-- 1부터 페이지총수 까지 페이징 출력 -->
					<li class="page-item"><a class="page-link"
						href="${jspFile }P=${p}&page=${i}">${i}</a></li>
				</c:forEach>
				<c:choose>										
					<c:when test="${page==pNum}">	<!-- page==최대페이수,next누러도 page==최대페이지수 입니다 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page}" id="next">Next</a></li>
					</c:when>
					<c:otherwise>	<!-- page<최대페이수,next누러서 다음 페이지에 가기 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=${page+1}" id="next">Next</a></li>
					</c:otherwise>
				</c:choose>
			</c:when>
			
			<c:when test="${pNum>10}"> <!-- 페이지 총수 10보다 많을때 -->	<!-- 비슷하게 각버튼 기능 분석 -->
				<c:choose>
					<c:when test="${p==1}">		<!-- p는 1이면 "<<" 누러도 p ==1  -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=1&page=1" id="previous"><<</a></li>
					</c:when>
					<c:otherwise>					<!-- p는 1보다 많은이면 "<<" 누러서 p=p-1 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p-1}&page=${10*p-19}"
							id="previous"><<</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page%10==1}">	<!-- page%10 == 1이면(1,11,21,,,)  -->
						<c:choose>
							<c:when test="${page==1 }">	<!-- page==1 기본 p=1,page=1 -->
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=1&page=1" id="previous">Previous</a></li>
							</c:when>
							<c:otherwise>		<!-- 1 아니면(11,21,31,,,) Previous 누러서 전페이지에 가고p=p-1 -->
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p-1}&page=${page-1}"
									id="previous">Previous</a></li>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>	<!-- page%10 != 1이면 (12~20,22~30,,,) p값변하지않고 page=page-1  -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p}&page=${page-1}" id="previous">Previous</a></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${p<Plast }">   <!-- p<마지막p값  해당하는 페이징출력 ex) p=1,1~10  p=2,11~20....-->
						<c:forEach var="i" begin="${p*10-9 }" end="${p*10 }">
							<li class="page-item"><a class="page-link"
								href="${jspFile }P=${p }&page=${i }">${i }</a></li>
						</c:forEach>
					</c:when>
					<c:otherwise>		<!-- p==마지막p값 마지막페이지까지 출력 ex) pNum=23,Plast=3,p=1:1~10,p=2:11~20,p=3(p==Plast),21~23(pNum) -->
						<c:forEach var="i" begin="${p*10-9 }" end="${pNum}">
							<li class="page-item"><a class="page-link"
								href="${jspFile }P=${p }&page=${i }">${i }</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${page==pNum }">	<!-- 마지막페이지면 next 누러도 page = pNum -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p}&page=${pNum}" id="next">Next</a></li>
					</c:when>
					<c:otherwise>	<!-- 마지막페이지아니면 next 누러서 다음페이지 -->
						<c:choose>
							<c:when test="${page%10==0}"> <!-- 10,20,30면 next 누르고 p=p+1  -->
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p+1}&page=${page+1}" id="next">Next</a></li>
							</c:when>
							<c:otherwise>	<!-- 10,20,30..아니면 next 누르고 p=p+1  -->
								<li class="page-item"><a class="page-link"
									href="${jspFile }P=${p}&page=${page+1}" id="next">Next</a></li>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${p<Plast}">	<!-- p<마지막 Plast, ">>"누러서 p=p+1,page=10*p+1 ex)p=2,">>"누러서 p=3,page=21 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${p+1 }&page=${10*p+1}" id="jump">>></a></li>
					</c:when>
					<c:otherwise>		<!-- p==마지막 Plast ">>" 누러서 p=Plast,page=막지막페이지 -->
						<li class="page-item"><a class="page-link"
							href="${jspFile }P=${Plast}&page=${pNum}" id="jump">>></a></li>
					</c:otherwise>
				</c:choose>
			</c:when>
		</c:choose>

	</ul>

</body>
</html>