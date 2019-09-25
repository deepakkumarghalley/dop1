package bt.gov.ditt.dop.global.controller;

import com.sun.org.apache.xml.internal.security.utils.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Project Name: NHDCL.
 * Class Name: BaseController.java
 * Description:
 * Created By: Hidhen.
 * Creation Date: 28-Jul-19.
 */
public class BaseController {

    public Date systemOpenDate = new Date();
    //    protected CurrentUser currentUser;
//    protected ResponseMessage responseMessage;
    protected ApplicationContext applicationContext;

//    public void setResponseMessage(ResponseMessage responseMessage) {
//        this.responseMessage = responseMessage;
//    }

    @Autowired
    public void setApplicationContext(ApplicationContext applicationContext) {
        this.applicationContext = applicationContext;
    }

   /* protected CurrentUser getCurrentUser(HttpServletRequest request) {
        currentUser = new CurrentUser();
        //TODO:
//        currentUser = (CurrentUser) request.getSession().getAttribute("currentUser");

        currentUser.setUserID("CITIZEN");
        currentUser.setUserGroupID("Verifier");
        currentUser.setServiceType("HOUSING_ALLOTMENT");
        return currentUser;
    }*/

    protected String getReportSourcePath(HttpServletRequest request) {
        String path = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/jasperreport/");
        return path.replace("\\", "//");
    }

    protected String getFileUploadPath(HttpServletRequest request) {
        //String path = request.getSession().getServletContext().getRealPath("/WEB-INF/classes/jasperreport/");
        String path = System.getProperty("catalina.home").concat("/resources/images/portal/");
        return path.replace("\\", "//");
    }

    protected String getImageResourcePath() {
        // TODO for production environment
        //return "/dit/resources/images/portal/";
        return "/resources/images/portal/";
        /*return System.getProperty("catalina.base").concat("/upload/");*/
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
        return "data:image/jpg;base64," + Base64.encode(bytes1);
    }

    protected String getReportOutputPath(HttpServletRequest request) {
        return request.getSession().getServletContext().getRealPath("/resources/reports");
    }

    public String getDateFormat(Date date) {
        return new SimpleDateFormat("dd-MMM-yyyy").format(date);
    }

}

