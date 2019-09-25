package bt.gov.ditt.dop.dto;

public class ConstantDTO {

    private Integer constant_Id;
    private String constant_Name;
    private String constant_Desc;
    private Integer constant_Type_Id;
    private Integer constant_Val;
    private Integer constant_Year;
    private String constant_Status;

    public ConstantDTO() {

    }


    public Integer getConstant_Id() {
        return constant_Id;
    }

    public void setConstant_Id(Integer constant_Id) {
        this.constant_Id = constant_Id;
    }

    public String getConstant_Name() {
        return constant_Name;
    }

    public void setConstant_Name(String constant_Name) {
        this.constant_Name = constant_Name;
    }

    public String getConstant_Desc() {
        return constant_Desc;
    }

    public void setConstant_Desc(String constant_Desc) {
        this.constant_Desc = constant_Desc;
    }

    public Integer getConstant_Type_Id() {
        return constant_Type_Id;
    }

    public void setConstant_Type_Id(Integer constant_Type_Id) {
        this.constant_Type_Id = constant_Type_Id;
    }

    public Integer getConstant_Val() {
        return constant_Val;
    }

    public void setConstant_Val(Integer constant_Val) {
        this.constant_Val = constant_Val;
    }

    public Integer getConstant_Year() {
        return constant_Year;
    }

    public void setConstant_Year(Integer constant_Year) {
        this.constant_Year = constant_Year;
    }

    public String getConstant_Status() {
        return constant_Status;
    }

    public void setConstant_Status(String constant_Status) {
        this.constant_Status = constant_Status;
    }
}
