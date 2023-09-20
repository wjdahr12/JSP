<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int total = 0;
		
		String[] selectedFoods = request.getParameterValues("food");
		
		if(selectedFoods != null){
			for(String food : selectedFoods) {
				int foodPrice = Integer.parseInt(food);
				total += foodPrice;				
			}
		}		
	
	%>
	
		<h2>당신이 주문한 상품의 합계입니다.</h2>
		<p>선택한 상품의 가격 합계: <%= total %>원</p>
		
		<a href="javascript:history.back()">뒤로 가기</a>

</body>
</html>