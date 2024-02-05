<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Return Book</title>
</head>
<body>


<%
Return_book rb = new Return_bookProxy().getReturn_book();

rb.bookreturn(request.getParameter("BookName"),request.getParameter("BookId"), request.getParameter("ReturnDate"), request.getParameter("ApplicantName"), request.getParameter("ApplicantId"));
%>

</body>
</html>