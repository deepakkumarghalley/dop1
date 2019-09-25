<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div class="container">
    <br />
    <h3><b>Ministry of Economic Affairs</b></h3>
    <div id="loadMainPage">
        <div class="card">
            <div class="card-header">
                <b>Application for Issuance of license / </b>Application Form
            </div>
            <div class="card-body">
                <span class="text-danger" >
                  &nbsp;&nbsp;&nbsp;&nbsp;NOTE:  Label which are mark with * are mandatory fields, you cannot proceed further without those fields.
                  Please follow the instruction in &nbsp;&nbsp;<img src="<c:url value="/resources/images/questionMark.jpg"/>" class="user-image" width="20px"><br /><br />
                </span>
                <span class=" text-center" style="display: none" id="draftInfoWrapper">
                     <div class="row form-group">
                         <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12 alert-info">
                             <span id="draftInfo"></span>
                         </div>
                     </div>
                </span>
                <div class="row form-group">
                    <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist" style=" background: #f8f9fa;">
                                <a class="nav-item nav-link active border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="personalDetials" data-toggle="tooltip" href="#personal_tab" data-placement="top" title="" data-original-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="true">
                                    <i class="fa fa-user mr-2"></i>Owner Details<span class="text-info" style="font-size: 20px" id="personal_check"></span>
                                </a>
                                <a class="nav-item nav-link border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="locationDetails" data-toggle="tooltip" href="#location_tab" data-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="false">
                                    <i class="fa fa-globe mr-2"></i> Location & Business Establishment<span class="text-info" style="font-size: 20px" id="location_check"></span>
                                </a>
                                <a class="nav-item nav-link border col-md-4 col-sm-4 col-lg-4 col-xs-12" id="attachmentDetaials" data-toggle="tooltip" href="#attachment_tab" data-placement="top" title="Please use buttons to change tabs" data-original-title='Please use buttons to change tabs.' role="tab" aria-controls="nav-contact" aria-selected="false">
                                    <i class="fa fa-paperclip mr-2"></i>Attachment<span class="text-info" style="font-size: 20px" id="attachmentcheck"></span>
                                </a>
                            </div>
                        </nav>
                        <form id="onlineApplication" action="#">
                            <div class="">
                                <div class="tab-pane fade show active" id="personal_tab" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="card">
                                        <div class="card-body border-dark">
                                            <div class="form-group row">
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                    <label><b>CID Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="cid_Number" id="cid_Number" placeholder="Enter CID Number"/>
                                                    <span id="cid_Number_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                    <label><b>Date of birth: <span class="text-danger">*</span></b></label>
                                                    <input type="date" class="form-control" name="dob" id="dob" placeholder="Enter Date Of Birth"/>
                                                    <span id="dob_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                                                    <button class="btn btn-primary btn-sm" type="button">Search</button>
                                                </div>
                                            </div>
                                            <span> <b><i><u><i class="fa fa-female fa-md"></i>Personal Details</u></i></b> </span>
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
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Security Clearance Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="scc_No" id="scc_No" />
                                                    <span id="scc_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="form-group pull-right">
                                            <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12">
                                                <button class="btn btn-success fa-pull-right" onclick="next_tab('personal')" type="button">Save and Next&nbsp;&nbsp;&nbsp;<i class="fa fa-arrow-alt-circle-right"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="location_tab" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Have you been issued any travel document other than a Bhutanese travel document before ?<span class="text-danger">*</span></b>
                                                    </label>
                                                    <div class="">
                                                        <input type="radio" name="issueBy"  onclick="showIssuedByDiv('Y')" id="issueByYes" value="Y"/>YES
                                                        <input type="radio" name="issueBy"  onclick="showIssuedByDiv('N')" class="ml-4" id="issueByNo" value="N" /> NO
                                                    </div>
                                                    <span id="issueBy_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <hr />
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Apply For<span class="text-danger">*</span></b>
                                                    </label>
                                                    <div class="">
                                                        <input type="radio" name="passport_Type"  id="applyForVal1" value="42" onchange="radioValueSet('42')" />Diplomatic
                                                        <input type="radio" name="passport_Type"  class="ml-4" id="applyForVal2" value="41" onchange="radioValueSet('41')"/> Official
                                                        <input type="radio" name="passport_Type"  class="ml-4" id="applyForVa3" value="40" onchange="radioValueSet('40')" />Ordinary
                                                    </div>
                                                    <span id="applyFor_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="container">
                                                    <div class="table table-responsive">
                                                        <table class="table table-striped table-bordered table-hover" id="existingPassportDetails" style="display:none">
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
                                            <span> <b><i><u><i class="fa fa-female fa-md"></i>Enter your personal details</u></i></b> </span>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                    <label><b>Place of Birth:<span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="place_Of_Birth" id="place_Of_Birth" />
                                                    <span id="place_Of_Birth_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                    <label><b>Mobile Number:<span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="mobile_Number" id="mobile_Number"/>
                                                    <span id="mobile_Number_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Office Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="cont_No_Office" id="cont_No_Office" />
                                                    <span id="cont_No_Office_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Residence Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="cont_No_Resi" id="cont_No_Resi"/>
                                                    <span id="cont_No_Resi_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                                    <label><b>Email Address: <span class="text-danger">*</span></b></label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text" id="emailAddressInputGroupPrepend">@</span>
                                                        </div>
                                                        <input type="text" class="form-control" name="email_Address" id="email_Address"/>
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
                                            <span> <b><i><u><i class="fa fa-female fa-md"></i>Person to be contacted in the event of emergency</u></i></b> </span>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Full Name: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="emr_Name" id="emr_Name"/>
                                                    <span id="emr_Name_Validation" class="text-danger"></span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                    <label><b>Mobile Number: <span class="text-danger">*</span></b></label>
                                                    <input type="text" class="form-control" name="cont_No_Resi" id="emr_Phone_No"/>
                                                    <span id="emr_Phone_No_Validation" class="text-danger"></span>
                                                </div>
                                            </div>

                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Address: <span class="text-danger">*</span></b></label>
                                                    <textarea name="emr_Address" id="emr_Address"class="form-control"></textarea>
                                                    <span id="emr_Address_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <hr/>
                                            <span> <b><i><u><i class="fa fa-female fa-md"></i>Attachments</u></i></b> </span>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>Application Form: <span class="text-danger">*</span></b></label>
                                                    <input type="file" id="application_Form" name="application_Form" class="file-upload" data-max-file-size="2M" />
                                                    <span id="application_Form_Validation" class="text-danger"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row mb-4">
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label><b>HRO Concern Letter: <span class="text-danger">*</span></b></label>
                                                    <input type="file" id="hro_Form" name="hro_Form" class="file-upload" data-max-file-size="2M" />
                                                    <span id="hroForm_Validation" class="text-danger"></span>
                                                </div>
                                            </div>

                                            <div class="form-group fa-pull-right">
                                                <div class="col-md-12 col-sm-12-col-lg-12 col-xs-12">
                                                    <button class="btn btn-success" onclick="pre_tab('attachment')" type="button"><i class="fa fa-arrow-alt-circle-left"></i>Previous</button>

                                                    <button class="btn btn-success" onclick="next_tab('attachment')" type="button">Next<i class="fa fa-arrow-alt-circle-right"></i></button>
                                                    <button class="btn btn-primary btn-sm" id="btnSubmit" type="submit">Submit form</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <input type="text" class="form-control" name="processed_Passport_No" id="processed_Passport_No"/>
                                <input type="text" class="form-control" name="passport_Type" id="passport_Type"/>

                            </div>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    $("#personalDetials").css("color","white");
    $("#personalDetials").css("background-color","rgb(18, 18, 19)");

    $('#locationDetails').not('.active').addClass('disabled');
    $('#locationDetails').not('.active').find('a').removeAttr("data-toggle");
    $("#locationDetails").css("color","black");

    $('#attachmentDetaials').not('.active').addClass('disabled');
    $('#attachmentDetaials').not('.active').find('a').removeAttr("data-toggle");
    $("#attachmentDetaials").css("color","black");
    function showLocationDtls(){
        $('#personalDetials').removeClass("active");
        $("#personalDetials").css("color","white");
        $("#personalDetials").css("background-color","rgb(64, 66, 68)");
        $('#personal_tab').removeClass("active");
        $('#personal_tab').hide();
        $('#location_tab').show();
        $('#personal_check').html('&nbsp;<i class="fa fa-check text-white"></i>');

        $('#location_tab').prop('class', 'tab-pane active');
        $("#locationDetails").css("background-color","rgb(18, 18, 19)");
        $("#locationDetails").css("color","white");
    }
    function showattachmentDtls(){
        $('#locationDetails').removeClass("active");
        $("#locationDetails").css("color","white");
        $("#locationDetails").css("background-color","rgb(64, 66, 68)");
        $('#location_tab').removeClass("active");
        $('#location_tab').hide();
        $('#attachment_tab').show();
        $('#location_check').html('&nbsp;<i class="fa fa-check text-white"></i>');

        $('#attachment_tab').prop('class', 'tab-pane active');
        $("#attachmentDetaials").css("background-color","rgb(18, 18, 19)");
        $("#attachmentDetaials").css("color","white");
    }


    function pre_tab(val){
        if(val=="location"){
            $('#personal_tab').prop('class', 'tab-pane active');
            $("#personalDetials").css("background-color","rgb(18, 18, 19)");
            $('#locationDetails').removeClass("active");
            $('#location_tab').removeClass("active");
            $("#locationDetails").css("background-color","rgb(64, 66, 68)");
            $('#personal_tab').show();
            $('#location_tab').hide();
        }
        if(val=="attachment"){
            $('#location_tab').prop('class', 'tab-pane active');
            $("#locationDetails").css("background-color","rgb(18, 18, 19)");
            $('#location_tab').show();

            $('#attachmentDetaials').removeClass("active");
            $('#attachment_tab').removeClass("active");
            $("#attachmentDetaials").css("background-color","rgb(64, 66, 68)");
            $('#attachment_tab').hide();
        }
    }

    function validatePersonal(){
        var returnVal=true;

        return returnVal;
    }
    function validateLocation(){
        var returnVal=true;


        return returnVal;
    }

