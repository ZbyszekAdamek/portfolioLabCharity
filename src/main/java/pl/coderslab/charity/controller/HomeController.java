package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.service.JpaDonationService;
import pl.coderslab.charity.service.JpaInstitutionService;


@Controller
public class HomeController {

private final JpaInstitutionService jpaInstitutionService;
private final JpaDonationService jpaDonationService;

    public HomeController(JpaInstitutionService jpaInstitutionService, JpaDonationService jpaDonationService) {
        this.jpaInstitutionService = jpaInstitutionService;
        this.jpaDonationService = jpaDonationService;
    }

    @RequestMapping("/")
    public String homeAction(Model model){
        model.addAttribute("institutions", jpaInstitutionService.getAllInstitutions());
        model.addAttribute("donations", jpaDonationService.getAllDonations());
        return "index";
    }

    @RequestMapping("/contact")
    public String contactAction(){
        return "footer";
    }
}
