
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <style>
          a{
              text-decoration: none;  /*取消下划线*/
              color: yellow;
              font-size: 18px;
          }
          h3{
              width: 180px;
              height: 38px;
              margin: 100px auto; /*侧边距自动调整*/
              text-align: center;
              line-height: 38px;
              background: blue;
              border-radius: 10px;
          }
      </style>
  </head>
  <body>
 <h3>

   <a href="${pageContext.request.contextPath}/book/queryAll">点击进入书籍列表页面</a>
 </h3>
  </body>
</html>
