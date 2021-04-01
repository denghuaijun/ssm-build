<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表页面</title>
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
                    <small>书籍列表------显示所有书籍</small>
                </h1>
            </div>
        </div>
        <!--跳转到增加书籍页面 -->
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" type="button" href="/book/toAdd">新增</a>
            </div>
            <div class="col-md-4 column">
               <form action="/book/byBookName" method="post" style="float: right;width: 100%">
                   <div style="display: flex;justify-content: space-around">
                       <div>
                           <span style="color: red;font-weight: bold">${msg}</span>
                       </div>
                       <div>
                           <input type="text" style="display: inline-block" class="form-control" id="queryBookName" name="queryBookName" placeholder="请输入书籍名称" required>
                       </div>
                       <div>
                           <input type="submit" value="查询" class="btn btn-primary">
                       </div>
                       <div>
                           <input type="reset" value="重置" class="btn btn-primary" >
                       </div>
                   </div>
               </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
           <table class="table table-hover table-striped">
               <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍描述</th>
                    <th>操作</th>
                </tr>
               </thead>
               <tbody>
                    <c:forEach var="book" items="${books}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="/book/toUpdate?bookId=${book.bookID}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="/book/del/${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
               </tbody>
           </table>
        </div>
    </div>
</div>
</body>
</html>
