package bt.gov.ditt.dop.entity;

import javax.persistence.*;

@Entity
@Table(name = "t_document")
public class DocumentEntity {
    @Id
    @Column(name="document_Id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer document_Id;
    @Column(name="application_Number")
    private String application_Number;
    @Column(name="document_Name")
    private String document_Name;
    @Column(name="document_Type")
    private String document_Type;
    @Column(name="upload_URL")
    private String upload_URL;
    @Column(name="uuid")
    private String uuid;

    public DocumentEntity() {

    }

    public DocumentEntity(String application_Number, String document_Name, String document_Type, String upload_URL, String uuid) {
        this.application_Number = application_Number;
        this.document_Name = document_Name;
        this.document_Type = document_Type;
        this.upload_URL = upload_URL;
        this.uuid = uuid;
    }

    public String getDocument_Type() {
        return document_Type;
    }

    public void setDocument_Type(String document_Type) {
        this.document_Type = document_Type;
    }

    public Integer getDocument_Id() {
        return document_Id;
    }

    public void setDocument_Id(Integer document_Id) {
        this.document_Id = document_Id;
    }

    public String getApplication_Number() {
        return application_Number;
    }

    public void setApplication_Number(String application_Number) {
        this.application_Number = application_Number;
    }

    public String getDocument_Name() {
        return document_Name;
    }

    public void setDocument_Name(String document_Name) {
        this.document_Name = document_Name;
    }

    public String getUpload_URL() {
        return upload_URL;
    }

    public void setUpload_URL(String upload_URL) {
        this.upload_URL = upload_URL;
    }

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }
}
