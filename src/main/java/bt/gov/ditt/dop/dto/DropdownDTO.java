package bt.gov.ditt.dop.dto;

public class DropdownDTO {
    private int header_id;
    private String header_name;
    private String dzongkhag;
    private String country;

    public DropdownDTO() {

    }

    public DropdownDTO(int header_id, String header_name, String dzongkhag, String country) {
        this.header_id = header_id;
        this.header_name = header_name;
        this.dzongkhag = dzongkhag;
        this.country = country;
    }

    public int getHeader_id() {
        return header_id;
    }

    public void setHeader_id(int header_id) {
        this.header_id = header_id;
    }

    public String getHeader_name() {
        return header_name;
    }

    public void setHeader_name(String header_name) {
        this.header_name = header_name;
    }

    public String getDzongkhag() {
        return dzongkhag;
    }

    public void setDzongkhag(String dzongkhag) {
        this.dzongkhag = dzongkhag;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}


