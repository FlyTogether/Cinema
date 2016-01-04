<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/json.js"></script>
<script type="text/javascript">
	$().ready(function() {
		$("#email").blur(function() {
			$.post("/jsonInfo.do?time=" + new Date().getTime(), {
				email : $(this).val()
			}, function(data, state) {
				$("#emessage").html();
				return false;
			}, 'json');
		});
	});
</script>
<html>
<head>
<title>注册界面</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/CheckForm.js"></script>
</head>
<body
	style=" background: url(${pageContext.request.contextPath}/images/blue.jpg)  repeat;">
	<div class="lightbox" id="RegisterBox">
		<div style="position: relative;top:20%;left:50%">
			<form action="${pageContext.request.contextPath }/manager/UserServlet?method=registerFromWeb" method="post"
				style="position: absolute;width:320px;height:200px;margin:-100px 0 0 -160px">
				<div style="text-align: center">
					<img src="${pageContext.request.contextPath}/images/logoo.png" />
				</div>
				<div>
					<label for="name">&nbsp;&nbsp;用户名：</label><input class="textbox"
						type="text" name="username" id="name" placeholder="输入用户名" /><br />
				</div>
				<div>
					<label for="password">&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input
						class="textbox" type="password" name="password" id="password"
						placeholder="输入密码" required="required" /><br />
				</div>
				<div>
					<label for="repassword">确认密码：</label><input class="textbox"
						type="password" name="repassword" id="repassword"
						placeholder="确认密码" data-equals="password" required="required" /><br />
				</div>
				<label>&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别：</label><input
					type="radio" name="gender" value="girl" />&nbsp;女&nbsp;&nbsp;<input
					type="radio" name="gender" value="boy" />&nbsp;男<br />
				<div>
					<label for="email">&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</label><input
						class="textbox" type="email" name="email" id="email"
						placeholder="输入认证邮箱" required="required" /><br />
				</div>
				<div id="emessage">${emessage}</div>
				<%--<label>验&nbsp;证&nbsp;码：</label><input class="textbox" style="width:70px" type="text" name="code" placeholder="输入验证码"/><br/>--%>
				<div style="text-align: center;margin-top: 15px;">
					<input type="submit" value="注册" class="button"
						style="width:80px;height: 30px" />&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="reset" value="重置" class="button" id="reset"
						style="width:80px;height: 30px" />
				</div>
				<s:property value="%{#message}"></s:property>
				<s:fielderror></s:fielderror>
			</form>
		</div>
		<div style="position: absolute;bottom:10px;right:20px">
			<a href="/index_index.do">返回主页>></a>
		</div>
	</div>
</body>
</html>
