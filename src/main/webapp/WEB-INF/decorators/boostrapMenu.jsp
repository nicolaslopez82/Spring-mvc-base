<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

    <div class="well sidebar-nav">
        <ul class="nav nav-list">
            <li class="nav-header"><spring:message code="layout.lang" /> </li>
            <li><a href="?lang=fr"><spring:message code="layout.lang.french" /></a></li>
            <li><a href="?lang=en"><spring:message code="layout.lang.english" /></a></li>
            <li><a href="?lang=es"><spring:message code="layout.lang.spanish" /></a></li>
        </ul>
    </div>

</body>
</html>