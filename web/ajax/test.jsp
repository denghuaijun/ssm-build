<%--ajax将主动权交给了前端操作--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Ajax</title>
    <!--引入js文件 -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>
</head>
<body>

<span>请输入用户名：</span>
<!--添加焦点事件-->
<input type="text" id="username" onblur="a1()" >

</body>

<script>
    function a1() {
        $.post({
            url:"${pageContext.request.contextPath}/ajax/a1",
            data:{"name":$("#username").val()},
            //请求成功的回调
            success: function (data,status) {
                //alert(data);
                console.log("data===:"+data);
                console.log("status===:"+status)
            },
            //请求失败的回调
            error: function (msg) {
                alert(msg);
            }
        })
    }
</script>
</html>
