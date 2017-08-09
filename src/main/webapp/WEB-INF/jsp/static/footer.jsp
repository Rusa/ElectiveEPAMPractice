<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/WEB-INF/tld/spring.tld" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page contentType="text/html;charset=UTF-8" %>

            <footer class="footer text-center">
                <p>Made by Trainees from EPAM</p>
                <div class="credits">
                    <a href="https://bootstrapmade.com/">Bootstrap Themes</a> by <a
                        href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </footer>
        </div>
    </body>
</html>
<script>
    var contextPath = "${pageContext.request.contextPath}";
    var numOfPages = "${numOfPages}";
</script>
<script src='<c:url value="/resources/js/vendor/jquery-3.2.1.js"/>'></script>
<script src='<c:url value="/resources/js/vendor/bootstrap.min.js"/>'></script>
<script src='<c:url value="/resources/js/vendor/typeahead.min.js"/>'></script>
<script src='<c:url value="/resources/js/localeChangeURL.js"/>'></script>