/*    function showpostaladdr(val){
        if(val=="Y"){
            $('#postaladdid').show();
        }
        else{
            $('#postaladdid').hide();
        }
    }*/


    function validateattachment(){
        if($('#submit_form').prop('checked')){
            $('#btn_submit_final_form').prop('disabled',false);
        }
        else{
            $('#btn_submit_final_form').prop('disabled',true);
        }
    }
    var inicount=1;
    function addmoreattachemnts(){
        inicount++;
        var fnshow='validateAttachment(this.value,"file'+inicount+'","file_added'+inicount+'")';
        $('#fileadd').append('<div class="form-group row" id="addedfile'+inicount+'"><div class="col-sm-6"><input type="file" class="alert badge-danger" onchange=\''+fnshow+'\' name="files" id="file'+inicount+'"><i id="file_added'+inicount+'" class="fa fa-times"></i></div><div class="col-sm-6"><button class="btn btn-danger fa fa-pull-right mt-4" type="button" onclick="deleteate('+inicount+')"><i class="fa fa-times pr-4"></i>Delete this</button></div></div>');
    }
    function deleteate(id){
        $('#addedfile'+id).remove();
    }

    function submit_final_form(){
        var form = $('#personalForm')[0];
        var data = new FormData(form);

        var url='${pageContext.request.contextPath}/Issuance/saveFinalApplciationDetails?type=update_final_data';
        var options = {target:'#loadMainPage',url:url,type:'POST',enctype: 'multipart/form-data',processData: false,contentType: false, data: data};
        $("#personalForm").ajaxSubmit(options);
        /*$.ajax({
            url: '${pageContext.request.contextPath}/Issuance/saveFinalApplciationDetails?type=update_final_data',
            type: 'POST',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data: data,//$('#personalForm').serializeArray(),
            success: function (res){
                if(res.includes("Draft")){
                    $('#draftNo').val(res);
                    showLocationDtls();
                    $('#draftInfoWrapper').show();
                    $('#draftInfo').html('Your Information is save in Draft with Draft No.<b>'+res+'</b>' );
                }
                else{
                    $('#draftInfo').html('' );
                    alert("Not able to save your details. please refresh and try again");
                }
            }
        });*/
        $('#btn_submit_final_form').prop('disabled',true);
    }

</script>
</body>
