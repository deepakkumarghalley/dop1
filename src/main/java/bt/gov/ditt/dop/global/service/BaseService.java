package bt.gov.ditt.dop.global.service;

import com.sun.org.apache.xml.internal.security.utils.Base64;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;

/**
 * Created by Deepak on 8/14/2019.
 */
public class BaseService {

//    protected ResponseMessage responseMessage;
//    protected BeanValidator beanValidator;

//    public void setResponseMessage(ResponseMessage responseMessage) {
//        this.responseMessage = responseMessage;
//    }
//
//    public void setBeanValidator(BeanValidator beanValidator) {
//        this.beanValidator = beanValidator;
//    }

    public Boolean isValidImageFileType(String fileExtension) {
        Boolean isValidImageType = false;

        if (fileExtension.equals("JPEG") || fileExtension.equals("JPG") ||
                fileExtension.equals("JPE") || fileExtension.equals("PNG")) {
            isValidImageType = true;
        }
        return isValidImageType;
    }

    public Boolean isFileSizeWithinRequiredSize(MultipartFile file) {
        Long size = file.getSize();
        return size > 1048576 ? Boolean.FALSE : Boolean.TRUE;
    }

    public void saveToFolder(MultipartFile attachedFile, String fileName) throws IOException {
        String uploadDirectory = System.getProperty("catalina.home").concat("/portal/images/");
        File newFile = new File(uploadDirectory.concat(fileName));
        if (!newFile.exists()) {
            newFile.createNewFile();
        }
        FileOutputStream fos = new FileOutputStream(newFile);
        fos.write(attachedFile.getBytes());
        fos.close();
    }

    public String convertImageToByte(String imageName) throws Exception {
        String filePath = System.getProperty("catalina.home").concat("/portal/images/").concat(imageName);
        File imageFile = new File(filePath);
        FileInputStream fileInputStream = new FileInputStream(imageFile);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bytes = new byte[1024];
        for (int index; (index = fileInputStream.read(bytes)) != -1; ) {
            byteArrayOutputStream.write(bytes, 0, index);
        }
        byte[] bytes1 = byteArrayOutputStream.toByteArray();
        return Base64.encode(bytes1);
    }
}
