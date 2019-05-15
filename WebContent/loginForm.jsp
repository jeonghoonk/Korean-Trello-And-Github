<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>로그인 화면</title>
    
</head>
<% 
Object failed = request.getAttribute("login failed");
if(failed != null && ((Boolean)failed)) {
     out.println("<script type='text/javascript'>");
     out.println("alert('아이디나 비밀번호가 일치하지 않습니다!');");
     out.println("</script>");
     out.flush();
}

%>
<body>

    <div id="wrap">
        <br><br>
        <b><font size="6" color="gray">로그인</font></b>
        <br><br><br>
        
        <form action="loginCommand.do" method="post">
            <table>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="50">
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="50">
                    </td>
                </tr>
                
            </table>
            <br>
            
            <input type="submit" value="로그인"/>
        </form>
        
        <input type="button" href="join.do" value="회원가입"/>
    </div>
</body>
</html>