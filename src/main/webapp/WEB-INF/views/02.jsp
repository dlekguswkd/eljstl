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
		<h3>연산자</h3>

		<h4>산술연산자</h4>
		<!-- ${5} + ${2} 따로 쓰는거 아님  -->
		
		\${5 + 2} -->  ${5 + 2}	<br>
		\${5 - 2} -->  ${5 - 2}	<br>
		\${5 * 2} -->  ${5 * 2} <br>
		<br>
		\${5 / 2} -->  ${5 / 2}		<!-- 소수점으로 바로 알려줌 --> <br>
		\${5 div 2} -->  ${5 div 2}	 <br>
		<br>
		\${5 % 2} -->  ${5 % 2}		<!-- 나머지 --> <br>
		\${5 mod 2} -->  ${5 mod 2}	 <br>
		<br>
		
		<h4>관계연산자</h4>				<!-- true false로 나옴 --> 
		
		\${5 > 2} -->  ${5 > 2}	<br>	
		\${5 gt 2} -->  ${5 gt 2} <br>
		<br>
		\${5 < 2} -->  ${5 < 2}	<br>
		\${5 lt 2} -->  ${5 lt 2} <br>
		<br>
		\${5 >= 2} -->  ${5 >= 2} <br>
		\${5 ge 2} -->  ${5 ge 2} <br>
		<br>
		\${5 <= 2} -->  ${5 <= 2} <br>
		\${5 le 2} -->  ${5 le 2} <br>
		<br>
		\${5 == 2} -->  ${5 == 2} <br>
		\${5 eq 2} -->  ${5 eq 2} <br>
		<br>
		\${5 != 2} -->  ${5 != 2} <br>
		\${5 ne 2} -->  ${5 ne 2} <br>
		<br>
		
		<h4>3항연산자</h4>
		
		<!-- 5가 3보다크면 5 아니면 3 -->
		\${ (5>3) ? 5 : 3 }  --> ${ (5>3) ? 5 : 3 } <br>
		\${ (5<3) ? 5 : 3 }  --> ${ (5<3) ? 5 : 3 } <br>
		<br>
				
		<h4>논리연산자</h4>		
		
		<!-- true $$ true  -> true -->			
		\${(5>2) && (2<10)}  --> ${(5>2) && (2<10)} <br>
		<br>
		<!-- true $$ false  -> false -->
		\${(5>2) && (2>10)}  --> ${(5>2) && (2>10)} <br>
		<br>
		<!-- true || false  -> true -->
		\${(5>2) || (2>10)}  --> ${(5>2) || (2>10)} <br>
		<br>
		<!-- !true = false  -->
		\${ !(5>2) }  --> ${ !(5>2) } <br>
		<br>
		
		<h4>null 검사</h4>	
		<!-- str 변수명 근데 만들지않아서 없는 변수임(null) -->
		
		\${str}  --> ${str}	<br>	<!-- 아예 아무것도 안나옴 null 이라고 나오는게 아님 -->
		\${str == null}  --> ${str == null} <br>
		\${empty str}  --> ${empty str} <br>
		\${empty reqVal}  --> ${empty reqVal} <br>
		\${reqVal}  --> ${reqVal} <br>
		
		
				
</body>
</html>