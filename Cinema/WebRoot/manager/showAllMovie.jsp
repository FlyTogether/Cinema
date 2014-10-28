<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查看所有影片</title>
    <style type="text/css">
    	body{
    		margin: 0ps;
    		padding: 0px;
    	}
    	#containter{
    		margin-top: 100px;
    		margin-left: 100px;
    	}
    </style>
    

  </head>
  
  <body>
  	<div id="containter">
  		<table>
  			<tr>
  				<th>片名</th>
  				<th>上映时间</th>
  				<th>片场</th>
  				<th>查看详情</th>
  				<th>修改</th>
  			</tr>
  			<c:forEach items="${result.list}" var="movie" >
  				<tr>
  					<td>${movie.moviename }</td>
  					<td>${movie.showtimes }</td>
  					<td>${movie.runtime }</td>
  					<td><a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showMovieDetail&id=${movie.id}">查看详情</a></td>
  					<td><a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showEditableMovieDetail&id=${movie.id}">修改</a></td>
  				</tr>
  			</c:forEach>
  		</table>
  		<div id="page">
  			<c:if test="${result.page.currentPage-1>0}">
  				<a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showAll&currentPage=${result.page.currentPage-1}">[上一页]</a>
  			</c:if>
  			<c:if test="${result.page.currentPage-1<=0}">
  				<a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showAll&currentPage=${result.page.startPage}">[上一页]</a>
  			</c:if>
			<c:forEach begin="${result.page.startPage }" end="${result.page.endPage }" var="currentPage">
				[<a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showAll&currentPage=${currentPage}">${currentPage }</a>]
			</c:forEach>
			<c:if test="${result.page.currentPage+1>result.page.totalPage}">
				<a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showAll&currentPage=${result.page.totalPage}">[下一页]</a>
  			</c:if>
  			<c:if test="${result.page.currentPage+1<=result.page.totalPage}">
				<a href="${pageContext.request.contextPath }/manager/MovieServlet?method=showAll&currentPage=${result.page.currentPage+1}">[下一页]</a>
  			</c:if>
  		</div>
  	</div>
  </body>
</html>
