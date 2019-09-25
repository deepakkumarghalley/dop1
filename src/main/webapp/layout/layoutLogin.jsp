<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/16/19
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="inc/css.jsp"></jsp:include>
    <jsp:include page="inc/js.jsp"></jsp:include>
    <jsp:include page="inc/context.jsp"></jsp:include>
</head>
<body>
    <sitemesh:write property='body'/>
</body>
    <script>
    $('[data-toggle="tooltip"]').tooltip();
    $(".chosen-select").chosen();
    function validateAttach(vl,id,checkId){
        if(vl!=""){
            $('#'+id).prop('class', 'alert badge-info');
            $('#'+checkId).prop('class', 'fa fa-check pl-2');
            }
            else{
            $('#'+id).prop('class', 'alert badge-danger');
            $('#'+checkId).prop('class', 'fa fa-times pl-2');
           }
        }
    </script>
</html>
