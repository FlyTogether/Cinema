<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
   <div id="result"></div>
<s:form name="jsonAjax"  action="jsonAjax">
    编号：<input name="movie.id"/><br/>
    用户名：<input name="movie.movieName"/><br/>
    密码：<input name="movie.actor"/><br/><br/>
    <input id="su" type="button" value=" 提 交 "/>
</s:form>
   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $().ready(function () {
        $("#su").click(function () {
            alert("===========================");
            var params  = $("input").serialize();
            $.ajax({
                url:"jsonAjax.do",
                type:"post",
                dataType:"json",
                data:params,
                success:show
            });
        });
    });
    function show(result){
        alert("===========================");
        alert(result);
        var json = eval("("+result+")");
        alert(json);
//        var  obj = json.id+json.movieName+json.introduction;
//        alert(result);
//        alert(json);
//        $("#result").html(obj);
        $(result).each(function (commentIndex, comment) {//遍历List
            alert("==========comment=========");
            alert(comment.movieName);
        });
    }
//    function GetTree(num){
//        var param = {comNum:num};
//        $.ajax({
//            url:"jsonAjax.do",
//            type:"post",
//            dataType:"json",
//            data:param,
//            success: function (data) {
//                $.each(data, function (commentIndex, comment) {//遍历List
//                    alert(comment.movieName);
//                })
//            }
//            },"json");
//
//    }


</script>

</body>
</html>
