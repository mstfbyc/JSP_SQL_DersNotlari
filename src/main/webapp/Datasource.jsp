
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<sql:setDataSource var="datasource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/HR"
                   user="root"
                   password="root"/>