<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.spur.main.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	GetNewsByQuery client = new GetNewsByQuery();
	String link[][] = client.findNewsByQuery("Basketball");
	for(int i = 0; i < link.length; i++)
	{
		%><a href="<%out.println(link[i][0]);%>">  
		<%out.println(" <br> " + link[i][1] + " <br> ");%></a><%
		/* <a href="url">link text</a> */
	}
	 %>
</body>
</html>