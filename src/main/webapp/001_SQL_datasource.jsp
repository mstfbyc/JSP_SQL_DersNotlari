<%--
  Created by IntelliJ IDEA.
  User: mustafaboyaci
  Date: 25.04.2021
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource var="datasource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/HR"
                   user="root"
                   password="root"/>
<!-- <sql:query var="result" dataSource="${datasource}" sql="SELECT * FROM employees" /> -->
<sql:query var="result" dataSource="${datasource}">
    SELECT * FROM employees;
</sql:query>
</body>
</html>
