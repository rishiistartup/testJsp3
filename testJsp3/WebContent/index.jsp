<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>XML FILE LIST</title>
</head>
<body>
<% 
String sourceDirectory = "Z:\\testJsp3\\src\\xml/";
File f = new File(sourceDirectory);
String [] fileNames = f.list();
File [] fileObjects= f.listFiles();
%>
<UL>
<%
for (int i = 0; i < fileObjects.length; i++) {
if(!fileObjects[i].isDirectory()){
%>
<LI>
<A HREF="<%="Z:/testJsp3/src/xml/"+fileNames[i] %>"><%= fileNames[i]%></A> 
&nbsp;&nbsp;&nbsp;&nbsp;
(<%= Long.toString(fileObjects[i].length()) %> bytes long)
<%
}
}
%>
</UL>
</body>
</html>