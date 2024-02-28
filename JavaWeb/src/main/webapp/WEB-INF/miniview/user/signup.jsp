<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	<form action="#" method="post">
		 <label for="username">ID:</label>
        <input type="text" name="username" required><br>
        
        <label for="password">PassWord:</label>
        <input type="password" name="password" required><br>
        
        <label for="email">Email:</label>
        <input type="email" name="email" required><br>
        
        <label for="phone_number">휴대폰:</label>
        <input type="text" name="phone_number" required><br>
        
        <input type="submit" value="가입하기">
        <input type="submit" value="취소">
	</form>
</body>
</html>