<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<img src="${issue.getUser().getAvatar_url()}" height="50pt">  ${issue.getUser().getLogin()}; 	${issue.getState()}
	${issue.getCreated_at()}<br>	
	${issue.getTitle()}<br><br>	
	${issue.getBody()}<br><br>
	
	<c:forEach var="label" items="${issue.getLabels()}">
		${label.getName()}
	</c:forEach> 
	<br>
	
</body>
</html>