<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 14-11-2
  Time: 下午10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>影评详情</title>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/init.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/header.jsp"/>
    <script type="text/javascript">
        $(".nav ul li:eq(3)").addClass("nav_selected").find("a").addClass("nav_selected_a")
                .parent() .siblings().removeClass("nav_selected").find("a").removeClass("nav_selected_a");
    </script>
    <div class="inner">

    </div>
    <jsp:include page="${pageContext.request.contextPath}/jsp/public/footer.jsp"/>
</div>
</body>
</html>
