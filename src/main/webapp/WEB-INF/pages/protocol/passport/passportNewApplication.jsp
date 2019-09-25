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
                  &nbsp;&nbsp;&nbsp;&nbsp;NOTE:  Label which are mark with * are mandatory fields, you cannot proceed further without those fields.
                 &nbsp;&nbsp;  <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px"><br /><br />
                </span>
            <div class="row form-group">
                <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist" style=" background: #f8f9fa;">
                            <a class="nav-item nav-link active border col-md-6 col-sm-6 col-lg-6 col-xs-12" id="personalDetials" data-toggle="tooltip" href="#personal_tab" data-placement="top" title="" data-original-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="true">
                                <i class="fa fa-user mr-2"></i>Personal Details <span class="text-info" style="font-size: 20px" id="personal_check"></span>
                            </a>
                            <a class="nav-item nav-link border col-md-6 col-sm-6 col-lg-6 col-xs-12" id="applicationDetails" data-toggle="tooltip" href="#application_tab" data-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="false">
                                <i class="fa fa-globe mr-2"></i> Application Details<span class="text-info" style="font-size: 20px" id="location_check"></span>
                            </a>

                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <form action="#" id="newApplication" method="post" enctype="">
                            <div class="">
                                <div class="tab-pane fade show active" id="personal_tab" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="card">
                                        <div class="card-body border-dark">
                                            <div class="form-inline form-group row mb-4">
                                                <label class="col-lg-3 col-md-3 col-sm-3 col-xs-12"><b>Enter Citizen ID Number: <span class="text-danger">*</span></b>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's BHUTANESE CITIZENSHIP IDENTITY CARD NUMBER">
                                                        <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                    </a>
                                                </label>
                                                <input type="text" class="form-control col-lg-7 col-md-7 col-sm-7 col-xs-12"  name="cid_Number" id="cid_Number" placeholder="Enter CID Number"/>
                                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary sm-2">Search</button>
                                            </div>
                                            <hr>
                                            <span> <b><i><u><i class="fa fa-address-card fa-md"> &nbsp;&nbsp;&nbsp;</i>Personal Details</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>First Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="first_Name" id="first_Name"/>
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
                                                    <input type="text" class="form-control" name="date_Of_Birth111" id="date_Of_Birth1111" />
                                                    <span id="date_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Gender: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="gender" id="gender"/>
                                                    <span id="gender_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <hr>
                                            <span> <b><i><u><i class="fa fa-address-card fa-md"> &nbsp;&nbsp;&nbsp;</i>Permanent Address </u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Dzongkhag: <span class="text-danger">*</span></b></label>
                                                    <select name="Dzongkhag_Serial_No" style="width:100%;" class="chosen-select form-control" id="dzongkhag_sl_no" onchange="getCommonDropdown(this.value,'gewog_list','gewog_sl_no')">
                                                        <option value="">Select Dzongkhag</option>
                                                        <c:forEach var="dzo" items="${Dzongkhag_List}" varStatus="counter">
                                                            <option value="${dzo.header_id}">${dzo.header_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span id="dzongkhag_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Gewog: <span class="text-danger">*</span></b></label>
                                                    <select name="Gewog_Serial_No" style="width:100%;" class="chosen-select form-control" id="gewog_sl_no" onchange="getCommonDropdown(this.value,'village_List','village_sl_no')">
                                                        <option value="">Select Gewog</option>
                                                    </select>
                                                    <span id="gewog_sl_no_err" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Village: <span class="text-danger">*</span></b></label>
                                                    <select name="Village_Serial_No" style="width:100%;" class="chosen-select form-control" id="village_sl_no">
                                                        <option value="">Select Village</option>
                                                    </select>
                                                    <span id="village_sl_no_err" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Previous Nationality: <span class="text-danger">*</span></b></label>
                                                    <select name="nationality_Id" style="width:100%;" class="chosen-select form-control" id="nationality_Id">
                                                        <option value="">Select Country</option>
                                                        <c:forEach var="country" items="${CountryList}" varStatus="counter">
                                                            <option value="${country.header_id}">${country.header_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span id="nationality_Id_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Occupation: <span class="text-danger">*</span></b></label>
                                                        <select name="Occupation_Id" style="width:100%;" class="chosen-select form-control" id="Occupation_Id">
                                                            <option value="">Select Occupation</option>
                                                            <c:forEach var="occupation" items="${OccupationList}" varStatus="counter">
                                                                <option value="${occupation.header_id}">${occupation.header_name}</option>
                                                            </c:forEach>
                                                        </select>
                                                    <span id="occupation_Id_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Father's Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="father_Name" id="father_Name" />
                                                    <span id="father_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Father's CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="father_CID_No" id="father_CID_No"/>
                                                    <span id="father_CID_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="mother_Name" id="mother_Name" />
                                                    <span id="mother_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="mother_CID_No" id="mother_CID_No"/>
                                                    <span id="mother_CID_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="form-group pull-right">
                                            <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12">
                                                <button class="btn btn-success fa-pull-right" onclick="next_tab('personal')" type="button">Next&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-alt-circle-right"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="application_tab" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <div class="card">
                                        <div class="card-body">
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
                                                <br>
                                                <div class="container p-3">
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
                                                </div>
                                            </div>
                                            <hr />
                                            <span> <b><i><u><i class="fa fa-address-card fa-md">  &nbsp;&nbsp;&nbsp;</i>Enter application details</u></i></b> </span>
                                            <br>
                                            <br>
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
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Place of Birth:<span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's PLACE OF BIRTH">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="place_Of_Birth" id="place_Of_Birth" placeholder="Enter Place of Birth"/>
                                                    <span id="place_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <span> <b><i><u><i class="fa fa-tty fa-md">  &nbsp;&nbsp;&nbsp;</i>Contact(atleast one of the followings)</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Mobile Number:<span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter applicant's valid MOBILE NUMBER">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="mobile_Number" id="mobile_Number" placeholder="Enter Mobile Number"/>
                                                    <span id="mobile_Number_Validation" class="text-danger"></span>
                                                </div>
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
                                            </div>
                                            <span> <b><i><u><i class="fa fa-tty fa-md">  &nbsp;&nbsp;&nbsp;</i>Person to be contacted in the event of emergency</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Full Name: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter Full Name of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="emr_Name" id="emr_Name" placeholder="Enter Full Name"/>
                                                    <span id="emr_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Mobile Number: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter valid Mobile Number of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <input type="text" class="form-control" name="cont_No_Resi" id="emr_Phone_No" placeholder="Enter Mobile Number"/>
                                                    <span id="emr_Phone_No_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Address: <span class="text-danger">*</span></b>
                                                        <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Enter Address of person to be contacted in the event of EMERGENCY">
                                                            <img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px">
                                                        </a>
                                                    </label>
                                                    <textarea name="emr_Address" id="emr_Address"class="form-control" placeholder="Present Address(Villege,Gewog,Dzongkhag)"></textarea>
                                                    <span id="emr_Address_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="card-header"><i> <strong> Verification Informations </strong> </i><i class="ace-icon fa fa-angle-double-right"></i>
                                                Please tick the checkbox to select verification</div>
                                                <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input ml-4" value="">Person Verified
                                                    </label>
                                                    <div class="form-check-inline">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" class="form-check-input ml-4" value="">Damaged Passport Verified
                                                    </label>
                                                   </div>
                                                </div>
                                            </div>
                                             <hr/>

                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Security Clearance Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="scc_No" id="scc_No" />
                                                    <span id="scc_No_Validation" class="text-danger"></span>
                                                </div>
                                              </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mode of Payment: <span class="text-danger">*</span></b></label>
                                                    <div class="">
                                                        <input type="radio" name="payment_Mode"   id="cash" value="cash"/> Official
                                                        <input type="radio" name="payment_Mode"  class="ml-4" id="dd" value="dd"/>Ordinary
                                                    </div>

                                                    <span id="payment_Mode_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Payment Receipt No:<span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="payment_Recipt_No" id="payment_Recipt_No" />
                                                    <span id="payment_Recipt_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>

                                             <div class="form-group fa-pull-right">
                                                    <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12 ">
                                                        <button class="btn btn-success" onclick="pre_tab('application')" type="button"><i class="fa fa-arrow-alt-circle-left"></i>Previous</button>
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


    $("#btnSubmit").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        $.ajax({
            url: globalConfig.context+'/saveApplication',
            type:'POST',
            data: $('#newApplication').serializeArray(),
            success: function (res) {
                alert(res);
            }
        });
    });
    $('#btnSubmit').prop('disabled',true);
    $('#newApplication').prop('disabled', true);

   /* $("#btnSubmit").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        var form = $('#onlineApplication')[0];
        var data = new FormData(form);
        $.ajax({
            url: globalConfig.context+'/dopPublic/saveApplication',
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: data,
            success: function (res){
                alert(res);
            }
        });
    });*/

    $("#personalDetials").css("color","white");
    $("#personalDetials").css("background-color","rgb(18, 18, 19)");

    $('#applicationDetails').not('.active').addClass('disabled');
    $('#applicationDetails').not('.active').find('a').removeAttr("data-toggle");
    $("#applicationDetails").css("color","black");


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

    }

    function validatePersonal(){

        var returnVal=true;
        // debugger;

        /*if($('#cid_Number').val()=="" || $('#cid_Number').val().length!="11"){
            $('#cid_Number_Validation').html('Please Provide 11 digit bhutanese cid number');
            returnVal= false;
        }
        if($('#dob').val()==""){
            $('#dob_Validation').html('Please Select Ownership Type');
            returnVal= false;
        }
        if($('#first_Name').val()==""){
            $('#first_Name_Validation').html('First Name requied');
            returnVal= false;
        }
        if($('#scc_No').val()==""){
            $('#scc_No_Validation').html('Security Clearance Number requied');
            returnVal= false;
        }*/

        return returnVal;
    }

    function validateApplication() {
        var returnVal=true;
        /*if($('#mobile_Number').val()==""){
            $('#mobile_Number_Validation').html('Security Clearance Number requied');
            returnVal= false;*/
        // }

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

    function radioValueSet(val) {

        //alert(val);
        loadOnlineExistingPassports(val);



    }
    function loadOnlineExistingPassports(val)
    {
        debugger;
        var cidNumber = $('#cid_Number').val();
        var applyFor = val;


        //alert(cidNumber);
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
                        //alert( res[i].date_Of_Birth);
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
                    $("#existingPassportDetails tbody").append("<tr><td>no existing passport found</td></tr>");

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
