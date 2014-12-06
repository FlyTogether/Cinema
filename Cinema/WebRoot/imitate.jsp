<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<s:form action="/area_textChange" namespace="" >
    <s:select list="%{#areas}" id ="area" value="id"  listKey="id" listValue="name" headerKey="" headerValue="--请选择--"></s:select>
</s:form>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
<script type="text/javascript">
    $().ready(function () {
        $("#area").change(function () {
//            alert("change");
            var param = 1;
            alert(param);
            $.ajax({
               url:"areaJson_getTheArea.do",
               type:"post",
               data:param,
               success: function (data) {
                   alert("================="+data);
                   $("#message").html(data);
//                   var json = eval("("+data+")");
                   var json =eval(data);
                   alert(json);
                   $("#area").empty();
                   $("#area").append("<option value = \"\">--请选择--</option>" );
                   for(var i = 0,len = json.length; i<len; i++){
                       $("#area").append($("<option value='"+json[i].id+"' selected='selected'>"+json[i].name+"</option>"));
                   }

               }
            });
        });
    });
</script>
<div id="message"></div>
</body>
</html>
