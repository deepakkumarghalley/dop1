package bt.gov.ditt.dop.dto;

import java.io.Serializable;

public class DocumentDTO implements Serializable {
    private Integer document_Id;
    private String application_Number;
    private String document_Name;
    private String document_Type;
    private String upload_URL;
    private String UUID;

    public DocumentDTO() {
    }

    public DocumentDTO(Integer document_Id, String application_Number, String document_Name, String document_Type, String upload_URL, String UUID) {
        this.document_Id = document_Id;
        this.application_Number = application_Number;
        this.document_Name = document_Name;
        this.document_Type = document_Type;
        this.upload_URL = upload_URL;
        this.UUID = UUID;
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

    public String getDocument_Type() {
        return document_Type;
    }

    public void setDocument_Type(String document_Type) {
        this.document_Type = document_Type;
    }

    public String getUpload_URL() {
        return upload_URL;
    }

    public void setUpload_URL(String upload_URL) {
        this.upload_URL = upload_URL;
    }

    public String getUuid() {
        return UUID;
    }

    public void setUuid(String UUID) {
        this.UUID = UUID;
    }
}
