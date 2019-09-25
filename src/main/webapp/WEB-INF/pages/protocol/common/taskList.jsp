<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/29/19
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task List</title>
</head>

<body class="">
<div class="col-12">
    <h2 class="card-title"><br /><b>Department of Passport</b> >> Tasklist</h2>
    <div class="card">
        <div class="card-header" style="background: #898da0;">
            <h3 class="card-title text-white">Group Task</h3>
        </div>
        <div class="table-responsive">
            <table class="table card-table table-vcenter">
                <thead>
                <tr>
                    <th><b style="color: #0e0e0e;"> Application Number</b></th>
                    <th><b style="color: #0e0e0e;">Service Name</b></th>
                    <th><b style="color: #0e0e0e;">Current Status</b></th>
                    <th><b style="color: #0e0e0e;">Last Action Date</b></th>
                    <th><b style="color: #0e0e0e;">Transaction Type</b></th>
                </tr>
                </thead>
                <tbody>


                </tbody>
            </table>
        </div>
    </div>
    <div class="card">
        <div class="card-header" style="background: #5369d4;">
            <h3 class="card-title text-white">My Task</h3>
        </div>
        <div class="table-responsive">
            <table class="table card-table table-vcenter text-nowrap">
                <thead>
                <tr>
                    <th><b style="color: #0e0e0e;">Application Number</b></th>
                    <th><b style="color: #0e0e0e;">Service Name</b></th>
                    <th><b style="color: #0e0e0e;">Current Status</b></th>
                    <th><b style="color: #0e0e0e;">Last Action Date</b></th>
                    <th><b style="color: #0e0e0e;">Transaction Type</b></th>
                </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><a href=passportUploadApplication?application_Number=BTNA00000112 name="application_Number" value="BTNA00809719" class="text-inherit">BTNA00599518</a></td>

                    <td>Issuance of Passport</td>
                    <td> UPLOADED </td>
                    <td>02/01/2019</td>
                    <td>ONINE</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
