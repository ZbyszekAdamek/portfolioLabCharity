package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.repository.InstitutionRepository;
import pl.coderslab.charity.service.JpaInstitutionService;


@Controller
public class HomeController {

private final JpaInstitutionService jpaInstitutionService;

    public HomeController(JpaInstitutionService jpaInstitutionService) {
        this.jpaInstitutionService = jpaInstitutionService;
    }

    @RequestMapping("/")
    public String homeAction(Model model){
        model.addAttribute("institutions", jpaInstitutionService.getAllInstitutions());
        return "index";
    }

    @RequestMapping("/contact")
    public String contactAction(){
        return "footer";
    }
}
