<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Add_book ab= new Add_bookProxy().getAdd_book();


ab.adduser(request.getParameter("BookName"), 
		request.getParameter("BookId") ,
		request.getParameter("AuthorId"),
		request.getParameter("AuthorName"),
		request.getParameter("PublishYear"),
		request.getParameter("PublisherName"));

%>
</body>
</html>