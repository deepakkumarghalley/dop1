package bt.gov.ditt.dop.controller;

import bt.gov.ditt.dop.dto.PassportDTO;
import bt.gov.ditt.dop.entity.DocumentEntity;
import bt.gov.ditt.dop.service.CommonService;
import bt.gov.ditt.dop.service.PassportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/dopPublic")
public class OnlinePassportController {
   // private static String UPLOAD_LOCATION="/home/deepak/IdeaWorkspace/files/";
    @Autowired
     PassportService passportService;

    @Autowired
    CommonService commonService;


    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "Hello world!");
        return "protocol/online/onlineSubmitApplication";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @ResponseBody
    @RequestMapping(value = "/saveOnlineApplication", method = RequestMethod.POST)
    public String save(PassportDTO passportDTO,@RequestParam("name") String[] name, @RequestParam("files") MultipartFile[] files, ModelMap model) {
        //String applicationNo = null;
        try {
            passportDTO.setTransaction_Type("ONLINE");
            PassportDTO insertApplication = passportService.save(passportDTO);
            if (insertApplication.getApplication_Number() !=null) {

                DocumentEntity documentEntity = commonService.saveDoc(name,files,passportDTO);

               }
            model.addAttribute("acknowledgement_message","<span class='col-md-12 col-sm-12 col-lg-12 col-xs-12 alert-info' >Your Application for issuance of license is submitted with application number </span>");
            return "/citizen/issuance/";
        }catch (Exception e){
            e.printStackTrace();
           return null;

        }

    }
}

