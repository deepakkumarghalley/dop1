package bt.gov.ditt.dop.controller;

import bt.gov.ditt.dop.dto.CommonDTO;
import bt.gov.ditt.dop.dto.DropdownDTO;
import bt.gov.ditt.dop.service.CommonService;
import bt.gov.ditt.dop.service.PassportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/common")
public class CommonController {
    @Autowired
    private CommonService commonService;
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    @ResponseBody
    @RequestMapping(value = "/existingPassports", method = RequestMethod.GET)
    public List<CommonDTO>getExistingDetails(@RequestParam("cidNumber") String cidNumber,@RequestParam("applyFor") String applyFor)
    {
        List<CommonDTO> existingPassport= new ArrayList<CommonDTO>();
        try{
            existingPassport=commonService.getExistingDetails(cidNumber,applyFor);
            return existingPassport;
        }catch (Exception e){
            System.out.println("ec: "+e);
            e.printStackTrace();
            return null;
        }
    }

    @ResponseBody
    @RequestMapping(value = "/getDropdownDetails",method = RequestMethod.GET)
    public List<DropdownDTO> getDropdownDetails(@RequestParam("sl_no") String sl_no, @RequestParam("type") String type) {
        return commonService.getDropdownList(sl_no,type);
    }
}


