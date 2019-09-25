package bt.gov.ditt.dop.service;

import bt.gov.ditt.dop.dao.CommonDAO;
import bt.gov.ditt.dop.dto.CommonDTO;
import bt.gov.ditt.dop.dto.DocumentDTO;
import bt.gov.ditt.dop.dto.DropdownDTO;
import bt.gov.ditt.dop.dto.PassportDTO;
import bt.gov.ditt.dop.entity.DocumentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.ResourceBundle;
import java.util.UUID;

@Service
public class CommonService {
    @Autowired
    CommonDAO commonDAO;

    @Transactional
    public List<CommonDTO> getExistingDetails(String cidNumber, String applyFor) {
        return commonDAO.getExistingDetails(cidNumber, applyFor);

    }

    @Transactional
    public DocumentEntity saveDoc(String[] names, MultipartFile[] files, PassportDTO passportDTO) {
        String uuid = null, filePath = null, status = "";
        DocumentEntity doc = new DocumentEntity();
        try {
            for (int i = 0; i < files.length; i++) {

                    String name = names[i];
                    MultipartFile file = files[i];
                    String filename = files[i].getOriginalFilename();
                    String randomUUID = UUID.randomUUID().toString();
                    uuid = randomUUID.replaceAll("-", "");
                    ResourceBundle resourceBundle = ResourceBundle.getBundle("documentUploads");
                    String filePathPrefix = resourceBundle.getString("fileStore");
                    Calendar calendar = Calendar.getInstance();
                    SimpleDateFormat dateFormat = new SimpleDateFormat("MMMM");
                    String urlAppender = "/" + calendar.get(Calendar.YEAR) + "/" + dateFormat.format(calendar.getTime()) + "/" + calendar.get(Calendar.DATE) + "/";
                    filePath = filePathPrefix + urlAppender + uuid + "_" + filename;
                    File fileloc = new File(urlAppender);
                    if (!fileloc.exists()) {
                        new File(filePathPrefix + urlAppender).mkdirs();
                    }
                    if(!filename.isEmpty()) {
                        FileCopyUtils.copy(file.getBytes(), new File(filePath));
                        DocumentEntity docEntity = new DocumentEntity();
                        docEntity.setDocument_Name(filename);
                        docEntity.setDocument_Type(name);
                        docEntity.setUpload_URL(filePath);
                        docEntity.setUuid(randomUUID);
                        docEntity.setApplication_Number(passportDTO.getApplication_Number());
                        status = commonDAO.saveDocuments(docEntity);
                    }
                    if (!status.equalsIgnoreCase("Success")) {
                        doc.setApplication_Number(null);
                    } else {
                        doc.setApplication_Number(passportDTO.getApplication_Number());
                    }
                }


        } catch (Exception e) {
            e.printStackTrace();
            System.out.print(e);

        }
        return doc;
    }

    @Transactional
    public List<DropdownDTO> getDzongkhagList() {
        return commonDAO.getDzongkhagList();
    }

    @Transactional
    public List<DropdownDTO> getDropdownList(String sl_no, String type) {
        return commonDAO.getDropdownList(sl_no,type);
    }

    @Transactional
    public List<DropdownDTO> getCountryList() {
        return commonDAO.getCountryList();
    }

    @Transactional
    public List<DropdownDTO>  getOccupationList() {
        return commonDAO.getOccupationList();
    }

    public List<DocumentDTO> getListOfUploadedDocuments(String applicationNo) {
        return commonDAO.getListOfUploadedDocuments(applicationNo);
    }



}
