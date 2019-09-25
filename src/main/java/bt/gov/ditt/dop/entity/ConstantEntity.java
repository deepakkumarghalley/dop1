package bt.gov.ditt.dop.entity;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "constant_mst")
public class ConstantEntity implements Serializable {
    @Id
    @Column(name="constant_Id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer constant_Id;
    @Column(name="constant_Name")
    private String constant_Name;
    @Column(name="constant_Desc")
    private String constant_Desc;
    @Column(name="constant_Type_Id")
    private Integer constant_Type_Id;
    @Id
    @Column(name="constant_Val")
    private String constant_Val;
    @Column(name="constant_Year")
    private int constant_Year;
    @Column(name="constant_Status")
    private String constant_Status;

    public ConstantEntity() {

    }

    public ConstantEntity(Integer constant_Id, String constant_Name, String constant_Desc, Integer constant_Type_Id, String constant_Val, int constant_Year, String constant_Status) {
        this.constant_Id = constant_Id;
        this.constant_Name = constant_Name;
        this.constant_Desc = constant_Desc;
        this.constant_Type_Id = constant_Type_Id;
        this.constant_Val = constant_Val;
        this.constant_Year = constant_Year;
        this.constant_Status = constant_Status;
    }

    public int getConstant_Year() {
        return constant_Year;
    }

    public void setConstant_Year(int constant_Year) {
        this.constant_Year = constant_Year;
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

    public String getConstant_Val() {
        return constant_Val;
    }

    public void setConstant_Val(String constant_Val) {
        this.constant_Val = constant_Val;
    }

    public String getConstant_Status() {
        return constant_Status;
    }

    public void setConstant_Status(String constant_Status) {
        this.constant_Status = constant_Status;
    }
}
