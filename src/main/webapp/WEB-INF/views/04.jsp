<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<h1>el-jstl</h1>
	<h2>el 값표현</h2>
	<h3>request 의 attribute 에 있는 값 가져오기</h3>

	<h4>스크립틀릿</h4>
	
	<%@ page import="com.javaex.vo.UserVo" %>
	
	<%
		int i = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		
	%>
	
	<!-- i = <%=(int)request.getAttribute("num") %>   -->
	
	i= <%=i %>	<br>
	str = <%=str %>	<br>
	userVo no = <%=userVo.getNo() %> <br>
	userVo name = <%=userVo.getName() %> <br>
	userVo email = <%=userVo.getEmail() %> <br>
	userVo password = <%=userVo.getPassword() %> <br>
	userVo gender = <%=userVo.getGender() %> <br>
	
	
	<h4>el</h4>  <!-- 생성자 vo 에서 꼭 get set 만들어서 사용하기 
					  getter 를 사용한다.
					  scope 를 생략하면 (이름이 같다면)
					  requestScope 찾고 sessionScope를 찾는다
					  * param 은 절대 생략할수 없다 -->
	i= ${num} <br><br>
	
	<!-- requestScope 대소문자 조심 S는 대문자 (근데 사실 requestScope는 생략가능 하지만 안하는게 좋음) -->
	
	i= ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	userVo no = ${requestScope.userVo.no} <br>	<!-- no -> getNo()를 찾는다 -->
	userVo name = ${requestScope.userVo.name} <br>
	userVo email = ${requestScope.userVo.email} <br>
	userVo password = ${requestScope.userVo.password} <br>
	userVo gender = ${requestScope.userVo.gender} <br>
	

</body>
</html>
