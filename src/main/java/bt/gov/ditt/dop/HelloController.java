package bt.gov.ditt.dop;

import bt.gov.ditt.dop.core.service.ICommonService;
import bt.gov.ditt.dop.global.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping({"/", "/DOP"})
public class HelloController extends BaseController {

    private ICommonService commonService;

    public void setCommonService(ICommonService commonService) {
        this.commonService = commonService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {

        String name = commonService.getName();
        model.addAttribute("message", "Hello world!");
        return "hello";
    }
}