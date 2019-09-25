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
        <title><sitemesh:write property='title'/></title>
        <sitemesh:write property='head'/>
            <jsp:include page="inc/css.jsp"></jsp:include>
            <jsp:include page="inc/js.jsp"></jsp:include>
            <jsp:include page="inc/context.jsp"></jsp:include>
        </head>

        <body>
        <jsp:include page="inc/header.jsp"></jsp:include>
        <sitemesh:write property='body'/>
        <jsp:include page="inc/footer.jsp"></jsp:include>
        </body>
            <script>

                $('[data-toggle="tooltip"]').tooltip();
                $(".chosen-select").chosen();
                function getCommonDropdown(slNo,type,targetId){
                   $('#contract_section').hide();
                    $('#'+targetId).empty();
                    $.ajax({
                        url: '${pageContext.request.contextPath}/common/getDropdownDetails?sl_no='+slNo+'&type='+type,
                        type: 'GET',
                        // data: $('#courseFromId').serializeArray(),
                        success: function (res){
                        $('#'+targetId).append("<option value=''>Select</option>");
                        var str="";
                        for (var i = 0; i < res.length; i++){
                        $('#'+targetId).append("<option value=" +  res[i].header_id+ ">"+res[i].header_name  + "</option>").trigger('chosen:updated');
                       }
                   }
                });

               }

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
