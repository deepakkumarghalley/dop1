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
            <b>Apply for Passport / </b>Passport Submitted Applications
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
                        <form action="#" id="uploadApplication" method="post" enctype="">
                            <c:forEach var="passport" items="${populateSubmitted}">
                             <div class="">
                                <div class="tab-pane fade show active" id="personal_tab" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="card">
                                        <div  align="center">
                                            <h4><u>Application Form for CID No.-${passport.application_Number},&nbsp;${passport.cid_Number}</u></h4>
                                        </div>

                                        <div class="card-body border-dark">
                                            <span> <b><i><u><i class="fa fa-address-card fa-md"> &nbsp;&nbsp;&nbsp;</i>Existing Passport Details </u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="row" id="existingPassportDetailsDiv">
                                                <div class="col-lg-12">
                                                    <div class="card">
                                                        <div class="card-body" style ="background: beige;">Existing Passport Details</div>
                                                        <div class="table-responsive" id="" >
                                                            <table class="table table-striped table-bordered table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th><b>Passport Type</b></th>
                                                                    <th><b>Applicant's Name</b></th>
                                                                    <th><b>Date of Birth</b></th>
                                                                    <th><b>Place Of Birth</b></th>
                                                                    <th><b>Issue Date</b></th>
                                                                    <th><b>Expiry Date</b></th>
                                                                    <th><b>Passport Number</b></th>
                                                                    <th><b>Reason for Applying</b></th>
                                                                </tr>
                                                                </thead>
                                                                <tbody>
                                                                <tr>
                                                                    <td>Ordinary</td>
                                                                    <td>Deepak Kumar Ghalley</td>
                                                                    <td>30/06/1988</td>
                                                                    <td>Samtse</td>
                                                                    <td>29/12/2017</td>
                                                                    <td>28/12/2027</td>
                                                                    <td>G111199</td>

                                                                    <td>Expired/No Empty Page </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <span> <b><i><u><i class="fa fa-address-card fa-md"> &nbsp;&nbsp;&nbsp;</i>Personal Details</u></i></b> </span>
                                            <br>
                                            <br>


                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>First Name: <span class="text-danger">*</span></b></label>

                                                        <input type="text" class="form-control"  name="first_Name" value="${passport.first_Name}"  id="first_Name" />
                                                    <span id="first_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Middle Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="middle_Name" value="${passport.middle_Name}"  id="middle_Name"/>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Last Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="last_Name" value="${passport.last_Name}"  id="last_Name"/>
                                                </div>
                                            </div>

                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Date of Birth: <span class="text-danger">*</span></b></label>
                                                    <input type="Date" class="form-control" value="${passport.date_Of_Birth}" id="date_Of_Birth1111" />
                                                    <span id="date_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Gender: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.gender}" name="gender" id="gender"/>
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
                                                    <input type="text" class="form-control"  name="dzongkhag_Name" value="${passport.dzongkhag_Name}"  id="dzongkhag_Name" />
                                                    <%--<select name="Dzongkhag_Serial_No" style="width:100%;" class="chosen-select form-control" id="dzongkhag_sl_no" onchange="getCommonDropdown(this.value,'gewog_list','gewog_sl_no')">
                                                        <option value="">Select Dzongkhag</option>
                                                        <c:forEach var="dzo" items="${Dzongkhag_List}" varStatus="counter">
                                                            <option value="${dzo.header_id}">${dzo.header_name}</option>
                                                        </c:forEach>
                                                    </select>--%>
                                                    <span id="dzongkhag_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Gewog: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control"  name="gewog_Name" value="${passport.gewog_Name}"  id="gewog_Name" />
                                                    <%--<select name="Gewog_Serial_No" style="width:100%;" class="chosen-select form-control" id="gewog_sl_no" onchange="getCommonDropdown(this.value,'village_List','village_sl_no')">
                                                        <option value="">Select Gewog</option>
                                                    </select>--%>
                                                    <span id="gewog_sl_no_err" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Village: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control"  name="village_Name" value="${passport.village_Name}"  id="village_Name" />
                                                    <%--<select name="Village_Serial_No" style="width:100%;" class="chosen-select form-control" id="village_sl_no">
                                                        <option value="">Select Village</option>
                                                    </select>--%>
                                                    <span id="village_sl_no_err" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Previous Nationality: <span class="text-danger">*</span></b></label>
                                                   <%-- <select name="nationality_Id" style="width:100%;" class="chosen-select form-control" id="nationality_Id">
                                                        <option value="">Select Country</option>
                                                        <c:forEach var="country" items="${CountryList}" varStatus="counter">
                                                            <option value="${country.header_id}">${country.header_name}</option>
                                                        </c:forEach>
                                                    </select>--%>
                                                    <input type="text" class="form-control"  name="nationality_Desc" value="${passport.nationality_Desc}"  id="nationality_Desc" />
                                                    <span id="nationality_Id_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Occupation: <span class="text-danger">*</span></b></label>
                                                   <%-- <select name="Occupation_Id" style="width:100%;" class="chosen-select form-control" id="Occupation_Id">
                                                        <option value="">Select Occupation</option>
                                                        <c:forEach var="occupation" items="${OccupationList}" varStatus="counter">
                                                            <option value="${occupation.header_id}">${occupation.header_name}</option>
                                                        </c:forEach>
                                                    </select>--%>
                                                    <input type="text" class="form-control"  name="occupation_Desc" value="${passport.occupation_Desc}"  id="occupation_Desc" />
                                                    <span id="occupation_Id_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Father's Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="father_Name" value="${passport.first_Name}" id="father_Name" />
                                                    <span id="father_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Father's CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.father_CID_No}" name="father_CID_No" id="father_CID_No"/>
                                                    <span id="father_CID_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.mother_Name}" name="mother_Name" id="mother_Name" />
                                                    <span id="mother_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.mother_CID_No}" name="mother_CID_No" id="mother_CID_No"/>
                                                    <span id="mother_CID_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.spouse_Name}" name="spouse_Name" id="spouse_Name" />
                                                    <span id="spouse_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mother's CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.spouse_CID_No}" name="spouse_CID_No" id="spouse_CID_No"/>
                                                    <span id="spouse_CID_No_Validation" class="text-danger"></span>
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
                                                    <label><b>Place of Birth:<span class="text-danger">*</span></b> </label>
                                                     <input type="text" class="form-control" value="${passport.place_Of_Birth}"  name="place_Of_Birth" id="place_Of_Birth" placeholder="Enter Place of Birth"/>
                                                    <span id="place_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <span> <b><i><u><i class="fa fa-tty fa-md">  &nbsp;&nbsp;&nbsp;</i>Contact(atleast one of the followings)</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Mobile Number:<span class="text-danger">*</span></b> </label>
                                                    <input type="text" class="form-control" value="${passport.cont_No_Mobile}"  name="mobile_Number" id="mobile_Number" placeholder="Enter Mobile Number"/>
                                                    <span id="mobile_Number_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Office Number:</b> </label>
                                                    <input type="text" class="form-control" value="${passport.cont_No_Office}"  name="cont_No_Office" id="cont_No_Office" placeholder="Enter Office Number" />
                                                    <span id="cont_No_Office_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Residence Number: </b> </label>
                                                    <input type="text" class="form-control" value="${passport.cont_No_Resi}"  name="cont_No_Resi" id="cont_No_Resi" placeholder="Enter Residence Number"/>
                                                    <span id="cont_No_Resi_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <span> <b><i><u><i class="fa fa-tty fa-md">  &nbsp;&nbsp;&nbsp;</i>Person to be contacted in the event of emergency</u></i></b> </span>
                                            <br>
                                            <br>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Full Name: <span class="text-danger">*</span></b> </label>
                                                    <input type="text" class="form-control" value="${passport.emr_Name}"  name="emr_Name" id="emr_Name" placeholder="Enter Full Name"/>
                                                    <span id="emr_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Mobile Number: <span class="text-danger">*</span></b> </label>
                                                    <input type="text" class="form-control" value="${passport.emr_Phone_No}"  name="cont_No_Resi" id="emr_Phone_No" placeholder="Enter Mobile Number"/>
                                                    <span id="emr_Phone_No_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Address: <span class="text-danger">*</span></b> </label>
                                                    <textarea name="emr_Address" id="emr_Address"class="form-control" value="${passport.emr_Address}" placeholder="Present Address(Villege,Gewog,Dzongkhag)"></textarea>
                                                    <span id="emr_Address_Validation" class="text-danger"></span>
                                                </div>
                                               <hr/>
                                                <div class="container">
                                                    <div class="table table-responsive">
                                                        <table class="table table-striped table-bordered table-hover">
                                                            <thead>
                                                            <tr>
                                                                <th>Sl.No</th>
                                                                <%--<th>File Type</th>--%>
                                                                <th>File Type</th>
                                                                <th>File Name</th>
                                                                <th>Action</th>

                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <c:forEach var="doc" items="${uploadedDocsList}">
                                                            <tr>
                                                                <td>${counter.index + 1}</td>
                                                                <td>${doc.document_Type}</td>
                                                                <td>${doc.document_Name}</td>
                                                                <td><a href="<c:url value='/downloadDocument${doc.uuid}' />" class="btn btn-success custom-width">Download</a>
                                                               <%-- <a href="<c:url value='/downloadDocument${doc.uuid}' />" class="btn btn-danger custom-width">Delete</a></td>--%>
                                                                </tr>
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                        <div class="form-group row" id="parentsDiv">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><b>Passport Photo: <span class="text-danger">*</span></b></label>
                                                                <input type="file" name="files" id="passportPhoto" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'passportPhoto','filecheck3')"  class="bg-danger text-white">This text represents danger./>
                                                                <input type="hidden" name="name" value="Passport_Photo">

                                                                <i id="filecheck3" class="fa fa-times"></i>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row" id="policeClearanceDiv">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <label class="col-lg-4 col-md-4 col-sm-4 col-xs-12"><b>Scan Signature of the bearer: <span class="text-danger">*</span></b></label>
                                                                <input type="file" name="files" id="policeClearanceLetter" class="alert badge-danger col-lg-8" onchange="validateAttach(this.value,'policeClearanceLetter','filecheck4')">
                                                                <input type="hidden" name="name" value="Police_Clearance_Letter">
                                                                <i id="filecheck4" class="fa fa-times"></i>
                                                            </div>
                                                        </div>
                                                    </div>
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
                                                      <input type="text" class="form-control" value="${passport.scc_No}"  name="scc_No" id="scc_No" />
                                                    <span id="scc_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mode of Payment: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" value="${passport.payment_Mode}"  name="payment_Mode" id="payment_Mode" />


                                                    <span id="payment_Mode_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Payment Receipt No:<span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control"  value="${passport.payment_Recipt_No}" name="payment_Recipt_No" id="payment_Recipt_No" />
                                                    <span id="payment_Recipt_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div></c:forEach>
                                            <div class="form-group fa-pull-right">
                                                <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12 ">
                                                    <button class="btn btn-success" onclick="pre_tab('application')" type="button"><i class="fa fa-arrow-alt-circle-left"></i>Previous</button>
                                                    <button class="btn btn-primary btn-sm-2" id="btnUpload" type="submit">Submit form</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    function downloadFile(uuid){
        window.location = '${globalConfig.context}/downloadDocuments?uuid='+uuid;
    }


 /*   $("#btnSubmit").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        $.ajax({
            url: globalConfig.context+'/saveApplication',
            type:'POST',
            data: $('#uploadApplication').serializeArray(),
            success: function (res) {
                alert(res);
            }
        });
    });
    $('#btnSubmit').prop('disabled',true);
    $('#uploadApplication').prop('disabled', true);*/

    $("#btnUpload").on('click', function (e) {
        e.preventDefault();
        alert('submit application');
        debugger;
        var form = $('#uploadApplication')[0];
        var data = new FormData(form);
        $.ajax({
            url: globalConfig.context+'/uploadApplication',
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
    $('#btnUpload').prop('disabled',true);
    $('#uploadApplication').prop('disabled', true);


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





</script>
</body>
