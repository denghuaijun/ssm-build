<%--ajax将主动权交给了前端操作--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test Ajax 处理返回的json数据集</title>
    <!--引入js文件 -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.0.js"></script>
</head>
<body>
<!--添加焦点事件-->
<input type="button" value="加载数据" id="btn" >
<br/>
<table>
    <thead>
    <tr>
        <th>书籍编号</th>
        <th>书籍名称</th>
        <th>书籍数量</th>
<%--        <th>书籍描述</th>--%>
    </tr>
    </thead>
    <tbody id="tbody">
    </tbody>
</table>
</body>

<script>
    $("#btn").click(function () {
        //alert(11111111);
       $.post("${pageContext.request.contextPath}/ajax/a3",function (data) {
          // alert(data)
            var html="";
           for (let i = 0; i < data.length; i++) {
               html += "<tr>" +
                   "<td>"+ data[i].name +"</td>"+
                   "<td>"+ data[i].age +"</td>"+
                   "<td>"+ data[i].sex +"</td>"+
                   // "<td>"+ data[i].detail +"</td>"+
                   "</tr>"
           }
           $("#tbody").html(html);
       })
    })
</script>
</html>
