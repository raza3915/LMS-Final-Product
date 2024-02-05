<%@ page import="main.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Book</title>
</head>
<body>
<%
Issue_book ib = new Issue_bookProxy().getIssue_book();
ib.bookissue(request.getParameter("BookName"), request.getParameter("BookId"), request.getParameter("AuthorName"), request.getParameter("IssueDate"), request.getParameter("ReturnDate"), request.getParameter("ApplicantName"), request.getParameter("ApplicantContactNumber"));

%>


</body>
</html>