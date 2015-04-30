<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.spur.main.*"  import="edu.neu.cs5200.spur.subclass.*"
    import="com.google.gson.Gson" import="com.google.gson.reflect.TypeToken" import="edu.neu.cs5200.main.*" import="java.util.List" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>2013 Schedule</title>
</head>
<body>
	<h1>The schedule of 2014 regular season is as following:</h1>
	<% 
	GetGameInforBySeason client = new GetGameInforBySeason();
	ArrayList<Home> homes = client.findHomeBySeason("2014");
	ArrayList<Away> aways = client.findAwayBySeason("2014");
	for(int i = 0; i < homes.size(); i++){
		Home home = homes.get(i);
		Away away = aways.get(i);
		if(home == null){
			out.println("<br>" + "Home Alias:" + "<br>");
			out.println("<br>" + "Home Name:" + "<br>");
		}
		else{
			out.println("<br>" + "Home Alias:" + home.getAlias() + "<br>");
			out.println("<br>" + "Home Name:" + home.getName() + "<br>");
		}
		if(away == null){
			out.println("<br>" + "Guest Alias:" + "<br>");
			out.println("<br>" + "Guest Name:" + "<br>");
		}
		else{
			out.println("<br>" + "Guest Alias:" + away.getAlias() + "<br>");
			out.println("<br>" + "Guest Name:" + away.getName() + "<br>");
		}
		out.println("<br>");
	}
	
	%>
</body>
</html>