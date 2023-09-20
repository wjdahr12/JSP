<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int mat = Integer.parseInt(request.getParameter("mat"));
		
		// 평균
		double avg = (kor + eng + mat) / 3.0;
		
		// 학점
		String grade = "";
		
		if(avg >= 90) {
			grade = "A";
		} else if(avg >= 80) {
			grade = "B";
		} else if(avg >= 70) {
			grade = "C";
		}
		 else if(avg >= 60) {
				grade = "D";
			}
		 else {
			 grade = "F";
		 }
	%>
	
		<h3>당신의 성적입니다.</h3><br>
		<p>국어: <%= kor %></p>
		<p>영어: <%= eng %></p>
		<p>수학: <%= mat %></p>
		<p>평균: <%= avg %></p>
		<p>학점: <%= grade %></p>
		
		<a href="javascript:history.back()">뒤로 가기</a>
			

</body>
</html>