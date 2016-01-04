<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
	<div class="inner">
		<c:if test="${user!=null }">
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:silver">欢迎&nbsp;
				${user.username}&nbsp;登陆本站 </span>&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="${pageContext.request.contextPath}/jsp/home/personal.jsp"
				style="text-decoration: underline">进入个人中心</a>
			<a id="Leave" href="${pageContext.request.contextPath }/client/Logout">[注销]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</c:if>
		<c:if test="${user==null }">
			<div class="floatRight">
				<a id="login"
					href="${pageContext.request.contextPath}/jsp/home/Login.jsp">[登陆]</a>&nbsp;&nbsp;&nbsp;
				<a id="Register"
					href="${pageContext.request.contextPath}/jsp/home/Register.jsp">[注册]</a>&nbsp;&nbsp;&nbsp;
			</div>
		</c:if>
	</div>
</header>

<nav style="margin-bottom: 25px;">
	<div class="inner">
		<div class="floatLeft" style="margin-bottom: 0">
			<a href="${pageContext.request.contextPath }/client/Home" class="floatLeft"><img
				style="height: 70px;padding: 5px 0"
				src="${pageContext.request.contextPath}/images/logoo.png"></a>
			<div class="floatLeft">
				<h2 style="color: white;padding: 25px 0px">一起看电影</h2>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;

		</div>
		<div class="floatRight" style="position: relative;margin-bottom: 0">
			<img style="width:200px;margin: 30px 0 0 40px"
				src="${pageContext.request.contextPath}/images/search3.gif" /> <input
				type="text" name="search"
				style="border:none;position: absolute;top:30px;left:40px;width:172px;height: 20px;"
				value="搜索电影、影院" onfocus="if(this.value=='搜索电影、影院') {this.value='';}"
				onblur="if(this.value=='') {this.value='搜索电影、影院';}" />
			<button
				style="position: absolute;top:30px;right: 0;width:20px;height: 21px;cursor: pointer;opacity: 0"></button>
		</div>
		<div class="floatRight nav" style="margin-bottom: 0">
			<ul class="clearfix">
				<li><a href="${pageContext.request.contextPath }/client/Home">首&nbsp;页</a></li>
				<li><a href="${pageContext.request.contextPath }/client/TheaterServlet">影&nbsp;院</a></li>
				<li><a href="${pageContext.request.contextPath }/client/WanhuatongServlet">万&nbsp;花&nbsp;筒</a></li>
				<li><a
					href="${pageContext.request.contextPath}/jsp/Community/CommunityHome.jsp">社&nbsp;区</a></li>

			</ul>
		</div>
	</div>
</nav>
