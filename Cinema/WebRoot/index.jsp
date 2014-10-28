<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css">
  </head>
  <frameset rows="25%,*"  border="1px">
  	<frame src="${pageContext.request.contextPath}/manager/head.jsp" name="head">
  	<frameset cols="20%,*">
  		<frame src="${pageContext.request.contextPath}/manager/nav.jsp" name="nav">
  		<frame src="${pageContext.request.contextPath}/manager/content.jsp" name="content">
  	</frameset>
  </frameset>
</html>
