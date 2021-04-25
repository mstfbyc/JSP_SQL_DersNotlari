<%--
  Created by IntelliJ IDEA.
  User: mustafaboyaci
  Date: 25.04.2021
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Title</title>
    <%@include file="header.jsp"%>
</head>
<body>
<sql:setDataSource var="datasource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/HR"
                   user="root"
                   password="root"/>

<sql:query var="employeesResult" dataSource="${datasource}">
SELECT * FROM employees;
</sql:query>
<div class="container">
    <table class="table table-primary">
        <thead>
        <tr>
            <th scope="col">Employee ID</th>
            <th scope="col">İsim</th>
            <th scope="col">Soyisim</th>
            <th scope="col">e-posta</th>
            <th scope="col">GSM</th>
            <th scope="col">İşe Başlangıç Tarihi</th>
            <th scope="col">Maaş</th>
            <th scope="col">Komisyon</th>
            <th scope="col">Yöneticisi</th>
            <th scope="col">Departmanı</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="row" items="${employeesResult.rows}">
            <tr>
                <td><c:out value="${row.employee_id}"/></td>
                <td><c:out value="${row.first_name}"/></td>
                <td><c:out value="${row.last_name}"/></td>
                <td><c:out value="${row.email}"/></td>
                <td><c:out value="${row.phone_number}"/></td>
                <td><c:out value="${row.hire_date}"/></td>
                <td><c:out value="${row.salary}"/></td>
                <td><c:out value="${row.commission_pct}"/></td>
                <td><c:out value="${row.job_id}"/></td>
                <td><c:out value="${row.department_id}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
