package bt.gov.ditt.dop.controller;

import bt.gov.ditt.dop.dto.DocumentDTO;
import bt.gov.ditt.dop.dto.PassportDTO;
import bt.gov.ditt.dop.service.CommonService;
import bt.gov.ditt.dop.service.PassportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/")
public class PassportController {
	@Autowired
	PassportService passportService;

	@Autowired
	CommonService commonService;

	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "protocol/common/taskList";
	}

	@RequestMapping(value = "/createNewApplication", method = RequestMethod.GET)
	public String pass(ModelMap model) {
		model.addAttribute("Dzongkhag_List", commonService.getDzongkhagList());
		model.addAttribute("CountryList", commonService.getCountryList());
		model.addAttribute("OccupationList", commonService.getOccupationList());
		return "protocol/passport/passportNewApplication";
	}

	@ResponseBody
	@RequestMapping(value = "/saveApplication", method = RequestMethod.POST)
	public String save(PassportDTO passportDTO, ModelMap model) {
		try {
			passportDTO.setTransaction_Type("OFFLINE");
			PassportDTO insertApplication = passportService.save(passportDTO);
			model.addAttribute("acknowledgement_message","<span class='col-md-12 col-sm-12 col-lg-12 col-xs-12 alert-info' >Your Application for issuance of license is submitted with application number </span>");
			return "acknowledgement_message";
		    }catch (Exception e){
			  e.printStackTrace();
			return null;
		}
	}


	@RequestMapping(value = "/passportUploadApplication", method = RequestMethod.GET)
	  public String populateSubmittedForm(@RequestParam("application_Number") String applicationNo, ModelMap model) {

		try {
		    model.addAttribute("populateSubmitted", passportService.populateSubmittedForm(applicationNo));
            model.addAttribute("uploadedDocsList", commonService.getListOfUploadedDocuments(applicationNo));
           // model.addAttribute("existingPassport", passportService.getExistingPassport());


		} catch (Exception e){
			e.printStackTrace();
			//return null;
	     }

		return "protocol/passport/passportUploadApplication";
	}

	@ResponseBody
	@RequestMapping(value = "/uploadApplication", method = RequestMethod.POST)
	  public String uploadApplication(PassportDTO passportDTO, ModelMap model) {
		try {
			passportDTO.setTransaction_Type("OFFLINE");
			PassportDTO insertApplication = passportService.save(passportDTO);
			model.addAttribute("acknowledgement_message","<span class='col-md-12 col-sm-12 col-lg-12 col-xs-12 alert-info' >Your Application for issuance of license is submitted with application number </span>");
			return "acknowledgement_message";
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}


    @RequestMapping(value = { "/downloadDocument{uuid}" }, method = RequestMethod.GET)
    public void downloadDocument(@PathVariable String uuid, HttpServletResponse response) throws IOException {
          //DocumentDTO download =new DocumentDTO();
		  try{
			DocumentDTO  downloadList = passportService.getDownloadDocsList(uuid);

			byte[] fileContent = passportService.downloadFile(uuid);

			ServletOutputStream outputStream = response.getOutputStream();
			if(downloadList!=null && downloadList.getDocument_Name()!=null){
				String fileName = downloadList.getDocument_Name();
				String ext = fileName.substring(fileName.indexOf('.')+1);
				if(ext!=null){
					if(ext.equalsIgnoreCase("jpeg")||ext.equalsIgnoreCase("jpg")){
						response.setContentType("image/jpeg");
					}
					else if(ext.equalsIgnoreCase("pdf")){
						response.setContentType("application/pdf");
					}
					else{
						response.setContentType("application/octet-stream");
					}
				}
			}

			response.setHeader("Content-disposition", "attachment; filename="+downloadList.getDocument_Name());
			outputStream.write(fileContent);
			outputStream.flush();
			outputStream.close();

		}catch (Exception e){
			e.printStackTrace();

		}

       /* String inputString = null;
        byte[] fileContent = inputString.getBytes(download.getUuid());
        response.setContentType(download.getDocument_Type());
        response.setContentLength(download.getUuid().length());
        response.setHeader("Content-Disposition","attachment; filename=\"" + download.getDocument_Name() +"\"");
        FileCopyUtils.copy(fileContent, response.getOutputStream());*/

      //  return "protocol/passport/passportUploadApplication";
	}

}