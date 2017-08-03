<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/WEB-INF/tld/spring.tld" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="static/header.jsp"/>
<div class="col-sm-4 col-lg-4">
    <h3><s:message code="Courses"/></h3>
</div>

<table class="table table-striped" data-effect="fade">
    <thead>
    <tr>
        <th><s:message code="Course_Name"/></th>
        <th><s:message code="Course_Teacher" /></th>
        <th><s:message code="Start_Date"/></th>
        <th><s:message code="End_Date"/></th>
        <th> </th>
    </tr>
    </thead>
    <tbody id="coursesList">
    </tbody>
</table>

<div class="text-center">
    <ul class="pagination">
        <li class="">
            <a href="#" id="prevPage">«</a>
        </li>
        <c:forEach var="i" begin="1" end="${numOfPages}">
            <li class="page" id="${i}" >
                <a href="#" ><c:out value="${i}"/></a>
            </li>
        </c:forEach>
        <li class="">
            <a href="#" id="nextPage">»</a>
        </li>
    </ul>

</div>

<jsp:include page="static/footer.jsp"/>
<script src='<c:url value="/resources/js/navigation.js"/>'></script>