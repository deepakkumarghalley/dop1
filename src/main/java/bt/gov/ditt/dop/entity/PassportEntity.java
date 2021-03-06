package bt.gov.ditt.dop.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name ="t_pass_application")
public class PassportEntity implements Serializable {
    @Id
    @Column(name="application_Number", unique = true)
    private String application_Number;

    @Column(name = "cid_Number")
    private String cid_Number;
    @Column(name = "request_Service_Id")
    private Integer request_Service_Id;
    @Column(name = "title_Id")
    private Integer title_Id;
    @Column(name = "first_Name")
    private String first_Name;
    @Column(name = "middle_Name")
    private String middle_Name;
    @Column(name = "last_Name")
    private String last_Name;
    @Column(name = "application_Type")
    private Integer application_Type;
    @Column(name = "gender")
    private String gender;
    @Column(name = "date_Of_Birth")
    private Date date_Of_Birth;
    @Column(name = "place_Of_Birth")
    private String place_Of_Birth;
    @Column(name = "nationality_Id")
    private Integer nationality_Id;
    @Column(name = "mother_Name")
    private String mother_Name;
    @Column(name = "occupation_Id")
    private Integer occupation_Id;
    @Column(name = "father_CID_No")
    private String father_CID_No;
    @Column(name = "father_Name")
    private String father_Name;
    @Column(name = "app_Submission_Date")
    private Date app_Submission_Date;
    @Column(name = "mother_CID_No")
    private String mother_CID_No;
    @Column(name = "spouse_CID_No")
    private String spouse_CID_No;
    @Column(name = "spouse_Name")
    private String spouse_Name;
    @Column(name = "married_Status")
    private String married_Status;
    @Column(name = "app_Verification_Date")
    private Date app_Verification_Date;
    @Column(name = "retain_Passport")
    private String retain_Passport;
    @Column(name = "other_Travel_Doc")
    private String other_Travel_Doc;
    @Column(name = "priv_TrDoc_IssuedBy")
    private String priv_TrDoc_IssuedBy;
    @Column(name = "village_Serial_No")
    private Integer village_Serial_No;
    @Column(name = "app_Rejection_Date")
    private Date app_Rejection_Date;
    @Column(name = "cont_No_Mobile")
    private String cont_No_Mobile;
    @Column(name = "cont_No_Resi")
    private String cont_No_Resi;
    @Column(name = "cont_No_Office")
    private String cont_No_Office;
    @Column(name = "urgent")
    private String urgent;
    @Column(name = "spl_Reason")
    private String spl_Reason;
    @Column(name = "emr_Address")
    private String emr_Address;
    @Column(name = "emr_Phone_No")
    private String emr_Phone_No;
    @Column(name = "emr_Name")
    private String emr_Name;
    @Column(name = "scc_No")
    private String scc_No;
    @Column(name = "passport_Type")
    private Integer passport_Type;
    @Column(name = "passport_No")
    private String passport_No;
    @Column(name = "mobile_Number")
    private String mobile_Number;
    @Column(name = "service_Fee")
    private Integer service_Fee;
    @Column(name = "application_Fee")
    private Integer application_Fee;
    @Column(name = "payment_Mode")
    private String payment_Mode;
    @Column(name = "receipt_DD_No")
    private String receipt_DD_No;
    @Column(name = "receipt_DD_Date")
    private Date receipt_DD_Date;
    @Column(name = "cc_Id")
    private Integer cc_Id;
    @Column(name = "remarks")
    private String remarks;
    @Column(name = "created_By")
    private String created_By;
    @Column(name = "created_Date")
    private Date created_Date;
    @Column(name = "modified_By")
    private String modified_By;
    @Column(name = "modification_Date")
    private Date modification_Date;
    @Column(name = "ordinary_Pass_Reason")
    private String ordinary_Pass_Reason;
    @Column(name = "expected_Date_Recv")
    private Date expected_Date_Recv;
    @Column(name = "print_Tag")
    private String print_Tag;
    @Column(name = "validation_Period")
    private Integer validation_Period;
    @Column(name = "collector_Info")
    private String collector_Info;
    @Column(name = "files_Checked")
    private String files_Checked;
    @Column(name = "ppo_Change")
    private String ppo_Change;
    @Column(name = "payment_Recipt_No")
    private String payment_Recipt_No;
    @Column(name = "transaction_Type")
    private String transaction_Type;
    @Column(name = "processed_Passport_No")
    private String processed_Passport_No;

    public PassportEntity() {

    }

