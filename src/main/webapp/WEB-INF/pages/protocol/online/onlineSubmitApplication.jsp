<%--
  Created by IntelliJ IDEA.
  User: deepak
  Date: 5/22/19
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div class="container">
    <br />
    <h3><b>Department of Protocol</b></h3>
    <div class="card">
        <div class="card-header">
            <b>Apply for Passport / </b>Application Form
        </div>
        <div class="card-body">
                <span class="text-danger" >
                  &nbsp;&nbsp;&nbsp;&nbsp;NOTE:  Label which are marked with * are mandatory fields, you cannot proceed further without those fields.
                  &nbsp;<img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px"><br /><br />
                </span>
            <div class="row form-group">
                <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist" style=" background: #f8f9fa;">
                            <a class="nav-item nav-link active border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="personalDetials" data-toggle="tooltip" href="#personal_tab" data-placement="top" title="" data-original-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="true">
                                <i class="fa fa-user mr-2"></i>Personal Details <span class="text-info" style="font-size: 20px" id="personal_check"></span>
                            </a>
                            <a class="nav-item nav-link border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="applicationDetails" data-toggle="tooltip" href="#application_tab" data-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="false">
                                <i class="fa fa-globe mr-2"></i> Application Details<span class="text-info" style="font-size: 20px" id="location_check"></span>
                            </a>
                            <a class="nav-item nav-link border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="attachmentDetaials" data-toggle="tooltip" href="#attachment_tab" data-placement="top" title="Please use buttons to change tabs" data-original-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="false">
                                <i class="fa fa-paperclip mr-2"></i>Attachments<span class="text-info" style="font-size: 20px" id="attachmentcheck"></span>
                            </a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <form action="#" id="onlineApplication" method="post" enctype="multipart/form-data">
                            <div class="">
                                <div class="tab-pane fade show active" id="personal_tab" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="card">
                                        <div class="card-body border-dark">
                                            <div class="form-inline form-group row mb-4">
                                                    <label class="col-lg-2 col-md-2 col-sm-2 col-xs-12"><b>CID Number: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's BHUTANESE CITIZENSHIP IDENTITY CARD NUMBER">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control col-lg-3 col-md-3 col-sm-3 col-xs-12"  name="cid_Number" id="cid_Number" placeholder="Enter CID Number"/>

                                                    <label class="col-lg-2 col-md-2 col-sm-2 col-xs-12"><b>Date of birth: <span class="text-danger">*</span></b>
                                                         <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's DATE OF BIRTH">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="date" class="form-control col-lg-3 col-md-3 col-sm-3 col-xs-12 "  name="dob" id="dob" placeholder="Enter Date Of Birth"/>

                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <button type="button" class="btn btn-primary sm-2">Search</button>
                                            </div>
                                            <span id="cid_Number_Validation" class="text-danger"></span>
                                            <span id="dob_Validation" class="text-danger"></span>
                                             <hr>
                                            <span> <b><i><u><i class="fa fa-address-card fa-md"> &nbsp;&nbsp;&nbsp;</i>Personal Details</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>First Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="first_Name" id="firstName"/>
                                                    <span id="first_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Middle Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="middle_Name" id="middle_Name"/>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Last Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="last_Name" id="last_Name"/>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Date of Birth: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="date_Of_Birth" id="date_Of_Birth" />
                                                    <span id="date_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Gender: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="gender" id="gender"/>
                                                    <span id="gender_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Security Clearance Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="scc_No" id="sccNo" />
                                                    <span id="scc_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="form-group pull-right">
                                            <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12">
                                                <button class="btn btn-success fa-pull-right" id="nextPersonal" onclick="next_tab('personal')" type="button">Next&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-alt-circle-right"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="application_tab" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Have you been issued any travel document other than a Bhutanese travel document before ?<span class="text-danger">*</span></b>
                                                    </label>
                                                    <div class="">
                                                        <input type="radio" name="other_Travel_Doc"  onclick="showIssuedByDiv('Y')" id="issueByYes" value="Y"/>YES
                                                        <input type="radio" name="other_Travel_Doc"  onclick="showIssuedByDiv('N')" class="ml-4" id="issueByNo" value="N" /> NO
                                                    </div>
                                                    <span id="other_Travel_Doc_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group" id="issuedById" style="display:none">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <label><b>Issued By: <span class="text-danger">*</span></b></label>
                                                        <div class="col-sm-12">
                                                        <textarea name="priv_TrDoc_IssuedBy" id="priv_TrDoc_IssuedBy"class="form-control" placeholder="Agency Name"></textarea>
                                                        <span id="issueByAddressValidation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            </div>
                                            <hr />
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Apply For<span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Select the TYPE OF PASSPORT you want to avail">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <div class="">
                                                        <input type="radio" name="passport_Type"  id="applyForVal1" value="42" onchange="radioValueSet('42')" />Diplomatic
                                                        <input type="radio" name="passport_Type"  class="ml-4" id="applyForVal2" value="41" onchange="radioValueSet('41')"/> Official
                                                        <input type="radio" name="passport_Type"  class="ml-4" id="applyForVa3" value="40" onchange="radioValueSet('40')" />Ordinary
                                                    </div>
                                                    <span id="applyFor_Validation" class="text-danger"></span>
                                                </div>
                                                <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                               <%-- <div class="container p-3">--%>
                                                    <div class="table table-hover">
                                                        <table class="table table-bordered" id="existingPassportDetails" style="display:none">
                                                            <thead>
                                                            <tr>
                                                                <th>Passport Type</th>
                                                                <th>Applicant's Name </th>
                                                                <th>Date Of Birth</th>
                                                                <th>Place Of Birth</th>
                                                                <th>Issue Date</th>
                                                                <th>Expiry Date</th>
                                                                <th>Passport Number</th>
                                                                <th>Reason for Applying</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>

                                                            </tbody>
                                                        </table>
                                                    </div>
                                               <%-- </div>--%>
                                              </div>
                                             </div>
                                            </div>
                                            <hr />
                                            <span> <b><i><u><i class="fa fa-address-card fa-md">  &nbsp;&nbsp;&nbsp;</i>Enter application details</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Place of Birth:<span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's PLACE OF BIRTH">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="place_Of_Birth" id="place_Of_Birth" placeholder="Enter Place of Birth"/>
                                                    <span id="place_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mobile Number:<span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's valid MOBILE NUMBER">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="mobile_Number" id="mobile_Number" placeholder="Enter Mobile Number"/>
                                                    <span id="mobile_Number_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Office Number:</b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's valid OFFICE NUMBER(optional)">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="cont_No_Office" id="cont_No_Office" placeholder="Enter Office Number" />
                                                    <span id="cont_No_Office_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Residence Number: </b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's valid RESIDENCE NUMBER(optional)">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="cont_No_Resi" id="cont_No_Resi" placeholder="Enter Residence Number"/>
                                                    <span id="cont_No_Resi_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Email Address:</b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's valid EMAIL ADDRESS(optional)">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text" id="emailAddressInputGroupPrepend">@</span>
                                                        </div>
                                                        <input type="text" class="form-control" name="email_Address" id="email_Address" placeholder="Enter Email Address"/>
                                                    </div>

                                                    <span id="email_Address_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <hr/>
                                            <div class="form-group fa-pull-right">
                                                <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12 ">
                                                    <button class="btn btn-success" onclick="pre_tab('application')" type="button"><i class="fa fa-arrow-alt-circle-left"></i>Previous</button>
                                                    <button class="btn btn-success" onclick="next_tab('application')" type="button">Next<i class="fa fa-arrow-alt-circle-right"></i></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="attachment_tab" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <span> <b><i><u><i class="fa fa-tty fa-md">  &nbsp;&nbsp;&nbsp;</i>Person to be contacted in the event of emergency</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Full Name: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter Full Name of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                      <input type="text" class="form-control" name="emr_Name" id="emr_Name" placeholder="Enter Full Name"/>
                                                    <span id="emr_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mobile Number: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter valid Mobile Number of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="cont_No_Resi" id="emr_Phone_No" placeholder="Enter Mobile Number"/>
                                                    <span id="emr_Phone_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>

                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Address: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter Address of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <textarea name="emr_Address" id="emr_Address"class="form-control" placeholder="Present Address(Villege,Gewog,Dzongkhag)"></textarea>
                                                    <span id="emr_Address_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <hr/>
                                            <span> <b><i><u><i class="fa fa-upload fa-md">  &nbsp;&nbsp;&nbsp;</i>Attachments</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12" ><b>Application Form: <span class="text-danger">*</span></b></label>
                                                    <input type="file" name="files" id="applicationForm" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'applicationForm','filecheck1')">
                                                    <input type="hidden"  name="name" value="Application_Form">
                                                    <i id="filecheck1" class="fa fa-times"></i>
                                                </div>
                                            </div>
                                            <div class="form-group row" id="hroDiv" style="display:none;">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><b>HRO Concern Letter: <span class="text-danger">*</span></b></label>
                                                    <input type="file" name="files" id="hroLetterForm" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'hroLetterForm','filecheck2')">
                                                    <input type="hidden" name="name" value="HRO_Letter_Form">
                                                    <i id="filecheck2" class="fa fa-times"></i>
                                                </div>
                                            </div>
                                            <div class="form-group row" id="parentsDiv" style="display:none;">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><b>Parents Consent Letter: <span class="text-danger">*</span></b></label>
                                                    <input type="file" name="files" id="parentsConsentLetter" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'parentsConsentLetter','filecheck3')">
                                                    <input type="hidden" name="name" value="Parents_Consent_Letter">
                                                    <i id="filecheck3" class="fa fa-times"></i>
                                                </div>
                                            </div>
                                            <div class="form-group row" id="policeClearanceDiv" style="display:none;">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><b>Police Clearance Letter: <span class="text-danger">*</span></b></label>
                                                    <input type="file" name="files" id="policeClearanceLetter" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'policeClearanceLetter','filecheck4')">
                                                    <input type="hidden" name="name" value="Police_Clearance_Letter">
                                                    <i id="filecheck4" class="fa fa-times"></i>
                                                </div>
                                            </div>
                                            <div class="form-group fa-pull-right">
                                                <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12">
                                                    <button class="btn btn-success" onclick="pre_tab('attachment')" type="button"><i class="fa fa-arrow-alt-circle-left"></i>Previous</button>
                                                    <button class="btn btn-primary btn-sm-2" id="btnSubmit" type="submit">Submit form</button>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" class="form-control" name="processed_Passport_No" id="processed_Passport_No"/>
                               <%-- <input type="text" class="form-control" name="passport_Type" id="passport_Type"/>--%>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    var applyForVar = 'N';
    /*$("#btnSubmit").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        $.ajax({
            url: globalConfig.context+'/dopPublic/save',
            type:'POST',
            data: $('#onlineApplication').serializeArray(),
            success: function (res) {
                alert(res);
            }
        });
    });*/

    $("#btnSubmit").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        var form = $('#onlineApplication')[0];
        var data = new FormData(form);
        $.ajax({
            url: globalConfig.context+'/dopPublic/saveOnlineApplication',
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: data,
            success: function (res){
                alert(res);
            }
        });
    });

    $("#personalDetials").css("color","white");
    $("#personalDetials").css("background-color","rgb(18, 18, 19)");

    $('#applicationDetails').not('.active').addClass('disabled');
    $('#applicationDetails').not('.active').find('a').removeAttr("data-toggle");
    $("#applicationDetails").css("color","black");

    $('#attachmentDetaials').not('.active').addClass('disabled');
    $('#attachmentDetaials').not('.active').find('a').removeAttr("data-toggle");
    $("#attachmentDetaials").css("color","black");

    function next_tab(val){

       // alert(val+"////"+validatePersonal());
        if(val=="personal" && validatePersonal()){
            $('#personalDetials').removeClass("active");
            $("#personalDetials").css("color","white");
            $("#personalDetials").css("background-color","rgb(64, 66, 68)");
            $('#personal_tab').removeClass("active");
            $('#personal_tab').hide();
            $('#personal_check').html('&nbsp;<i class="fa fa-check text-white"></i>');
            $('#application_tab').prop('class', 'tab-pane active');
            $('#application_tab').show();
            $("#applicationDetails").css("background-color","rgb(18, 18, 19)");
            $("#applicationDetails").css("color","white");
            $('#application_tab').addClass('active');
            $('#applicationDetails').addClass('active');

        }
        if(val=="application"  && validateApplication()){
            $('#applicationDetails').removeClass("active");
            $("#applicationDetails").css("color","white");
            $("#applicationDetails").css("background-color","rgb(64, 66, 68)");
            $('#application_tab').removeClass("active");
            $('#application_tab').hide();
            $('#attachment_tab').show();
            $('#location_check').html('&nbsp;<i class="fa fa-check text-white"></i>');
            $('#attachment_tab').prop('class', 'tab-pane active');
            $("#attachmentDetaials").css("background-color","rgb(18, 18, 19)");
            $("#attachmentDetaials").css("color","white");
        }
        if(val=="attachment"  && validateAttachment()){
            $('#attachment_tab').show();
            $('#location_check').html('&nbsp;<i class="fa fa-check text-white"></i>');
            $('#attachment_tab').prop('class', 'tab-pane active');
            $("#attachmentDetaials").css("background-color","rgb(18, 18, 19)");
            $("#attachmentDetaials").css("color","white");
        }
    }
    function pre_tab(val){
        if(val=="application" ){
            $('#personal_tab').prop('class', 'tab-pane active');
            $("#personalDetials").css("background-color","rgb(18, 18, 19)");
            $('#applicationDetails').removeClass("active");
            $('#application_tab').removeClass("active");
            $("#applicationDetails").css("background-color","rgb(64, 66, 68)");
            $('#personal_tab').show();
            $('#application_tab').hide();
        }
        if(val=="attachment"){
            $('#application_tab').prop('class', 'tab-pane active');
            $("#applicationDetails").css("background-color","rgb(18, 18, 19)");
            $('#application_tab').show();
            $('#attachmentDetaials').removeClass("active");
            $('#attachment_tab').removeClass("active");
            $("#attachmentDetaials").css("background-color","rgb(64, 66, 68)");
            $('#attachment_tab').hide();
        }
    }

   function validatePersonal() {

   var returnVal = true;
       /* debugger;
        if ($('#cidNumber').val() == "") {
            bootstrapValidate('#cidNumber', 'numeric:Please Provide 11 digit bhutanese cid number')
            bootstrapValidate('#cidNumber', 'max:11:Please Provide 11 digit bhutanese cid number')
            $('#cidNumber').focus();
            returnVal = false;
        }

        if ($('#dob').val() == "") {
            bootstrapValidate('#dob', 'requied:Date of birth requied')
            $('#dob').focus();
            returnVal = false;
        }
        if ($('#firstName').val() == "") {
            bootstrapValidate('#firstName', 'alpha:First Name requied')
            $('#firstName').focus();
            returnVal = false;
        }
        if ($('#sccNo').val() == "") {
            bootstrapValidate('#sccNo', 'requied:Security Clearance Number requied')
            $('#sccNo').focus();
            returnVal = false;
        }*/

        return returnVal;
    }


    /* $(document).ready(function () {
           $("#onlineApplication").validate({
               ignore: '',
              rules:{
                  first_Name:'required'

              },
               message:{
                   first_Name:{required: 'Please search personal information'},
               },

           });

       });*/


     /*   if($('#cid_Number').val()=="" ){
            $('#cid_Number_Validation').html('Please Provide 11 digit bhutanese cid number');
            $('#cid_Number').focus();
            returnVal= false;
        }
        else{
            $('#cid_Number_Validation').html('');
        }
        if($('#dob').val()==""){
            $('#dob_Validation').html('Please Select Ownership Type');
            returnVal= false;
        }
        if($('#first_Name').val()==""){
            $('#first_Name_Validation').html('First Name requied');
            $('#cid_Number').focus();
            returnVal= false;
        }
        if($('#gender').val()==""){
            $('#gender_Validation').html('Security Clearance Number requied');
            returnVal= false;
        }

        if($('#scc_No').val()==""){
            $('#scc_No_Validation').html('Security Clearance Number requied');
            returnVal= false;
        }*/

     //  return returnVal;


    function validateApplication() {
        var returnVal=true;
        if($('#mobile_Number').val()==""){
            $('#mobile_Number_Validation').html('Please provide your mobile phone number');
            $('#mobile_Number').focus();
            returnVal=false;
        }
        else  if($('#mobile_Number').val().length!="8"){
            $('#mobile_Number_Validation').html('Your mobile number should be 8 digit');
            $('#mobile_Number').focus();
            returnVal=false;
        }
        else{
            $('#mobile_Number_Validation').html('');
        }
        /*if($('#mobile_Number').val()==""){
            $('#mobile_Number_Validation').html('Valid mobile number required');
            $('#mobile_Number').focus();
            returnVal=false;
        }
        else{
            $('#mobile_Number_Validation').html('');
        }*/

        /*if($('#mobile_Number').val()==""){
            $('#mobile_Number_Validation').html('Security Clearance Number requied');
            returnVal= false;*/
       // }
        if(applyForVar != "Y"){
            document.getElementById("applyFor_Validation").innerHTML = "<div class='alert alert-danger'>Select atleast one option</div>";
            $('#applyFor_Validation').show();
            returnVal= false;
        }

        return returnVal;
    }
    function showIssuedByDiv(val){
        if(val=="Y"){
            $('#issuedById').show();
        }
        else{
            $('#issuedById').hide();
        }
    }

    function validateAttachment() {
        var returnVal=true;
       /* if($('#emr_Name').val()==""){
            $('#emr_Name_Validation').html('Security Clearance Number requied');
            returnVal= false;
        }*/

        return returnVal;
    }


    function radioValueSet(val) {
       // alert(val);
        loadOnlineExistingPassports(val);
        $('#applyFor_Validation').hide();
        if(val == '41'){
            document.getElementById('hroDiv').style.display = 'block';
            selectedApplyForValue = "OFFICIAL";
        }
        else if(val == '42'){
            document.getElementById('hroDiv').style.display = 'block';
            selectedApplyForValue = "DIPLOMATIC";
        }
        else{
            document.getElementById('hroDiv').style.display = 'none';
            selectedApplyForValue = "";
        }

        if(val=='40' || val=='41' || val=='42' || val=='43'){
            //document.getElementById('applyForHiddenOnline').value = val;
            applyForVar = 'Y';
        }
    }


    function loadOnlineExistingPassports(val)
    {
        debugger;
        var cidNumber = $('#cid_Number').val();
       // applyFor = val;
        $.ajax({
            async: true,
            type: 'GET',
            url:globalConfig.context+'/common/existingPassports',
            data:{cidNumber: cidNumber,applyFor: val},
            success : function(res) {
               // alert(res.length);
                if(res.length >= 1){
                    $('#existingPassportDetails').show();
                    $("#existingPassportDetails tbody").empty();
                    var str="";
                    for (var i = 0; i < res.length; i++){
                       // alert( res[i].date_Of_Birth);
                        str+="<tr>" +
                                "<td>" + res[i].passport_Type+ "</td>" +
                                "<td>" + res[i].full_Name + "</td>" +
                                "<td>" + res[i].date_Of_Birth+ "</td>" +
                                "<td class='birthPlace_"+i+"'>" + res[i].place_Of_Birth+ "</td>" +
                                "<td>" + res[i].issue_Date + "</td>" +
                                "<td>" + res[i].passport_Expiry_Date + "</td>" +
                                "<td class='passportNo_"+i+"'>" + res[i].passport_No + "</td>" +
                                "<td> <div class=\"radio\">\n" +
                                "<label><input type=\"radio\"id=\"reason\ \" name=\"optradio\" onchange=\"reasonRadioValueSet('1',"+i+")\" >Lost/Stolen</label><br>"+
                                "<label><input type=\"radio\" id=\"reason\ \" name=\"optradio\" onchange=\"reasonRadioValueSet('2',"+i+")\">Damaged</label><br>" +
                                "<label><input type=\"radio\" id=\"reason\ \" name=\"optradio\" onchange=\"reasonRadioValueSet('3',"+i+")\">Expired/No Empty Page</label><br>" +
                                "<label><input type=\"radio\"id=\"reason\  \" name=\"optradio\"onchange=\"reasonRadioValueSet('4',"+i+")\">Name/DOB Change</label><br>" +
                                "<label><input type=\"radio\"id=\"reason\ \" name=\"optradio\" onchange=\"reasonRadioValueSet('5',"+i+")\">Not Enough Validity</label>" +
                                "</div></td>" +
                            "</tr>";
                              }
                              $("#existingPassportDetails tbody").append(str);
                              }else {
                             $("#existingPassportDetails tbody").empty();

                                 str+="<tr><th colspan='8'><strong>No existing passport found.</strong></th></tr>";
                             $("#existingPassportDetails tbody").append(str);

                      }

            },
            error: function(data, textStatus, errorThrown) {}
        });
    }
    function reasonRadioValueSet(val,id) {
        var birthPlace = $(".birthPlace_"+id).text();
        var passportNo = $(".passportNo_"+id).text();
       // alert(passportNo);
        $("#place_Of_Birth").val(birthPlace);
        $("#processed_Passport_No").val(passportNo);


        debugger;


    }


</script>
</body>
