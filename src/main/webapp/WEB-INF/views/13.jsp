<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!-- 그냥 모든 페이지에 넣어버리기 반복문에 필요 -->

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.UserVo" %>

<%
	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
%>

	${reuestScope.userList }


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>el-jstl</h1>
	<h2>jstl</h2>
	<h3>반복문 forEach</h3>

	<h4>스크립틀릿</h4>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>	
		</thead>
		<tbody>
			<%for(int i=0; i<userList.size(); i++) { %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
			<%} %>
		</tbody>		
	
	</table>
	
		
	<h4>jstl</h4>
	
	
		<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>	
		</thead>
		
		<!-- <퍼센트for(Uservo userVo : userList) { %>   향상된 포문  -->
		<!-- <td><퍼센트=userVo.getNo() %></td>  -->
		<tbody>
			<!--				여러개짜리	(어트리뷰트)	    하나짜리 -->
			<c:forEach items="${requestScope.userList}" var="userVo">
		
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
				</tr>
			
			</c:forEach>
		</tbody>
	</table>
	<br>
	
	<br>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>state.index</th>
				<th>state.count</th>
			</tr>	
		</thead>
		<tbody>
			<!--				여러개짜리	(어트리뷰트)	    하나짜리       i 몇번부터   몇번까지만  뛰어넘어서 보여줘라  i가 몇인지 알려주는 -->
			<c:forEach items="${requestScope.userList}" var="userVo" begin="0" end="10" step="1" varStatus="state">
							<!-- for(int i=0; i<=6; i=i+2)  -->
				<tr>
					<td>${userVo.no}</td>
					<td>${userVo.name}</td>
					<td>${userVo.email}</td>
					<td>${userVo.password}</td>
					<td>${userVo.gender}</td>
					<td>${state.index}</td>		<!-- 방번호  -->
					<td>${state.count}</td>		<!-- 갯수  -->
				</tr>
			
			
			</c:forEach>
			
		</tbody>
	
	</table>

</body>
</html>
