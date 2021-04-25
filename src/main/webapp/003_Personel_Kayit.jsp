<%--
  Created by IntelliJ IDEA.
  User: mustafaboyaci
  Date: 25.04.2021
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personel Kayıt</title>
  <%@include file="header.jsp"%>
</head>
<%@include file="Datasource.jsp"%>
<body>
<sql:query var="jobResult" dataSource="${datasource}">
  SELECT * FROM jobs;
</sql:query>
<sql:query var="departmentResult" dataSource="${datasource}">
  SELECT * FROM departments;
</sql:query>
<div class="container">
  <form action="003_SQL_Update.jsp" method="post">
    <div class="mb-3">
      <label for="first_name" class="form-label">İsim</label>
      <input type="text" class="form-control" id="first_name" name="first_name">
    </div>
    <div class="mb-3">
      <label for="last_name" class="form-label">Soyisim</label>
      <input type="text" class="form-control" id="last_name" name="last_name">
    </div>
    <div class="mb-3">
      <label for="email" class="form-label">e-posta</label>
      <input type="email" class="form-control" id="email" name="email">
    </div>
    <div class="mb-3">
      <label for="phone_number" class="form-label">GSM</label>
      <input type="text" class="form-control" id="phone_number" name="phone_number">
    </div>
    <div class="mb-3">
      <label for="salary" class="form-label">Maaş</label>
      <input type="number" class="form-control" id="salary" name="salary">
    </div>
    <div class="mb-3">
      <label for="commission_pct" class="form-label">Komisyon</label>
      <input type="number" class="form-control" id="commission_pct" name="commission_pct">
    </div>
    <label for="jobs">Görev</label>
    <select class="form-control" id="jobs" name="job_id">
      <c:forEach var="job" items="${jobResult.rows}">
        <option value="${job.job_id}"><c:out value="${job.job_title}"/></option>
      </c:forEach>
    </select>
    <label for="department">Departman</label>
    <select class="form-control" id="department" name="department_id">
      <c:forEach var="department" items="${departmentResult.rows}">
        <option value="${department.department_id}">${department.department_name}</option>
      </c:forEach>
    </select>
    <button type="submit" class="btn btn-primary">Kaydet</button>
    <button type="reset" class="btn btn-danger">Temizle</button>
  </form>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
