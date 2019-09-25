package bt.gov.ditt.dop.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import java.util.Date;

public class CommonDTO {
    private String full_Name;
    @JsonSerialize(as = Date.class)
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="dd/MM/yyyy")
    private Date date_Of_Birth;
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="dd/MM/yyyy")
    private Date issue_Date;
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="dd/MM/yyyy")
    private Date passport_Expiry_Date;
    private String passport_No;
    private String blacklist_flag;
    private String place_Of_Birth;
    private String cid_Number;
    private String passport_Type;
    private String active_Flag;
     private String active_Flag1;
    public CommonDTO() {

    }

    public CommonDTO(String full_Name, Date date_Of_Birth, Date issue_Date, Date passport_Expiry_Date, String passport_No, String blacklist_flag, String place_Of_Birth, String cid_Number, String passport_Type, String active_Flag) {
        this.full_Name = full_Name;
        this.date_Of_Birth = date_Of_Birth;
        this.issue_Date = issue_Date;
        this.passport_Expiry_Date = passport_Expiry_Date;
        this.passport_No = passport_No;
        this.blacklist_flag = blacklist_flag;
        this.place_Of_Birth = place_Of_Birth;
        this.cid_Number = cid_Number;
        this.passport_Type = passport_Type;
        this.active_Flag = active_Flag;
    }

    public String getActive_Flag1() {
        return active_Flag1;
    }

    public void setActive_Flag1(String active_Flag1) {
        this.active_Flag1 = active_Flag1;
    }

    public String getFull_Name() {
        return full_Name;
    }

    public void setFull_Name(String full_Name) {
        this.full_Name = full_Name;
    }

    public Date getDate_Of_Birth() {
        return date_Of_Birth;
    }

    public void setDate_Of_Birth(Date date_Of_Birth) {
        this.date_Of_Birth = date_Of_Birth;
    }

    public Date getIssue_Date() {
        return issue_Date;
    }

    public void setIssue_Date(Date issue_Date) {
        this.issue_Date = issue_Date;
    }

    public Date getPassport_Expiry_Date() {
        return passport_Expiry_Date;
    }

    public void setPassport_Expiry_Date(Date passport_Expiry_Date) {
        this.passport_Expiry_Date = passport_Expiry_Date;
    }

    public String getPassport_No() {
        return passport_No;
    }

    public void setPassport_No(String passport_No) {
        this.passport_No = passport_No;
    }

    public String getBlacklist_flag() {
        return blacklist_flag;
    }

    public void setBlacklist_flag(String blacklist_flag) {
        this.blacklist_flag = blacklist_flag;
    }

    public String getPlace_Of_Birth() {
        return place_Of_Birth;
    }

    public void setPlace_Of_Birth(String place_Of_Birth) {
        this.place_Of_Birth = place_Of_Birth;
    }

    public String getCid_Number() {
        return cid_Number;
    }

    public void setCid_Number(String cid_Number) {
        this.cid_Number = cid_Number;
    }

    public String getPassport_Type() {
        return passport_Type;
    }

    public void setPassport_Type(String passport_Type) {
        this.passport_Type = passport_Type;
    }

    public String getActive_Flag() {
        return active_Flag;
    }

    public void setActive_Flag(String active_Flag) {
        this.active_Flag = active_Flag;
    }
}
