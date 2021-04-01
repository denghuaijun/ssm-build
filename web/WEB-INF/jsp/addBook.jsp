<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
<%--
    bootstrap在线核心CSS文件
--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <!--列表展示 -->
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍页面</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="/book/add" method="post">
        <div class="form-group">
            <label for="bookName">书籍名称：</label>
            <input type="text" class="form-control" id="bookName" name="bookName" required>
        </div>
        <div class="form-group">
            <label for="bookCounts">书籍数量：</label>
            <input type="text" class="form-control" id="bookCounts" name="bookCounts" required>
        </div>
        <div class="form-group">
            <label for="bookDetail">书籍描述：</label>
            <input type="text" class="form-control" id="bookDetail" name="detail" required>
        </div>

        <button type="submit" class="btn btn-default">Submit</button>
    </form>
</div>
</body>
</html>