    public PassportEntity(String application_Number, String cid_Number, Integer request_Service_Id, Integer title_Id, String first_Name, String middle_Name, String last_Name, Integer application_Type, String gender, Date date_Of_Birth, String place_Of_Birth, Integer nationality_Id, String mother_Name, Integer occupation_Id, String father_CID_No, String father_Name, Date app_Submission_Date, String mother_CID_No, String spouse_CID_No, String spouse_Name, String married_Status, Date app_Verification_Date, String retain_Passport, String other_Travel_Doc, String priv_TrDoc_IssuedBy, Integer village_Serial_No, Date app_Rejection_Date, String cont_No_Mobile, String cont_No_Resi, String cont_No_Office, String urgent, String spl_Reason, String emr_Address, String emr_Phone_No, String emr_Name, String scc_No, Integer passport_Type, String passport_No, String mobile_Number, Integer service_Fee, Integer application_Fee, String payment_Mode, String receipt_DD_No, Date receipt_DD_Date, Integer cc_Id, String remarks, String created_By, Date created_Date, String modified_By, Date modification_Date, String ordinary_Pass_Reason, Date expected_Date_Recv, String print_Tag, Integer validation_Period, String collector_Info, String files_Checked, String ppo_Change, String payment_Recipt_No, String transaction_Type, String processed_Passport_No) {
        this.application_Number = application_Number;
        this.cid_Number = cid_Number;
        this.request_Service_Id = request_Service_Id;
        this.title_Id = title_Id;
        this.first_Name = first_Name;
        this.middle_Name = middle_Name;
        this.last_Name = last_Name;
        this.application_Type = application_Type;
        this.gender = gender;
        this.date_Of_Birth = date_Of_Birth;
        this.place_Of_Birth = place_Of_Birth;
        this.nationality_Id = nationality_Id;
        this.mother_Name = mother_Name;
        this.occupation_Id = occupation_Id;
        this.father_CID_No = father_CID_No;
        this.father_Name = father_Name;
        this.app_Submission_Date = app_Submission_Date;
        this.mother_CID_No = mother_CID_No;
        this.spouse_CID_No = spouse_CID_No;
        this.spouse_Name = spouse_Name;
        this.married_Status = married_Status;
        this.app_Verification_Date = app_Verification_Date;
        this.retain_Passport = retain_Passport;
        this.other_Travel_Doc = other_Travel_Doc;
        this.priv_TrDoc_IssuedBy = priv_TrDoc_IssuedBy;
        this.village_Serial_No = village_Serial_No;
        this.app_Rejection_Date = app_Rejection_Date;
        this.cont_No_Mobile = cont_No_Mobile;
        this.cont_No_Resi = cont_No_Resi;
        this.cont_No_Office = cont_No_Office;
        this.urgent = urgent;
        this.spl_Reason = spl_Reason;
        this.emr_Address = emr_Address;
        this.emr_Phone_No = emr_Phone_No;
        this.emr_Name = emr_Name;
        this.scc_No = scc_No;
        this.passport_Type = passport_Type;
        this.passport_No = passport_No;
        this.mobile_Number = mobile_Number;
        this.service_Fee = service_Fee;
        this.application_Fee = application_Fee;
        this.payment_Mode = payment_Mode;
        this.receipt_DD_No = receipt_DD_No;
        this.receipt_DD_Date = receipt_DD_Date;
        this.cc_Id = cc_Id;
        this.remarks = remarks;
        this.created_By = created_By;
        this.created_Date = created_Date;
        this.modified_By = modified_By;
        this.modification_Date = modification_Date;
        this.ordinary_Pass_Reason = ordinary_Pass_Reason;
        this.expected_Date_Recv = expected_Date_Recv;
        this.print_Tag = print_Tag;
        this.validation_Period = validation_Period;
        this.collector_Info = collector_Info;
        this.files_Checked = files_Checked;
        this.ppo_Change = ppo_Change;
        this.payment_Recipt_No = payment_Recipt_No;
        this.transaction_Type = transaction_Type;
        this.processed_Passport_No = processed_Passport_No;
    }

    public String getApplication_Number() {
        return application_Number;
    }

    public void setApplication_Number(String application_Number) {
        this.application_Number = application_Number;
    }

    public String getCid_Number() {
        return cid_Number;
    }

    public void setCid_Number(String cid_Number) {
        this.cid_Number = cid_Number;
    }

    public Integer getRequest_Service_Id() {
        return request_Service_Id;
    }

    public void setRequest_Service_Id(Integer request_Service_Id) {
        this.request_Service_Id = request_Service_Id;
    }

    public Integer getTitle_Id() {
        return title_Id;
    }

    public void setTitle_Id(Integer title_Id) {
        this.title_Id = title_Id;
    }

    public String getFirst_Name() {
        return first_Name;
    }

    public void setFirst_Name(String first_Name) {
        this.first_Name = first_Name;
    }

    public String getMiddle_Name() {
        return middle_Name;
    }

    public void setMiddle_Name(String middle_Name) {
        this.middle_Name = middle_Name;
    }

    public String getLast_Name() {
        return last_Name;
    }

    public void setLast_Name(String last_Name) {
        this.last_Name = last_Name;
    }

    public Integer getApplication_Type() {
        return application_Type;
    }

    public void setApplication_Type(Integer application_Type) {
        this.application_Type = application_Type;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDate_Of_Birth() {
        return date_Of_Birth;
    }

    public void setDate_Of_Birth(Date date_Of_Birth) {
        this.date_Of_Birth = date_Of_Birth;
    }

    public String getPlace_Of_Birth() {
        return place_Of_Birth;
    }

    public void setPlace_Of_Birth(String place_Of_Birth) {
        this.place_Of_Birth = place_Of_Birth;
    }

    public Integer getNationality_Id() {
        return nationality_Id;
    }

    public void setNationality_Id(Integer nationality_Id) {
        this.nationality_Id = nationality_Id;
    }

    public String getMother_Name() {
        return mother_Name;
    }

    public void setMother_Name(String mother_Name) {
        this.mother_Name = mother_Name;
    }

    public Integer getOccupation_Id() {
        return occupation_Id;
    }

    public void setOccupation_Id(Integer occupation_Id) {
        this.occupation_Id = occupation_Id;
    }

    public String getFather_CID_No() {
        return father_CID_No;
    }

    public void setFather_CID_No(String father_CID_No) {
        this.father_CID_No = father_CID_No;
    }

    public String getFather_Name() {
        return father_Name;
    }

    public void setFather_Name(String father_Name) {
        this.father_Name = father_Name;
    }

    public Date getApp_Submission_Date() {
        return app_Submission_Date;
    }

    public void setApp_Submission_Date(Date app_Submission_Date) {
        this.app_Submission_Date = app_Submission_Date;
    }

    public String getMother_CID_No() {
        return mother_CID_No;
    }

    public void setMother_CID_No(String mother_CID_No) {
        this.mother_CID_No = mother_CID_No;
    }

    public String getSpouse_CID_No() {
        return spouse_CID_No;
    }

    public void setSpouse_CID_No(String spouse_CID_No) {
        this.spouse_CID_No = spouse_CID_No;
    }

    public String getSpouse_Name() {
        return spouse_Name;
    }

    public void setSpouse_Name(String spouse_Name) {
        this.spouse_Name = spouse_Name;
    }

    public String getMarried_Status() {
        return married_Status;
    }

    public void setMarried_Status(String married_Status) {
        this.married_Status = married_Status;
    }

    public Date getApp_Verification_Date() {
        return app_Verification_Date;
    }

    public void setApp_Verification_Date(Date app_Verification_Date) {
        this.app_Verification_Date = app_Verification_Date;
    }

    public String getRetain_Passport() {
        return retain_Passport;
    }

    public void setRetain_Passport(String retain_Passport) {
        this.retain_Passport = retain_Passport;
    }

    public String getOther_Travel_Doc() {
        return other_Travel_Doc;
    }

    public void setOther_Travel_Doc(String other_Travel_Doc) {
        this.other_Travel_Doc = other_Travel_Doc;
    }

    public String getPriv_TrDoc_IssuedBy() {
        return priv_TrDoc_IssuedBy;
    }

    public void setPriv_TrDoc_IssuedBy(String priv_TrDoc_IssuedBy) {
        this.priv_TrDoc_IssuedBy = priv_TrDoc_IssuedBy;
    }

    public Integer getVillage_Serial_No() {
        return village_Serial_No;
    }

    public void setVillage_Serial_No(Integer village_Serial_No) {
        this.village_Serial_No = village_Serial_No;
    }

    public Date getApp_Rejection_Date() {
        return app_Rejection_Date;
    }

    public void setApp_Rejection_Date(Date app_Rejection_Date) {
        this.app_Rejection_Date = app_Rejection_Date;
    }

    public String getCont_No_Mobile() {
        return cont_No_Mobile;
    }

    public void setCont_No_Mobile(String cont_No_Mobile) {
        this.cont_No_Mobile = cont_No_Mobile;
    }

    public String getCont_No_Resi() {
        return cont_No_Resi;
    }

    public void setCont_No_Resi(String cont_No_Resi) {
        this.cont_No_Resi = cont_No_Resi;
    }

    public String getCont_No_Office() {
        return cont_No_Office;
    }

    public void setCont_No_Office(String cont_No_Office) {
        this.cont_No_Office = cont_No_Office;
    }

    public String getUrgent() {
        return urgent;
    }

    public void setUrgent(String urgent) {
        this.urgent = urgent;
    }

    public String getSpl_Reason() {
        return spl_Reason;
    }

    public void setSpl_Reason(String spl_Reason) {
        this.spl_Reason = spl_Reason;
    }

    public String getEmr_Address() {
        return emr_Address;
    }

    public void setEmr_Address(String emr_Address) {
        this.emr_Address = emr_Address;
    }

    public String getEmr_Phone_No() {
        return emr_Phone_No;
    }

    public void setEmr_Phone_No(String emr_Phone_No) {
        this.emr_Phone_No = emr_Phone_No;
    }

    public String getEmr_Name() {
        return emr_Name;
    }

    public void setEmr_Name(String emr_Name) {
        this.emr_Name = emr_Name;
    }

    public String getScc_No() {
        return scc_No;
    }

    public void setScc_No(String scc_No) {
        this.scc_No = scc_No;
    }

    public Integer getPassport_Type() {
        return passport_Type;
    }

    public void setPassport_Type(Integer passport_Type) {
        this.passport_Type = passport_Type;
    }

    public String getPassport_No() {
        return passport_No;
    }

    public void setPassport_No(String passport_No) {
        this.passport_No = passport_No;
    }

    public String getMobile_Number() {
        return mobile_Number;
    }

    public void setMobile_Number(String mobile_Number) {
        this.mobile_Number = mobile_Number;
    }

    public Integer getService_Fee() {
        return service_Fee;
    }

    public void setService_Fee(Integer service_Fee) {
        this.service_Fee = service_Fee;
    }

    public Integer getApplication_Fee() {
        return application_Fee;
    }

    public void setApplication_Fee(Integer application_Fee) {
        this.application_Fee = application_Fee;
    }

    public String getPayment_Mode() {
        return payment_Mode;
    }

    public void setPayment_Mode(String payment_Mode) {
        this.payment_Mode = payment_Mode;
    }

    public String getReceipt_DD_No() {
        return receipt_DD_No;
    }

    public void setReceipt_DD_No(String receipt_DD_No) {
        this.receipt_DD_No = receipt_DD_No;
    }

    public Date getReceipt_DD_Date() {
        return receipt_DD_Date;
    }

    public void setReceipt_DD_Date(Date receipt_DD_Date) {
        this.receipt_DD_Date = receipt_DD_Date;
    }

    public Integer getCc_Id() {
        return cc_Id;
    }

    public void setCc_Id(Integer cc_Id) {
        this.cc_Id = cc_Id;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getCreated_By() {
        return created_By;
    }

    public void setCreated_By(String created_By) {
        this.created_By = created_By;
    }

    public Date getCreated_Date() {
        return created_Date;
    }

    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }

    public String getModified_By() {
        return modified_By;
    }

    public void setModified_By(String modified_By) {
        this.modified_By = modified_By;
    }

    public Date getModification_Date() {
        return modification_Date;
    }

    public void setModification_Date(Date modification_Date) {
        this.modification_Date = modification_Date;
    }

    public String getOrdinary_Pass_Reason() {
        return ordinary_Pass_Reason;
    }

    public void setOrdinary_Pass_Reason(String ordinary_Pass_Reason) {
        this.ordinary_Pass_Reason = ordinary_Pass_Reason;
    }

    public Date getExpected_Date_Recv() {
        return expected_Date_Recv;
    }

    public void setExpected_Date_Recv(Date expected_Date_Recv) {
        this.expected_Date_Recv = expected_Date_Recv;
    }

    public String getPrint_Tag() {
        return print_Tag;
    }

    public void setPrint_Tag(String print_Tag) {
        this.print_Tag = print_Tag;
    }

    public Integer getValidation_Period() {
        return validation_Period;
    }

    public void setValidation_Period(Integer validation_Period) {
        this.validation_Period = validation_Period;
    }

    public String getCollector_Info() {
        return collector_Info;
    }

    public void setCollector_Info(String collector_Info) {
        this.collector_Info = collector_Info;
    }

    public String getFiles_Checked() {
        return files_Checked;
    }

    public void setFiles_Checked(String files_Checked) {
        this.files_Checked = files_Checked;
    }

    public String getPpo_Change() {
        return ppo_Change;
    }

    public void setPpo_Change(String ppo_Change) {
        this.ppo_Change = ppo_Change;
    }

    public String getPayment_Recipt_No() {
        return payment_Recipt_No;
    }

    public void setPayment_Recipt_No(String payment_Recipt_No) {
        this.payment_Recipt_No = payment_Recipt_No;
    }

    public String getTransaction_Type() {
        return transaction_Type;
    }

    public void setTransaction_Type(String transaction_Type) {
        this.transaction_Type = transaction_Type;
    }

    public String getProcessed_Passport_No() {
        return processed_Passport_No;
    }

    public void setProcessed_Passport_No(String processed_Passport_No) {
        this.processed_Passport_No = processed_Passport_No;
    }
}
